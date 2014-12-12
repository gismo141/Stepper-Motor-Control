-------------------------------------------------------------------------------
--! @file         register_interface.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v2.0.0
--! @date         05.12.2014
--!
--! @brief        Register component
--! @details      Provides the `ctrlReg`, `speedReg`, `stepsReg` registers.
--!               The `ctrlReg` can be set and cleared bitwise with the
--!               `ctrlSetReg` and `ctrlClrReg`.
--! @details      Addresses for register-access:
--!               | address | register   |
--!               |:-------:|:-----------|
--!               |  `000`  | `ctrlReg`  |
--!               |  `001`  |`ctrlSetReg`|
--!               |  `010`  |`ctrlClrReg`|
--!               |  `011`  |`speedReg`  |
--!               |  `100`  |`stepsReg`  |     
--! @par History:
--! @details      v0.1.0 06.11.2014 Kossmann
--!               - first draft
--! @details      v0.1.1 07.11.2014 Kossmann
--!               - finished reset_n task
--! @details      v0.1.2 17.11.2014 Riedel
--!               - corrected formatting
--!               - improved documentation
--! @details      v1.0.0 18.11.2014 Riedel & Kossmann
--!               - verified functionality -> release MS2
--! @details      v1.0.1 19.11.2014 Kossmann
--!               - changed register write implementation to more save version
--! @details      v1.0.2 21.11.2014 Riedel & Kossmann
--!               - removed ctrlSetReg and ctrlClrReg signals
--!               - added register access for mcu
--! @details      v1.0.3 01.12.2014 Kossmann
--!               - reacting to rising edge of ir signal
--! @details      v1.0.4 05.12.2014 Riedel
--!               - corrected formatting and indention
--! @details      v2.0.0 05.12.2014 Riedel & Kossmann
--!               - release milestone 3b
--! @details      v2.0.1 12.12.2014 Kossmann
--!               - changed ctrlReg and stepsReg priorization. mcu highest
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.STD_LOGIC_1164.all;
--! Use Conversion Functions
USE ieee.STD_LOGIC_signed.all;

--! @brief Register Interface-Component
ENTITY register_interface IS
  PORT
  (
    clock         : IN  STD_LOGIC;                      --! Avalon clock
    reset_n       : IN  STD_LOGIC;                      --! Avalon reset the component
    ce_n          : IN  STD_LOGIC;                      --! Avalon chip enable
    read_n        : IN  STD_LOGIC;                      --! Avalon set read-request
    write_n       : IN  STD_LOGIC;                      --! Avalon set write-request
    addr          : IN  STD_LOGIC_VECTOR (2 DOWNTO 0);  --! Avalon address bus (selects the register)
    write_data    : IN  STD_LOGIC_VECTOR (31 DOWNTO 0); --! Avalon write data to selected register
    read_data     : OUT STD_LOGIC_VECTOR (31 DOWNTO 0); --! Avalon read data from selected register       
    irq           : OUT STD_LOGIC;                      --! Avalon IRQ line
    greenleds     : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);  --! external: green leds
    redleds       : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);  --! external: red leds
    run           : OUT STD_LOGIC;                      --! enable signal for mcu
    direction     : OUT STD_LOGIC;                      --! direction signal for mcu
    mode          : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);   --! output of Mode bits for mcu
    speed         : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);   --! output of speedReg for mcu
    steps         : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  --! input for stepsReg for mcu
    ir            : IN  STD_LOGIC                       --! input request of mcu
  );
END register_interface;

--! @brief    Architecture of register_interface
--! @details  realized components:
--!           - all five registers
--!           - 3 green LEDs showing speedReg with 0 .. 2
--!           - 8 red LEDs showing ctrlReg
--!           - generating motor interrupt
ARCHITECTURE my_register_interface OF register_interface IS

  --! internal signal representing the registers  
  SIGNAL ctrlReg  : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL speedReg : STD_LOGIC_VECTOR(2 DOWNTO 0);
  SIGNAL stepsReg : STD_LOGIC_VECTOR(31 DOWNTO 0);

BEGIN
   --! @brief processing the tasks:
   --!        - interface to NIOS-processor
   --!        - writing registers
   --!        - reading registers
   --!        - implementing set and clear functionality
  processing : PROCESS(clock, reset_n, ce_n, read_n, write_n, addr, ctrlReg, ir, speedReg, stepsReg)
  BEGIN
    -- ctrlReg Register Write
    IF (reset_n = '0') THEN
      ctrlReg <= (others => '0');
    ELSIF (rising_edge(clock)) THEN
      ctrlReg <= ctrlReg;
      
      IF (addr = B"000" AND write_n = '0' AND ce_n = '0') THEN
        ctrlReg <= write_data(7 DOWNTO 0);             -- overwrite complete ctrlReg 
      ELSIF(addr = B"001" AND write_n = '0' AND ce_n = '0') THEN
        ctrlReg <= ctrlReg or write_data(7 DOWNTO 0);  -- set ctrlReg bitwise
      ELSIF(addr = B"010" AND write_n = '0' AND ce_n = '0') THEN
        ctrlReg <= ctrlReg and (not write_data(7 DOWNTO 0));  -- clr ctrlReg 
      END IF;
      IF(ir = '1') THEN -- set IR-bit in ctrlReg
        ctrlReg(7) <= '1';
        ctrlReg(0) <= '0';
      END IF;
    END IF; 
     
    -- speedReg Register Write
    IF (reset_n = '0') THEN
      speedReg <= (others => '0');
    ELSIF (rising_edge(clock)) THEN
      IF (addr = B"011" AND write_n = '0' AND ce_n = '0') THEN
        speedReg <= write_data(2 DOWNTO 0);
      else
        speedReg <= speedReg;
      END IF;
    END IF; 
    
    -- stepsReg Register Write
    IF (reset_n = '0') THEN
      stepsReg <= (others => '0');
    ELSIF (rising_edge(clock)) THEN
      stepsReg <= stepsReg;
      IF (addr = B"100" AND write_n = '0' AND ce_n = '0') THEN
        stepsReg <= write_data(31 DOWNTO 0);
      END IF;
      IF(CONV_INTEGER(steps) /= 0) THEN  -- write stepsReg from mcu when mcu input is not '0'
        stepsReg <= steps;
      END IF;
    END IF;
     
    -- Processor reads from Register
    read_data <= (others => '0'); -- unused bits to 0
    IF (read_n = '0' AND ce_n = '0') THEN
      CASE addr is
      WHEN B"000" =>
        read_data(7 DOWNTO 0)   <= ctrlReg;
      WHEN B"011" =>
        read_data(2 DOWNTO 0)   <= speedReg;
      WHEN B"100" =>
        read_data(31 DOWNTO 0)  <= stepsReg;
      WHEN others =>
        read_data(31 DOWNTO 0)  <= (others => '0');
      END CASE;
    END IF;

  END PROCESS;
  
  -- set interrupt
  irq       <= ctrlReg(6) and ctrlReg(7);

  -- clone ctrlReg to red leds
  redleds   <= ctrlReg;

  -- clone speedReg to green leds
  greenleds(2 DOWNTO 0) <= speedReg;
  greenleds(7 DOWNTO 3) <= (others => '0');

  -- extra mcu outputs
  run       <= ctrlReg(0);
  direction <= ctrlReg(1);
  mode      <= ctrlReg(5 DOWNTO 2);
  speed     <= speedReg;
    
END my_register_interface;