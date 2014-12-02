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
--! @details      v0.1.2 25.11.2014 Riedel & Kossmann
--!               - changed entitiy according to pin-assignments
--! @details      v0.1.3 28.11.2014 Kossmann
--!               - improved documemtation
--! @details      v0.1.4 02.12.2014 Riedel & Kossmann
--!               - fix wrong green leds output
--! @details      v0.1.5 02.12.2014 Kossmann
--!               - adjustments to work with new debug_key_detect design
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.STD_LOGIC_1164.all;

--! @brief Milestone 3
ENTITY milestone3 is  
  GENERIC
  (
    --! @brief		Prescaler for PWM-signal.
    --! @details	For this purpose 2,5 ms are used as minimal pulse-width.
    --!	@details	The prescaler is calculated with the given and desired frequency
    --!			via the following formula:
    --!			prescaler = f_clock [Hz] / f_prescaler [Hz]
    --!			e.g.:	f_prescaler = 1/5 ms = 400 Hz
    --!					prescaler = 50 Mhz / 400 Hz = 125000
    divider : integer := 125000
  );
  port(
    CLOCK_50_B5B      : IN  STD_LOGIC;                      --! component clock
    CPU_RESET_n       : IN  STD_LOGIC;                      --! resets the component
    SW                : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);   --! switch input  
    KEY               : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);   --! key input
    HSMC_RX_P         : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);  --! Motor_pwm1( bit 0 ) and Motor_pwm2( bit 1 )
    HSMC_RX_N         : OUT STD_LOGIC_VECTOR(16 DOWNTO 0); --! Motor_pwm3( bit 0 ) and Motor_pwm4( bit 1 )
    HSMC_TX_N         : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);  --! Motor_en_a( bit 2 )
    HSMC_TX_P         : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);  --! Motor_en_b( bit 3 )
    LEDG              : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); --! green leds
    LEDR              : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)  --! red leds
  );
END milestone3;

--! @brief    Architecture of milestone3
--! @details  used components:
--!           - debug_key_detect
--!           - count_5ms
--!           - register_interface
--!           - motor_control_unit
architecture my_milestone3 of milestone3 is

COMPONENT debug_key_detect is
  PORT(
    clock             : IN  STD_LOGIC;                      --! component clock
    reset_n           : IN  STD_LOGIC;                      --! reset of component
    switches          : IN  STD_LOGIC_VECTOR(9 DOWNTO 0);   --! Switches to set registers in register_interface
    key               : IN  STD_LOGIC;                      --! Run/Stop key0
	 read_data         : IN  STD_LOGIC_VECTOR(31 DOWNTO 0);  --! data of selected register
    ce_n              : OUT STD_LOGIC;                      --! chip enable 
    write_n           : OUT STD_LOGIC;                      --! write enable for register_interface
    read_n            : OUT STD_LOGIC;                      --! read enable for register_interface
    addr              : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);   --! selects the register to write
    write_data        : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)   --! data to write to selected register
  );
END COMPONENT;

COMPONENT register_interface is
  PORT
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
END COMPONENT;

COMPONENT motor_control_unit is
  GENERIC ( divider : integer );
  PORT(
    clock             : IN  STD_LOGIC;                      --! component clock
    reset_n           : IN  STD_LOGIC;                      --! resets the component
    run               : IN  STD_LOGIC;                      --! chip enable
    direction         : IN  STD_LOGIC;                      --! motor direction (`0` is left)
    mode              : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);   --! mode to run motor with
    speed             : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);   --! speed to run moter with                   
    motor_pwm         : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);	   --! pwm signalto control motor
    motor_en          : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);   --! enables motor driver
    steps             : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  --! number of steps motor did 
    ir                : OUT STD_LOGIC                       --! IR signal set when motor stopped
  );
END COMPONENT;

SIGNAL ce_n_wire      : STD_LOGIC;
SIGNAL write_n_wire   : STD_LOGIC;
SIGNAL addr_wire      : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL write_data_wire: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL run_wire       : STD_LOGIC;
SIGNAL direction_wire : STD_LOGIC;
SIGNAL mode_wire      : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL speed_wire     : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL steps_wire     : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL ir_wire        : STD_LOGIC;
SIGNAL read_n_wire    : STD_LOGIC;                 
SIGNAL read_data_wire : STD_LOGIC_VECTOR(31 DOWNTO 0); 

SIGNAL motor_pwm_wire : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL motor_en_wire  : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN
   debug_inst : COMPONENT debug_key_detect
    PORT MAP (
      clock           => CLOCK_50_B5B,
      reset_n         => CPU_RESET_n,
      switches        => SW,
      key             => KEY(0),
      ce_n            => ce_n_wire,
      write_n         => write_n_wire,
      read_n          => read_n_wire,
      addr            => addr_wire,
      write_data      => write_data_wire,
      read_data       => read_data_wire
    );

  register_interface_inst : COMPONENT register_interface
    PORT MAP (
      clock           => CLOCK_50_B5B,
      reset_n         => CPU_RESET_n,
      ce_n            => ce_n_wire,
      read_n          => read_n_wire,
      write_n         => write_n_wire,
      addr            => addr_wire,
      write_data      => write_data_wire,
      read_data       => read_data_wire,
--      irq             => irq_wire,
--      greenleds       => LEDG,
      redleds         => LEDR,
      run             => run_wire,
      direction       => direction_wire,
      mode            => mode_wire,
      speed           => speed_wire,
      steps           => steps_wire,
      ir              => ir_wire
    );

  motor_control_unit_inst : COMPONENT motor_control_unit
	 GENERIC MAP ( divider => divider )
    PORT MAP(
      clock           => CLOCK_50_B5B,
      reset_n         => CPU_RESET_n,
      run             => run_wire,
      direction       => direction_wire,
      mode            => mode_wire,
      speed           => speed_wire,                 
      motor_pwm       => motor_pwm_wire,
      motor_en        => motor_en_wire,
      steps           => steps_wire,
      ir              => ir_wire
    );
   
	LEDG(3) <= motor_pwm_wire(3);
	LEDG(2) <= motor_pwm_wire(1);
	LEDG(1) <= motor_pwm_wire(2);
	LEDG(0) <= motor_pwm_wire(0);

	LEDG(5 DOWNTO 4)	 <= motor_en_wire;
	
   HSMC_RX_P(0)       <= motor_pwm_wire(0);
   HSMC_RX_P(1)       <= motor_pwm_wire(1);
   HSMC_RX_N(0)       <= motor_pwm_wire(2);
   HSMC_RX_N(1)       <= motor_pwm_wire(3);
   HSMC_TX_N(2)       <= motor_en_wire(0);
   HSMC_TX_P(3)       <= motor_en_wire(1);
   
END my_milestone3;