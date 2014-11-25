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
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;

--! @brief Debug-Component
entity debug_key_detect is
  port(
    clock             : IN  STD_LOGIC;                      --! component clock
    reset_n           : IN  STD_LOGIC;                      --! reset of component
    switches          : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);   --! Switches to set registers in register_interface
    key               : IN  STD_LOGIC;                      --! Run/Stop key0
    ce_n              : OUT STD_LOGIC;                      --! chip enable 
    write_n           : OUT STD_LOGIC;                      --! write enable for register_interface
    addr              : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);   --! selects the register to write
    data              : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   --! data to write to selected register
  );
end debug_key_detect;

--! @brief    Architecture of debug_key_detect
--! @details  realized functionality:
--!           - evaluting switches
--!           - evaluting keys
--!           - sets registers
architecture my_debug_key_detect of debug_key_detect is
	--! @brief Tutorial-Component Key-Detector
	component key_detect_tut is
		port
		(
			clock	     : in  STD_LOGIC; --! Component Clock
			reset_n	  : in  STD_LOGIC; --! Component Reset
			key_input  : in  STD_LOGIC; --! Signal from key
			key_detect : out STD_LOGIC  --! Detect-Signal for key
		);
	end component;
	
	signal key0_detect_wire : std_logic;	--! Signal to detect key0 press
	signal key0_reg : std_logic; 				--! Signal to toggle run/stop in ctrlReg(0) via key0
	signal addr_counter	: integer range 0 to 4;
	
begin

	key0_inst : component key_detect_tut
	port map(
		clock => clock,
		reset_n => reset_n,
		key_input => key,
		key_detect => key0_detect_wire
	);
	
	input : process(reset_n, key0_detect_wire)
	begin
		if(reset_n = '0') then
			key0_reg <= '0';
		elsif(rising_edge(key0_detect_wire)) then
			key0_reg <= NOT(key0_reg);
		end if;
	end process;
	
	set_address : process(clock, reset_n, addr_counter) 
	begin
		if(reset_n = '0') then
			addr_counter <= 0;
		elsif(rising_edge(clock)) then
			case addr_counter is
			 when 0 =>
				addr <= "000";
				addr_counter <= 3;
			 when 3 =>
				addr <= "011";
				addr_counter <= 0;
			 when others =>
				addr_counter <= addr_counter;
			 end case;
		end if;
	end process;
	
	set_data : process(clock, key0_reg, switches, addr_counter) 
	begin
		if (rising_edge(clock)) then
			data <= (others => '0'); -- unused bits to 0
			case addr_counter is
			 when 0 =>					-- ctrlReg
				data(0) <= key0_reg;		   -- R/S
				data(1) <= switches(1);		-- L/R
				data(2) <= switches(2);		-- Mode1
				data(3) <= switches(3);		-- Mode2	
				data(4) <= switches(4);		-- Mode3
				data(5) <= switches(5);		-- Mode4
				data(6) <= switches(6);		-- IE
			 when 3 =>					-- speedReg
				data(2 downto 0) <= switches(9 downto 7);
			 when others =>
			 end case;
		end if;
	end process;
	
	write_n <= '0';
	ce_n <= '0';
	
end my_debug_key_detect;