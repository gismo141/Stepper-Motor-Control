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
		motor_pwm     	: out std_logic_vector(3 downto 0);
		motor_en       : out	std_logic_vector(1 downto 0);
		steps         	: out std_logic_vector (31 downto 0); --! number of steps motor did 
		ir            	: out std_logic                       --! IR signal set when motor stopped
	
end motor_control_unit;

--! @brief    Architecture of motor control unit
--! @details  used components:
--!           - count_5ms
--!           - signal_generator
architecture my_motor_control_unit of motor_control_unit is

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

component signal_generator is
   port
	(
		clock	:	in	std_logic;
		enable:	in std_logic;
		reset_n: in std_logic;
		mode	:	in std_logic_vector(3 downto 0);
		speed	:	in	std_logic_vector(2 downto 0);
		direction	:	in std_logic;
		ir	:	out	std_logic;
		steps	:	out	std_logic_vector(31 downto 0);
		motor_pwm	:	out	std_logic_vector(3 downto 0);
		motor_en	:	out	std_logic_vector(1 downto 0)
	);
begin
    
end my_motor_control_unit;