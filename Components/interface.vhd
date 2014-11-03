-------------------------------------------------------------------------------
--! @file interface.vhd
--! @author  Michael Riedel
--! @author  Marc Kossmann
--! @version v0.1
--! @date    21.10.2014
--!
--! @brief Interface file
--! @details Implementation of a NIOS-processor slave-interface
--! @details definition of interface
--!   | ADDR | width  | access | structure                             | function     |
--!   |:----:|:-------|:------:|:--------------------------------------|:-------------|
--!   | 0    | 8_Bit  | RW     | IR IE MODE3 MODE2 MODE1 MODE0 L/R R/S | ctrlReg      |
--!   | 1    | 8_Bit  | RW     | IR IE MODE3 MODE2 MODE1 MODE0 L/R R/S | ctrlSetReg   |
--!   | 2    | 8_Bit  | RW     | IR IE MODE3 MODE2 MODE1 MODE0 L/R R/S | ctrlClearReg |
--!   | 3    | 3_Bit  | RW     | SPEED2 SPEED1 SPEED0                  | speedReg     |
--!   | 4    | 32_Bit | RW     | step                                  | stepReg      |
--!   | 5    | 10_Bit | RW     | red LEDs                              | red LEDs     | 
--!   | 6    | 8_Bit  | RW     | green LEDs                            | green LEDs   |
--!
--! @par History:
--! @details 21.10. Riedel & Kossmann
--!          - first draft for milestone 1b
--! @details 03.11. Riedel
--!          - corrected documentation 
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;
--! Use Conversion Functions
USE ieee.std_logic_arith.all;
--! Use Conversion Functions
USE ieee.std_logic_signed.all;

--! @brief Tutorial-SOPC-Component with Avalon Interface
ENTITY interface is
  GENERIC
  (
    MyParameter : INTEGER RANGE 0 TO 100  := 42       --! Dummyparameter (Demo)
  );

  PORT
  (
    --! @name AVALON ports
    clock       : IN  STD_LOGIC;                      --! AVALON clock
    reset_n     : IN  STD_LOGIC;                      --! AVALON reset
    ce_n        : IN  STD_LOGIC;                      --! Avalon chip Enable
    read_n      : IN  STD_LOGIC;                      --! Avalon read
    write_n     : IN  STD_LOGIC;                      --! Avalon write
    addr        : IN  STD_LOGIC_VECTOR (1 DOWNTO 0);  --! Avalon address bus
    write_data  : IN  STD_LOGIC_VECTOR (31 DOWNTO 0); --! Avalon write bus
    read_data   : out STD_LOGIC_VECTOR (31 DOWNTO 0); --! Avalon read bus       
    irq         : out STD_LOGIC;                      --! Avalon IRQ line
    --! @name externel ports
    mykey      : IN  STD_LOGIC_VECTOR (2 DOWNTO 0);   --! external: Buttons
    --! external: Slidiing switches
    mySwitch   : IN  STD_LOGIC_VECTOR (7 DOWNTO 0); 
    --! external: green leds
--    gruenleds  : out STD_LOGIC_VECTOR (7 DOWNTO 0); 
    redleds    : OUT STD_LOGIC_VECTOR (7 DOWNTO 0)    --! external: red leds
  );
END interface;

--! @brief Architecture of Tutorial Element
--! @details realized components:
--!          - debouncing for 3 keys
--!          - 8 sliding switches
--!          - 8 green LEDs (Example for STD_LOGIC_VECTOR)
--!          - 8 red LEDs (Example for Integer)
ARCHITECTURE myinterface of interface is
  --! @brief Component Declaration for key-Detector
  COMPONENT keyDetect is
  PORT
  (
    clock       : IN  STD_LOGIC; --! Component Clock
    reset_n     : IN  STD_LOGIC; --! Component Reset
    key_input   : IN  STD_LOGIC; --! Signal vom Taster
    key_detect  : OUT STD_LOGIC  --! Detect-Signal for key
  );
  END COMPONENT;

  SIGNAL keyreg           : STD_LOGIC_VECTOR (5 DOWNTO 0);
--  SIGNAL greenledsreg     : STD_LOGIC_VECTOR (7 DOWNTO 0);
  -- Definition as integter is only used for demonstration
  SIGNAL redledsreg       : INTEGER RANGE 0 TO 255; 
  SIGNAL IRQ0, IRQ1, IRQ2 : STD_LOGIC;
  
BEGIN
  --! @brief Process for the tasks
  --!        - interface to NIOS-processor
  --!        - output to green Leds
  --!        - output to red Leds
  --!        - Reading os sliding switches
  PROCESS (clock, reset_n, ce_n, read_n, write_n, addr, 
           write_data, greenledsreg, redledsreg, 
           mySwitch,keyreg,
           IRQ0, IRQ1, IRQ2)
  BEGIN
  --  -- Greenled Register  Write
  --  if (reset_n = '0') THEN
  --    greenledsreg <= X"00";
  --  elsif (clock'event and clock = '1' ) THEN
  --    if (addr = B"01" AND write_n = '0' AND ce_n = '0') THEN
  --      greenledsreg <= write_data(7 DOWNTO 0);
  --    else
  --      greenledsreg <= greenledsreg;
  --    end if;
  -- end if;
    
  --  -- Redled Register  (Integer) Write
  --  if (reset_n = '0') THEN
  --    redledsreg <= 0;
  --  elsif (rising_edge(clock)) THEN
  --    if (addr = B"10" AND write_n = '0'AND ce_n = '0') THEN
  --      redledsreg <= conv_integer(write_data(7 DOWNTO 0));
  --    else
  --      redledsreg <= redledsreg;
  --    end if;
  --  end if;
    
  --  -- Keyregister Write
  --  if (reset_n = '0') THEN
  --    keyreg    <= B"000000";
  --  elsif (rising_edge(clock)) THEN
  --    if (addr = B"00" AND write_n = '0' AND ce_n = '0') THEN
  --      keyreg <= write_data(5 DOWNTO 0);
  --    else
  --      keyreg <= keyreg;
  --    end if;
  --  -- Set, if IRQx = 1 
  --    if(IRQ0 = '1') THEN
  --      keyreg(0) <= '1';
  --    end if;
  --    if(IRQ1 = '1') THEN
  --      keyreg(1) <= '1';
  --    end if;
  --    if(IRQ2 = '1') THEN
  --      keyreg(2) <= '1';
  --    end if;
  --  end if;
    
  --  -- Processor reads from Register
  --  read_data <= (OTHERS => '0'); -- unused bits to 0
  --  if (read_n = '0'AND ce_n = '0')  THEN  
  --    case addr is
  --    when B"01" =>
  --      read_data(7 DOWNTO 0)  <= greenledsreg;           
  --    when B"10" =>
  --      read_data(7 DOWNTO 0)  <= conv_std_logic_vector(redledsreg, 8);
  --    when B"11" =>
  --      read_data(7 DOWNTO 0)  <= mySwitch;         
  --    when others =>
  --      read_data(5 DOWNTO 0)  <= keyreg;      
  --    end case;
  --  end if;
  --  -- IRQ-Signal
  --  irq <=  (keyreg(0) AND keyreg(3)) OR
  --          (keyreg(1) AND keyreg(4)) OR
  --          (keyreg(2) AND keyreg(5));         
  END PROCESS; 

--  -- interface to LEDS
--  gruenleds <= greenledsreg;
--  redleds   <= conv_std_logic_vector(redledsreg,8);
    
--  -- three instances to detect press of a key
--  key0_inst:key_detect_tut
--  PORT MAP(
--    clock     => clock,
--    reset_n  => reset_n,
--    key_input  => mykey(0),
--    key_detect => IRQ0
--  );

--  key1_inst:key_detect_tut
--  PORT MAP(
--    clock     => clock,
--    reset_n  => reset_n,
--    key_input  => mykey(1),
--    key_detect => IRQ1
--  );

--  key2_inst:key_detect_tut
--  PORT MAP(
--    clock     => clock,
--    reset_n  => reset_n,
--    key_input  => mykey(2),
--    key_detect => IRQ2
--  );
   
END myinterface;
