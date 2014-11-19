-------------------------------------------------------------------------------
--! @file         register_interface.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v1.0.0
--! @date         18.11.2014
--!
--! @brief        Register component
--! @details      Provides the `ctrlReg`, `speedReg`, `stepsReg` registers.
--!               The `ctrlReg` can be set and cleared bitwise with the
--!               `ctrlSetReg` and `ctrlClrReg`.
--! @details      Addesses for register-access:
--!               | address | register   |
--!               |:-------:|:-----------|
--!               |  `000`  | `ctrlReg`  |
--!               |  `001`  |`ctrlSetReg`|
--!               |  `010`  |`ctrlClrReg`|
--!               |  `011`  |`speedReg`  |
--!               |  `100`  |`stepsReg`  |     
--!
--! @par History:
--! @details      v0.1.0 06.11.2014 Kossmann
--!               - first draft
--! @details      v0.1.1 07.11.2014 Kossmann
--!               - finished reset_n task
--! @details      v0.1.2 17.11.2014 Riedel
--!               - corrected formatting
--!               - improved documentation
--! @details      v1.0.0 18.11.2014 Riedel & Kossmann
--!				  - verified functionality -> release MS2
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;
--! Use Conversion Functions
USE ieee.std_logic_signed.all;

--! @brief Register Interfact-Component
entity register_interface is
  port
  (
    clock       : in  std_logic;                      --! Avalon clock
    reset_n     : in  std_logic;                      --! Avalon reset the component
    ce_n        : in  std_logic;                      --! Avalon chip enable
    read_n      : in  std_logic;                      --! Avalon set read-request
    write_n     : in  std_logic;                      --! Avalon set write-request
    addr        : in  std_logic_vector (2 downto 0);  --! Avalon address bus (selects the register)
    write_data  : in  std_logic_vector (31 downto 0); --! Avalon write data to selected register
    read_data   : out std_logic_vector (31 downto 0); --! Avalon read data from selected register       
    irq         : out std_logic;                      --! Avalon IRQ line
    greenleds   : out std_logic_vector (7 downto 0);  --! external: green leds
    redleds     : out std_logic_vector (7 downto 0)   --! external: red leds
  );
end register_interface;

--! @brief    Architecture of register_interface
--! @details  realized components:
--!           - all five registers
--!           - 3 green LEDs showing speedReg with 0 .. 2
--!           - 8 red LEDs showing ctrlReg
--!           - generating motor interrupt
architecture my_register_interface of register_interface is

  --! internal signal representing the registers  
  signal ctrlReg      : std_logic_vector(7 downto 0);
  signal ctrlSetReg     : std_logic_vector(7 downto 0);
  signal ctrlClrReg     : std_logic_vector(7 downto 0);
  signal speedReg       : std_logic_vector(2 downto 0);
  signal stepsReg       : std_logic_vector(31 downto 0);
  

begin
   --! @brief processing the tasks:
   --!        - interface to NIOS-processor
   --!        - writing registers
   --!        - reading registers
   --!        - implementing set and clear functionality
  process(clock, reset_n, ce_n, read_n, write_n, addr, ctrlReg, ctrlSetReg, 
        ctrlClrReg, speedReg, stepsReg) 
  begin
  
  -- ctrlSetReg Register Write
  if (reset_n = '0') then
    ctrlSetReg <= (others => '0');
  elsif (rising_edge(clock)) then
	  if (addr = B"001" AND write_n = '0' AND ce_n = '0') then
      ctrlSetReg <= write_data(7 downto 0);
    else
      ctrlSetReg <= ctrlSetReg;
    end if;
  end if; 
  
  -- ctrlClrReg Register Write
  if (reset_n = '0') then
    ctrlClrReg <= (others => '0');
  elsif (rising_edge(clock)) then
	  if (addr = B"010" AND write_n = '0' AND ce_n = '0') then
      ctrlClrReg <= write_data(7 downto 0);
    else
      ctrlClrReg <= ctrlClrReg;
    end if;
  end if;
  
  -- ctrlReg Register Write
  if (reset_n = '0') then
    ctrlReg <= (others => '0');
  elsif (rising_edge(clock)) then
	  if (addr = B"000" AND write_n = '0' AND ce_n = '0') then
      ctrlReg <= write_data(7 downto 0);
    else
      ctrlReg <= ctrlReg;
    end if;
    -- set and clear functionality for ctrlReg
    if (CONV_INTEGER(ctrlSetReg) /= 0) then
      ctrlReg <= ctrlReg or ctrlSetReg;
      ctrlSetReg <= (others => '0');
    end if;
      
    if (CONV_INTEGER(ctrlClrReg) /= 0) then
      ctrlReg <= ctrlReg and (not ctrlClrReg);
      ctrlClrReg <= (others => '0');
    end if;
  end if; 
  
  -- speedReg Register Write
  if (reset_n = '0') then
    speedReg <= (others => '0');
  elsif (rising_edge(clock)) then
	  if (addr = B"011" AND write_n = '0' AND ce_n = '0') then
      speedReg <= write_data(2 downto 0);
    else
      speedReg <= speedReg;
    end if;
  end if; 
  
  -- stepsReg Register Write
  if (reset_n = '0') then
    stepsReg <= (others => '0');
  elsif (rising_edge(clock)) then
	  if (addr = B"100" AND write_n = '0' AND ce_n = '0') then
      stepsReg <= write_data(31 downto 0);
    else
      stepsReg <= stepsReg;
    end if;
  end if;
  
  if(reset_n = '0') then
    read_data <= (others => '0');
  end if;
  
  -- Processor reads from Register
  if (read_n = '0' AND ce_n = '0') then
    read_data <= (others => '0'); -- unused bits to 0
    case addr is
    when B"000" =>
      read_data(7 downto 0) <= ctrlReg;
    when B"001" =>
      read_data(7 downto 0) <= ctrlSetReg;
    when B"010" =>
      read_data(7 downto 0) <= ctrlClrReg;
    when B"011" =>
      read_data(2 downto 0) <= speedReg;
    when B"100" =>
      read_data(31 downto 0) <= stepsReg;
    when others =>
      read_data(31 downto 0) <= (others => '0');
    end case;
  end if;

  end process;
  
  -- set interrupt
  irq <= ctrlReg(6) and ctrlReg(7);
  -- clone ctrlReg to red leds
  redleds <= ctrlReg;
  -- clone speedReg to green leds
  greenleds(2 downto 0) <= speedReg;
  greenleds(7 downto 3) <= (others => '0');
    
end my_register_interface;
