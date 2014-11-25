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
--! @details      v0.1.1 24.11.2014 Riedel
--!               - corrected formatting
--!               - corrected directions for `debug_key_detect`-component
--!               - added signals and connected the three components
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.STD_LOGIC_1164.all;

--! @brief Milestone 3
entity milestone3 is
  port(
    clock             : IN  STD_LOGIC;                      --! component clock
    reset_n           : IN  STD_LOGIC;                      --! resets the component
    switches          : IN  STD_LOGIC_VECTOR(9 DOWNTO 0;          
    keys              : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);                   
    motor_pwm         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    motor_en          : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    greenleds         : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    redleds           : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)           
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
    clock             : IN  STD_LOGIC;                      --! component clock
    reset_n           : IN  STD_LOGIC;                      --! reset of component
    switches          : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);   --! Switches to set registers in register_interface
    key               : IN  STD_LOGIC;                      --! Run/Stop key0
    ce_n              : OUT STD_LOGIC;                      --! chip enable 
    write_n           : OUT STD_LOGIC;                      --! write enable for register_interface
    addr              : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);   --! selects the register to write
    data              : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   --! data to write to selected register
  );
end component;

component register_interface is
  port
  (
    clock             : IN  STD_LOGIC;                      --! Avalon clock
    reset_n           : IN  STD_LOGIC;                      --! Avalon reset the component
    ce_n              : IN  STD_LOGIC;                      --! Avalon chip enable
    read_n            : IN  STD_LOGIC;                      --! Avalon set read-request
    write_n           : IN  STD_LOGIC;                      --! Avalon set write-request
    addr              : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);   --! Avalon address bus (selects the register)
    write_data        : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  --! Avalon write data to selected register
    read_data         : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  --! Avalon read data from selected register       
    irq               : OUT STD_LOGIC;                      --! Avalon IRQ line
    greenleds         : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);   --! external: green leds
    redleds           : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);   --! external: red leds
    run               : OUT STD_LOGIC;                      --! enable signal for mcu
    direction         : OUT STD_LOGIC;                      --! direction signal for mcu
    mode              : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);   --! output of mode bits for mcu
    speed             : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);   --! output of `speedReg` for mcu
    steps             : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  --! input for `stepsReg` for mcu
    ir                : IN  STD_LOGIC                       --! input request of mcu
  );
end component;

component motor_control_unit is
  port(
    clock             : IN  STD_LOGIC;                      --! component clock
    reset_n           : IN  STD_LOGIC;                      --! resets the component
    run               : IN  STD_LOGIC;                      --! chip enable
    direction         : IN  STD_LOGIC;                      --! motor direction (`0` is left)
    mode              : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);   --! mode to run motor with
    speed             : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);   --! speed to run moter with                   
    motor_pwm         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    motor_en          : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    steps             : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  --! number of steps motor did 
    ir                : OUT STD_LOGIC                       --! IR signal set when motor stopped
  );
end component;

SIGNAL ce_n_wire      : STD_LOGIC;
SIGNAL write_n_wire   : STD_LOGIC;
SIGNAL addr_wire      : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL data_wire      : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL run_wire       : STD_LOGIC;
SIGNAL direction_wire : STD_LOGIC;
SIGNAL mode_wire      : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL speed_wire     : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL steps_wire     : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ir_wire        : STD_LOGIC;

begin
   debug_inst : component debug_key_detect
    port map (
      clock           => clock,
      reset_n         => reset_n,
      switches        => switches,
      key             => keys(0),
      ce_n            => ce_n_wire,
      write_n         => write_n_wire,
      addr            => addr_wire,
      data            => data_wire
    );

  register_interface_inst : component register_interface
    port map (
      clock           => clock,
      reset_n         => reset_n,
      ce_n            => ce_n_wire,
      read_n          => '0',                                 -- unconnected
      write_n         => write_n_wire,
      addr            => addr_wire,
      write_data      => data_wire,
      read_data       => "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ",  -- unconnected 
      irq             => '0',                                 -- unconnected
      greenleds       => greenleds,
      redleds         => redleds,
      run             => run_wire,
      direction       => direction_wire,
      mode            => mode_wire,
      speed           => speed_wire,
      steps           => steps_wire,
      ir              => ir_wire
    );

  motor_control_unit_inst : component motor_control_unit
    port(
      clock           => clock,
      reset_n         => reset_n,
      run             => run_wire,
      direction       => direction_wire,
      mode            => mode_wire,
      speed           => speed_wire,                 
      motor_pwm       => motor_pwm,
      motor_en        => motor_en,
      steps           => steps_wire,
      ir              => ir_wire
    );
end my_milestone3;