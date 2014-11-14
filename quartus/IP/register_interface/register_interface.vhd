-----------------------------------------------------------------------------
--! @file register_interface.vhd
--! @author  	Marc Kossmann
--! @author  	Michael Riedel
--! @version 	v0.1.0
--! @date    	06.11.2014
--!
--! @brief 		Register component
--! @details 	Provides the five registers CtrlReg, CtrlSetReg, 
--!				CtrlClrReg, speedReg, stepsReg
--! @par History:
--! @details 	v0.1.0 06.11.2014 Kossmann
--!          	- first draft
--! @details 	v0.1.1 07.11.2014 Kossmann
--!          	- finished reset_n task
-----------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;
--! Use Conversion Functions
USE ieee.std_logic_signed.all;

--! @brief Tutorial-SOPC-Component with Avalon Interface
entity register_interface is
	generic
	(
		MyParameter	: integer RANGE 0 TO 100  := 42 --! Dummyparameter (Demo)
	);

	port
	(
		clock	     : in  std_logic;  								--! AVALON clock
		reset_n	  : in  std_logic;  								--! AVALON reset
		ce_n       : in  std_logic;  								--! Avalon chip Enable
		read_n     : in  std_logic;  								--! Avalon read
		write_n    : in  std_logic;  								--! Avalon write
		addr       : in  std_logic_vector (2 downto 0);  	--! Avalon address bus
		write_data : in  std_logic_vector (31 downto 0); 	--! Avalon write bus
		read_data  : out std_logic_vector (31 downto 0); 	--! Avalon read bus       
    irq        : out std_logic; 								--! Avalon IRQ line
    greenleds  : out std_logic_vector (7 downto 0); 	--! external: red leds
    redleds    : out std_logic_vector (7 downto 0)  	--! external: red leds
	);
end register_interface;

--! @brief Architecture of register_interface
--! @details realized components:
--!			      - all five registers
--!         - 3 green LEDs showing speedReg with 0 .. 2
--!         - 8 red LEDs showing ctrlReg
--!			      - generating motor interrupt
architecture my_register_interface of register_interface is

  --! internal signal representing the registers	
	signal ctrlReg 			: std_logic_vector(7 downto 0);
	signal ctrlSetReg 		: std_logic_vector(7 downto 0);
	signal ctrlClrReg 		: std_logic_vector(7 downto 0);
	signal speedReg 			: std_logic_vector(2 downto 0);
	signal stepsReg 			: std_logic_vector(31 downto 0);
	

begin
	 --! @brief processing the tasks:
	 --!        - interface to NIOS-processor
	 --!        - writing registers
	 --!			  - reading registers
	 --!        - implementing set and clear functionality
	process(clock, reset_n, ce_n, read_n, write_n, addr, ctrlReg, ctrlSetReg, 
				ctrlClrReg, speedReg, stepsReg) 
	begin
	if(reset_n = '0') then
		ctrlReg(7 downto 0)     <= (others => '0');
		ctrlSetReg(7 downto 0) 	<= (others => '0');
		ctrlClrReg(7 downto 0) 	<= (others => '0');
		speedReg(2 downto 0) 	  <= (others => '0');
		stepsReg(31 downto 0) 	<= (others => '0');
		read_data(31 downto 0) 	<= (others => '0');
	elsif(rising_edge(clock)) then
		-- Processor writes to Register
		if (write_n = '0' AND ce_n = '0') then
			case addr is
			when B"000" =>
				ctrlReg <= write_data(7 downto 0);
			when B"001" =>
				ctrlSetReg <= write_data(7 downto 0);
			when B"010" =>
				ctrlClrReg <= write_data(7 downto 0);
			when B"011" =>
				speedReg <= write_data(2 downto 0);
			when B"100" =>
				stepsReg <= write_data(31 downto 0);
			when others =>
			end case;
		end if;
		
		-- set and clear functionality for ctrlReg
		if(CONV_INTEGER(ctrlSetReg) /= 0) then
			ctrlReg <= ctrlReg or ctrlSetReg;
			ctrlSetReg <= (others => '0');
		end if;
		
		if(CONV_INTEGER(ctrlClrReg) /= 0) then
			ctrlReg <= ctrlReg and (not ctrlClrReg);
			ctrlClrReg <= (others => '0');
		end if;
		
	end if;
		-- Processor reads from Register
		read_data <= (others => '0'); -- unused bits to 0
		if (read_n = '0' AND ce_n = '0') then
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
