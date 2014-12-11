-------------------------------------------------------------------------------
--! @file         motor_control_unit.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v1.0.0
--! @date         05.12.2014
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
--! @details      v0.1.2 27.11.2014 Riedel
--!               - renamed the input `enable` to `prescaler` in
--!                 `signal_generator` and adapted the wires
--! @details      v0.1.2 27.11.2014 Riedel
--!               - added documentation for GENERIC divider
--! @details      v0.1.3 02.11.2014 Riedel & Kossmann
--!               - changed divider because pulse width was measure wrong
--! @details      v1.0.0 05.12.2014 Riedel & Kossmann
--!               - release milestone 3b
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;

--! @brief Motor Control Unit 
ENTITY motor_control_unit is
  GENERIC
  (
    --! @brief    Prescaler for PWM-signal.
    --! @details  For this purpose 2,5 ms are used as minimal pulse-width.
    --! @details  The prescaler is calculated with the given and desired frequency
    --!     via the following formula:
    --!     \f{equation*}{
    --!       \text{prescaler}         = \frac{f_{\text{clock}} \text{Hz}}{f_{\text{prescaler}} \text{Hz}}
    --!     \f}
    --!     e.g.:
    --!     \f{equation*}{
    --!       \left.\begin{aligned}
    --!         f_{\text{prescaler}}  &= \frac{5}{2}\,\text{ms} \newline
    --!                               &= 400\,\text{Hz} \newline\newline
    --!         \text{prescaler}      &= \frac{50\,\text{Mhz}}{400\,\text{Hz}} \newline
    --!                               &= 125000 \newline
    --!       \end{aligned}
    --!     \right\}
    --!     \qquad \text{pulse-width: 2.5 ms}
    --!     \f}
    --! @details For simulation-purpose the divider was set to 125 for faster wave generation.
    divider : integer := 125000
  );
  PORT(
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
  );
end motor_control_unit;

--! @brief    Architecture of motor control unit
--! @details  used components:
--!           - counter that counts 5 ms
--!           - signal_generator
architecture my_motor_control_unit of motor_control_unit is

COMPONENT counter is
  GENERIC ( divider : integer );
   PORT
   (
    clock     : IN  STD_LOGIC;
    reset_n   : IN  STD_LOGIC;
    enable    : IN  STD_LOGIC;
    clk_out   : OUT STD_LOGIC
  );
end COMPONENT;

COMPONENT signal_generator is
  PORT
  (
    clock     : IN  STD_LOGIC;
    run       : IN  STD_LOGIC;
    prescaler : IN  STD_LOGIC;
    reset_n   : IN  STD_LOGIC;
    mode      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
    speed     : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
    direction : IN  STD_LOGIC;
    ir        : OUT STD_LOGIC;
    steps     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    motor_pwm : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    motor_en  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
  );
end COMPONENT;

  SIGNAL prescaler_wire : std_logic;

BEGIN

  prescaler_inst : COMPONENT counter
  GENERIC MAP ( divider => divider )
   PORT MAP
   (
    clock     => clock,
    reset_n   => reset_n,
    enable    => run,
    clk_out   => prescaler_wire
  );
  
  signal_generator_inst : COMPONENT signal_generator
  PORT MAP
   (
    clock     => clock,
    run       => run,
    prescaler => prescaler_wire,
    reset_n   => reset_n,
    mode      => mode,
    speed     => speed,
    direction => direction,
    ir        => ir,
    steps     => steps,
    motor_pwm => motor_pwm,
    motor_en  => motor_en
   );
    
end my_motor_control_unit;