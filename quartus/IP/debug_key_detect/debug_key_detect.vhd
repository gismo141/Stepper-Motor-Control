-------------------------------------------------------------------------------
--! @file         debug_key_detect.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v1.0.0
--! @date         05.12.2014
--!
--! @brief        Debug component
--! @details      Evaluates switches and keys and sets registers accordingly.
--! @par History:
--! @details      v0.1.0 25.11.2014 Riedel & Kossmann
--!               - first draft
--! @details      v0.1.1 02.12.2014 Kossmann
--!               - complete redesign because registers in register_interface
--!					        should be written only when input changes
--! @details      v0.1.2 05.12.2014 Riedel
--!               - added few comments to code for better findability
--!               - corrected formatting and indention
--! @details      v1.0.0 05.12.2014 Riedel & Kossmann
--!               - release milestone 3b
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;

--! @brief Debug-Component
ENTITY debug_key_detect is
  PORT(
    clock                 : IN  STD_LOGIC;                      --! component clock
    reset_n               : IN  STD_LOGIC;                      --! reset of component
    switches              : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);   --! Switches to set registers in register_interface
    key                   : IN  STD_LOGIC;                      --! Run/Stop key0
    read_data             : IN STD_LOGIC_VECTOR(31 DOWNTO 0);   --! data of selected register
    ce_n                  : OUT STD_LOGIC;                      --! chip enable 
    write_n               : OUT STD_LOGIC;                      --! write enable for register_interface
    read_n                : OUT STD_LOGIC;                      --! read enable for register_interface
    addr                  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);   --! selects the register to write
    write_data            : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   --! data to write to selected register
  );
END debug_key_detect;

--! @brief    Architecture of debug_key_detect
--! @details  realized functionality:
--!           - evaluting switches
--!           - evaluting keys
--!           - sets registers
ARCHITECTURE my_debug_key_detect of debug_key_detect is
  --! @brief Tutorial-Component Key-Detector
  COMPONENT key_detect_tut is
    PORT
    (
      clock               : IN  STD_LOGIC; --! Component Clock
      reset_n             : IN  STD_LOGIC; --! Component Reset
      key_input           : IN  STD_LOGIC; --! Signal from key
      key_detect          : OUT STD_LOGIC  --! Detect-Signal for key
    );
  END COMPONENT;
  
  SIGNAL key0_detect_wire : STD_LOGIC;  --! Signal to detect key0 press
  SIGNAL key0_reg         : STD_LOGIC;        --! Signal to toggle run/stop in ctrlReg(0) via key0
  SIGNAL old_switches     : STD_LOGIC_VECTOR(9 DOWNTO 0);
  SIGNAL reg_write_stage  : INTEGER;
  SIGNAL run_bit          : STD_LOGIC;
  
BEGIN

  key0_inst : COMPONENT key_detect_tut
  PORT MAP(
    clock                 => clock,
    reset_n               => reset_n,
    key_input             => key,
    key_detect            => key0_detect_wire
  );
    
  write_registers : PROCESS(reset_n, clock, key0_detect_wire, switches, old_switches) 
  BEGIN
    IF(reset_n = '0') THEN
      write_n       <= '1';
      addr <= "000";
    	run_bit <= read_data(0);
		  old_switches <= switches;
		  reg_write_stage <= 0;
		  write_data <= (others => '0');  -- unused bits to 0

    ELSIF(rising_edge(clock)) then
    	run_bit <= read_data(0);
  		IF(key0_detect_wire = '1') then
      -- user toggled run/stop key
  		  run_bit <= not run_bit;
  			old_switches <= switches;
  			reg_write_stage <= 0;
  			write_data <= (others => '0');  -- unused bits to 0
  		ELSIF(old_switches /= switches) THEN
      -- user changed the speed via switches
  			old_switches <= switches;
  			reg_write_stage <= 0;
  			write_data <= (others => '0');  -- unused bits to 0
  		ELSIF(reg_write_stage = 0) then
      -- read the switches-positions ...
  		  addr <= "000";
  		  write_data(0) <= run_bit;   -- toogle R/S
  		  write_data(1) <= switches(1);   -- L/R
  		  write_data(2) <= switches(2);   -- Mode1
  		  write_data(3) <= switches(3);   -- Mode2  
  		  write_data(4) <= switches(4);   -- Mode3
  		  write_data(5) <= switches(5);   -- Mode4
  		  write_data(6) <= switches(6);   -- IE
  		  reg_write_stage <= 1;
  		  write_n       <= '0';
  		ELSIF(reg_write_stage = 1) then
      -- ... write them to the register ...
  		  addr <= "011";
  		  write_data(2 downto 0) <= switches(9 downto 7);
  		  reg_write_stage <= 2;
  		ELSIF(reg_write_stage = 2) then
      -- ... reset the addr and disable the write-signal
  		  addr <= "000";
  		  write_n <= '1';
  		END IF;
    END IF;
  END PROCESS;
  
  read_n 		 <= '0';
  ce_n          <= '0';
  
END my_debug_key_detect;