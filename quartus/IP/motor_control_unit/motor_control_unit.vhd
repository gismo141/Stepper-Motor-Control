-------------------------------------------------------------------------------
--! @file         motor_control_unit.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v0.1.0
--! @date         23.11.2014
--!
--! @brief        Motor Control Unit
--! @details      Controls the stepper motor. Communication with NIOS-Processor
--!					is done via register_interface component.
--! @details     	Following signals are provided by register_interface:
--!					|name	    |width|access|      description         |
--!					|---------|-----|------|--------------------------|  
--!					|run		 |  1  | read | enables mcu              |
--!					|direction|  1  | read | motor dir ('0' is left)  |
--!					|IR       |  1  | write| set when motor stopped   |
--!					|mode     |  4  | read | use case                 |
--!					|speed    |  3  | read | speed of motor           |
--!					|steps    | 32  | write| number of steps motor did|
--!					|---------|-----|------|--------------------------|
--! @par History:
--! @par History:
--! @details      v0.1.0 23.11.2014 Kossmann
--!               - first draft
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;

--! @brief Motor Control Unit 
entity motor_control_unit is
	port(
		clock   			: in  std_logic;                      --! component clock
		reset_n       	: in  std_logic;                      --! resets the component
		run           	: in  std_logic;                      --! chip enable
		direction     	: in  std_logic;                      --! motor direction ('0' is left)
		mode         	: in  std_logic_vector (3 downto 0);  --! mode to run motor with
		speed         	: in  std_logic_vector (2 downto 0);  --! speed to run moter with
		steps         	: out std_logic_vector (31 downto 0); --! number of steps motor did 
		ir            	: out std_logic                       --! IR signal set when motor stopped
	);
end motor_control_unit;

--! @brief    Architecture of motor control unit
--! @details  used components:
--!           - debug_key_detect
--!           - count_5ms
--!           - register_interface
--!           - signal_generator
architecture my_motor_control_unit of motor_control_unit is

component debug_key_detect is
	port(
		clock 			: in std_logic;								--! component clock
		reset_n			: in std_logic;								--! reset of component
		ce_n           : in std_logic;                      	--! chip enable	
		switches			: in std_logic_vector(9 downto 0);		--! Switches to set registers in register_interface
		key				: in std_logic;								--! Run/Stop key0
		write_n        : out	std_logic;                      	--! write enable for register_interface
		addr           : in  std_logic_vector (2 downto 0);  	--! selects the register to write
		data    			: in  std_logic_vector (31 downto 0) 	--! data to write to selected register
	);
end component;

component count_5ms is
	generic ( max : integer := 125000 );
   port
   (
      clock     : in  std_logic;
      reset_n   : in  std_logic;
      enable    : in  std_logic;
      clock5ms  : out std_logic
	);
end component;

component register_interface is
	port
	(
		 clock         : in  std_logic;                      	--! Avalon clock
		 reset_n       : in  std_logic;                      	--! Avalon reset the component
		 ce_n          : in  std_logic;                      	--! Avalon chip enable
		 read_n        : in  std_logic;                      	--! Avalon set read-request
		 write_n       : in  std_logic;                      	--! Avalon set write-request
		 addr          : in  std_logic_vector (2 downto 0);  	--! Avalon address bus (selects the register)
		 write_data    : in  std_logic_vector (31 downto 0); 	--! Avalon write data to selected register
		 read_data     : out std_logic_vector (31 downto 0); 	--! Avalon read data from selected register       
		 irq           : out std_logic;                      	--! Avalon IRQ line
		 greenleds     : out std_logic_vector (7 downto 0); 	--! external: green leds
		 redleds       : out std_logic_vector (7 downto 0);  	--! external: red leds
		 run		      : out std_logic;		 					  	--! enable signal for mcu
		 direction     : out std_logic;						     	--! direction signal for mcu
		 mode          : out std_logic_vector(3 downto 0);   	--! output of Mode bits for mcu
		 speed         : out std_logic_vector(2 downto 0);   	--! output of speedReg for mcu
		 steps         : in std_logic_vector(31 downto 0);   	--! input for stepsReg for mcu
		 ir            : in std_logic                        	--! input request of mcu
	);
end component;

begin
    
end my_motor_control_unit;