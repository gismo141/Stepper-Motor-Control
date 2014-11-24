-------------------------------------------------------------------------------
--! @file         milestone3.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v0.1.0
--! @date         23.11.2014
--!
--! @brief        Milestone3-Component
--! @details      Sets up all needed components for development-step milestone 3.
--! @par History:
--! @details      v0.1.0 23.11.2014 Kossmann
--!               - first draft
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;

--! @brief Milestone 3
entity milestone3 is
	port(
		clock   			: in  std_logic;                      --! component clock
		reset_n       	: in  std_logic;                      --! resets the component
		switches   		: in  std_logic_vector(9 downto 0;          
		keys          	: in  std_logic_vector(3 downto 0);                   
		motor_pwm     	: out std_logic_vector(3 downto 0);
		motor_en       : out	std_logic_vector(1 downto 0);
		greenleds      : out std_logic_vector(7 downto 0);
		redleds       	: out std_logic_vector(7 downto 0)           
	);
end milestone3;

--! @brief    Architecture of milestone3
--! @details  used components:
--!           - debug_key_detect
--!           - count_5ms
--!           - register_interface
--!           - motor_control_unit
architecture my_milestone3 of milestone3 is

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

component motor_control_unit is
	port(
		clock   			: in  std_logic;                      --! component clock
		reset_n       	: in  std_logic;                      --! resets the component
		run           	: in  std_logic;                      --! chip enable
		direction     	: in  std_logic;                      --! motor direction ('0' is left)
		mode         	: in  std_logic_vector (3 downto 0);  --! mode to run motor with
		speed         	: in  std_logic_vector (2 downto 0);  --! speed to run moter with                   
		motor_pwm     	: out std_logic_vector(3 downto 0);
		motor_en       : out	std_logic_vector(1 downto 0);
		steps         	: out std_logic_vector (31 downto 0); --! number of steps motor did 
		ir            	: out std_logic                       --! IR signal set when motor stopped
	
end component;

begin
   
end my_milestone3;