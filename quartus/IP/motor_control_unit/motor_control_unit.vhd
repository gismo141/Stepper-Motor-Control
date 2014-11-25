-------------------------------------------------------------------------------
--! @file         motor_control_unit.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v0.1.0
--! @date         23.11.2014
--!
--! @brief        Motor Control Unit
--! @details      Controls the stepper motor. Communication with NIOS-Processor
--!               is done via register_interface component.
--! @details      Following signals are provided by register_interface:
--!         |name     |width|access|      description         |
--!         |---------|-----|------|--------------------------|  
--!         |run      |  1  | read | enables mcu              |
--!         |direction|  1  | read | motor dir ('0' is left)  |
--!         |IR       |  1  | write| set when motor stopped   |
--!         |mode     |  4  | read | use case                 |
--!         |speed    |  3  | read | speed of motor           |
--!         |steps    | 32  | write| number of steps motor did|
--!         |---------|-----|------|--------------------------|
--! @par History:
--! @details      v0.1.0 23.11.2014 Kossmann
--!               - first draft
--! @details      v0.1.1 24.11.2014 Riedel
--!               - corrected formatting
--!               - renamed component count_5ms to counter
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;

--! @brief Motor Control Unit 
entity motor_control_unit is
  port(
    clock           : IN  STD_LOGIC;                      --! component clock
    reset_n         : IN  STD_LOGIC;                      --! resets the component
    run             : IN  STD_LOGIC;                      --! chip enable
    direction       : IN  STD_LOGIC;                      --! motor direction ('0' is left)
    mode            : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);  --! mode to run motor with
    speed           : IN  STD_LOGIC_VECTOR (2 DOWNTO 0);  --! speed to run moter with                   
    motor_pwm       : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);   --! signal-bus for the motor pulse-width-modulation
    motor_en        : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);   --! both enable signals for the motor
    steps           : OUT STD_LOGIC_VECTOR (31 DOWNTO 0); --! number of steps motor did 
    ir              : OUT STD_LOGIC                       --! IR signal set when motor stopped
  
end motor_control_unit;

--! @brief    Architecture of motor control unit
--! @details  used components:
--!           - counter that counts 5 ms
--!           - signal_generator
architecture my_motor_control_unit of motor_control_unit is

component counter is
  generic ( max : integer := 125000 );
   port
   (
    clock     : IN  STD_LOGIC;
    reset_n   : IN  STD_LOGIC;
    enable    : IN  STD_LOGIC;
    clk_out   : OUT STD_LOGIC
  );
end component;

component signal_generator is
  port
  (
    clock     : IN  STD_LOGIC;
    enable    : IN  STD_LOGIC;
    reset_n   : IN  STD_LOGIC;
    mode      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
    speed     : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
    direction : IN  STD_LOGIC;
    ir        : OUT STD_LOGIC;
    steps     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    motor_pwm : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    motor_en  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
begin
    
end my_motor_control_unit;