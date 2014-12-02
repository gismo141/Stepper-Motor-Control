-------------------------------------------------------------------------------
--! @file         debug_key_detect.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v0.1.0
--! @date         25.11.2014
--!
--! @brief        Debug component
--! @details      Evaluates switches and keys and sets registers accordingly.
--! @par History:
--! @details      v0.1.0 25.11.2014 Riedel & Kossmann
--!               - first draft
--! @details      v0.1.1 02.12.2014 Kossmann
--!               - complete redesign because registers in register_interface
--!					  should be written only when input changes
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
    ce_n                  : OUT STD_LOGIC;                      --! chip enable 
    write_n               : OUT STD_LOGIC;                      --! write enable for register_interface
    addr                  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);   --! selects the register to write
    data                  : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   --! data to write to selected register
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
      key_INput           : IN  STD_LOGIC; --! Signal from key
      key_detect          : OUT STD_LOGIC  --! Detect-Signal for key
    );
  END COMPONENT;
  
  SIGNAL key0_detect_wire : STD_LOGIC;  --! Signal to detect key0 press
  SIGNAL key0_reg         : STD_LOGIC;        --! Signal to toggle run/stop in ctrlReg(0) via key0
  SIGNAL addr_counter     : INTEGER RANGE 0 TO 4;
  SIGNAL old_switches     : STD_LOGIC_VECTOR(9 DOWNTO 0);
  SIGNAL reg_write_stage  : INTEGER;
  
BEGIN

  key0_inst : COMPONENT key_detect_tut
  PORT MAP(
    clock                 => clock,
    reset_n               => reset_n,
    key_input             => key,
    key_detect            => key0_detect_wire
  );
  
  key_input_tmp_register : PROCESS(reset_n, key0_detect_wire)
  BEGIN
    IF(reset_n = '0') THEN
      key0_reg <= '0';
    ELSIF(rising_edge(key0_detect_wire)) THEN
      key0_reg <= NOT(key0_reg);
    END IF;
  END PROCESS;
  
  
  write_registers : PROCESS(reset_n, clock, key0_detect_wire, switches, old_switches) 
  BEGIN
    IF(reset_n = '0') THEN
      write_n       <= '1';
		old_switches <= switches;
		reg_write_stage <= 0;
		data <= (others => '0');  -- unused bits to 0	 
    ELSIF(rising_edge(clock)) then
		IF(key0_detect_wire = '1') then
			old_switches <= switches;
			reg_write_stage <= 0;
			data <= (others => '0');  -- unused bits to 0
		ELSIF(old_switches /= switches) THEN
			old_switches <= switches;
			reg_write_stage <= 0;
			data <= (others => '0');  -- unused bits to 0
		END IF;
		IF(reg_write_stage = 0) then
		  addr <= "000";
		  data(0) <= key0_reg;      -- R/S
		  data(1) <= switches(1);   -- L/R
		  data(2) <= switches(2);   -- Mode1
		  data(3) <= switches(3);   -- Mode2  
		  data(4) <= switches(4);   -- Mode3
		  data(5) <= switches(5);   -- Mode4
		  data(6) <= switches(6);   -- IE
		  reg_write_stage <= 1;
		  write_n       <= '0';
		ELSIF(reg_write_stage = 1) then
		  addr <= "011";
		  data(2 downto 0) <= switches(9 downto 7);
		  reg_write_stage <= 2;
		ELSIF(reg_write_stage = 2) then
		  write_n <= '1';
		END IF;
	 END IF;
  END PROCESS;
  
  ce_n          <= '0';
  
END my_debug_key_detect;