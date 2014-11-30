-------------------------------------------------------------------------------
--! @file         signal_generator.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v0.1.0
--! @date         25.11.2014
--!
--! @brief        Signal Generator for Stepper-Motor-PWM
--! @details      Generates the pulse-width and enable signals accordingly.
--! @details      Motor State-Machine
--! @par History:
--! @details      v0.1.0 25.11.2014 Riedel & Kossmann
--!               - first draft
--! @details      v0.1.1 26.11.2014 Riedel
--!               - implemented signal-generator logic
--! @details      v0.1.2 27.11.2014 Riedel
--!               - added speed-statemachine to determine the correct
--!                 speed-integer when changes occur on the speed-bus
--!               - added new CONSTANT `UNLIMITED_STEPS` for CR and IDLE, now
--!                 the IR won't be triggered everytime
--!               - renamed the input `enable` to `prescaler`
--! @details      v0.1.3 28.11.2014 Riedel & Kossmann
--!               - fixed speed'Event, now the user can change the speed and
--!                 the signal_generator directly uses the new value
--!               - removed wrong synchronization statements
--! @details      v0.1.4 28.11.2014 Riedel
--!               - removed `prescaler`-dependency in `pwm_generation`-process
--! @details      v0.1.5 30.11.2014 Kossmann
--!               - changed speed to speed_wire transfering process to async
--!               - changed speed_wire /= old_speed_wire check to async
--!               - fixed bug of t_pulse (pwm width) being systematical to long 
--!               (have to set pwm_5ms_counter to (speed_wire - 1))
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;
--! Use Conversion Functions
USE ieee.std_logic_arith.all;
--! Use Conversion Functions
USE ieee.std_logic_signed.all;

--! @brief Signal Generator 
ENTITY signal_generator is
  PORT(
    clock     : IN  STD_LOGIC;                      --! component clock
    prescaler : IN  STD_LOGIC;                      --! input for minimum time-base
    reset_n   : IN  STD_LOGIC;                      --! resets the component
    mode      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);   --! mode to run motor with
    speed     : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);   --! speed to run moter with 
    direction : IN  STD_LOGIC;                      --! motor direction ('0' is LEFT)
    ir        : OUT STD_LOGIC;                      --! IR signal set when motor stopped
    steps     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  --! number of steps motor did
    motor_pwm : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);   --! signal-bus for the motor pulse-width-modulation
    motor_en  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)    --! both enable signals for the motor
  );
END signal_generator;

--! @brief    Architecture of signal generator
ARCHITECTURE my_signal_generator OF signal_generator IS

CONSTANT  UNLIMITED_STEPS : INTEGER   := -1;
CONSTANT  LEFT            : STD_LOGIC := '0';
CONSTANT  RIGHT           : STD_LOGIC := NOT LEFT;

TYPE      MODE_STATE_TYPE IS (IDLE, CR, COS_1_4, COS_1_2, COS_1, COS_2);
TYPE      PWM_STATE_TYPE  IS (ONE, TWO, THREE, FOUR);

SIGNAL    mode_state      : MODE_STATE_TYPE;
SIGNAL    pwm_state       : PWM_STATE_TYPE;
SIGNAL    speed_wire      : INTEGER RANGE 0 TO 400;
SIGNAL    old_speed_wire  : INTEGER RANGE 0 TO 400;
SIGNAL    pwm_5ms_counter : INTEGER RANGE 0 TO 400;
SIGNAL    steps_to_run    : INTEGER;
SIGNAL    steps_counter   : INTEGER;
SIGNAL    motor_en_wire   : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL    motor_pwm_wire  : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL    ir_wire         : STD_LOGIC;

BEGIN
  mode_state_machine : PROCESS (reset_n, clock, mode, ir_wire)
  BEGIN
    IF(reset_n = '0') THEN
      mode_state <= IDLE;
    ELSIF(rising_edge(clock)) THEN
      CASE mode_state IS
      WHEN IDLE =>
        IF mode(1 DOWNTO 0) = "01" THEN
          mode_state <= CR;
        ELSIF mode = "0010" THEN
          mode_state <= COS_1_4;
        ELSIF mode = "0110" THEN
          mode_state <= COS_1_2;
        ELSIF mode = "1010" THEN
          mode_state <= COS_1;
        ELSIF mode = "1110" THEN
          mode_state <= COS_2;
        ELSE
          mode_state <= IDLE;
        END IF;
      WHEN CR =>
        mode_state <= CR;
      WHEN OTHERS =>
        mode_state <= mode_state;
      END CASE;

      IF(mode(1 DOWNTO 0) = "00") THEN  -- user stopped the motor
        mode_state <= IDLE;
      ELSIF(ir_wire = '1') THEN         -- motor reached its final position
        mode_state <= IDLE;
      END IF;
    END IF; 
  END PROCESS;

  speed_state_machine : PROCESS (reset_n, clock, speed)
  BEGIN
--    IF(reset_n = '0') THEN
--        speed_wire <= 400;
    --ELSIF(rising_edge(clock)) THEN
    old_speed_wire <= speed_wire;
		CASE speed IS
      WHEN "000" =>
        speed_wire <= 400;
      WHEN "001" =>
        speed_wire <= 200;
      WHEN "010" =>
        speed_wire <= 100;
      WHEN "011" =>
        speed_wire <= 50;
      WHEN "100" =>
        speed_wire <= 20;
      WHEN "101" =>
        speed_wire <= 10;
      WHEN "110" =>
        speed_wire <= 5;
      WHEN "111" =>
        speed_wire <= 2;
      WHEN others =>
        speed_wire <= 400;
      END CASE;
 --   END IF;
  END PROCESS;

  pwm_state_machine : PROCESS (reset_n, prescaler, pwm_5ms_counter, direction, pwm_state)
  BEGIN
    IF(reset_n = '0') THEN
      steps_counter <= 0;
      pwm_state <= ONE;
    ELSIF(rising_edge(prescaler) AND pwm_5ms_counter = 0) THEN
      IF(direction = LEFT) THEN
        CASE pwm_state IS
        WHEN FOUR   =>
          pwm_state <= THREE;
        WHEN THREE  =>
          pwm_state <= TWO;
        WHEN TWO    =>
          pwm_state <= ONE;
        WHEN ONE    =>
          pwm_state <= FOUR;
        END CASE;
      ELSE
        CASE pwm_state IS
        WHEN ONE    =>
          pwm_state <= TWO;
        WHEN TWO    =>
          pwm_state <= THREE;
        WHEN THREE  =>
          pwm_state <= FOUR;
        WHEN FOUR   =>
          pwm_state <= ONE;
        END CASE;
      END IF;
      steps_counter <= steps_counter + 1;
    END IF;
  END PROCESS;
  
  mode_processing : PROCESS (mode_state)
  BEGIN
    CASE mode_state IS
    WHEN IDLE       =>
      steps_to_run  <= UNLIMITED_STEPS;
      motor_en_wire <= "00";
    WHEN CR         =>
      steps_to_run  <= UNLIMITED_STEPS;
      motor_en_wire <= "11";
    WHEN COS_1_4    =>
      steps_to_run  <= 100;
      motor_en_wire <= "11";
    WHEN COS_1_2    =>
      steps_to_run  <= 200;
      motor_en_wire <= "11";
    WHEN COS_1      =>
      steps_to_run  <= 400;
      motor_en_wire <= "11";
    WHEN COS_2      =>
      steps_to_run  <= 800;
      motor_en_wire <= "11";
    WHEN others     =>
      steps_to_run  <= 0;
      motor_en_wire <= "00";
    END CASE;
  END PROCESS;
  
  pulse_generation : PROCESS (reset_n, clock, prescaler, speed_wire)
  BEGIN
    IF(reset_n = '0') THEN
      pwm_5ms_counter <= (speed_wire - 1);
    ELSIF(speed_wire /= old_speed_wire) THEN
        pwm_5ms_counter <= (speed_wire - 1);
    ELSIF(rising_edge(clock) and prescaler = '1') THEN
		  IF(pwm_5ms_counter = 0) THEN
        pwm_5ms_counter <= (speed_wire - 1);
		  ELSE
        pwm_5ms_counter <= pwm_5ms_counter - 1;
		  END IF;
    END IF;
  END PROCESS;

  pwm_generation : PROCESS (reset_n, steps_counter, steps_to_run, pwm_state)
  BEGIN
    IF(reset_n = '0') THEN
      motor_pwm_wire <= "0000";
      ir_wire <= '0';
    ELSIF(steps_counter = steps_to_run) THEN -- motor reached final position
      motor_pwm_wire <= "0000";
      ir_wire <= '1';
    ELSE
      CASE pwm_state IS
      WHEN ONE =>
        motor_pwm_wire <= "1100";
      WHEN TWO =>
        motor_pwm_wire <= "0110";
      WHEN THREE =>
        motor_pwm_wire <= "0011";
      WHEN FOUR =>
        motor_pwm_wire <= "1001";
      END CASE;
      ir_wire <= '0';
    END IF;
  END PROCESS;

  motor_en  <= motor_en_wire;
  motor_pwm <= motor_pwm_wire;
  ir        <= ir_wire;
  steps     <= conv_std_logic_vector(steps_counter, 32);
END my_signal_generator;