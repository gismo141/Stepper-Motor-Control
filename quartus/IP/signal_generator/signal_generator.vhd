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
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;

--! @brief Signal Generator 
ENTITY signal_generator is
  GENERIC ( divider : INTEGER := 250000 );        --! clock(Hz) / clk_out(Hz)
  PORT(
  clock     : IN  STD_LOGIC;                      --! component clock
  enable    : IN  STD_LOGIC;                      --! input for minimum time-base
  reset_n   : IN  STD_LOGIC;                      --! resets the component
  mode      : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);   --! mode to run motor with
  speed     : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);   --! speed to run moter with 
  direction : IN  STD_LOGIC;                      --! motor direction ('0' is left)
  ir        : OUT STD_LOGIC;                      --! IR signal set when motor stopped
  steps     : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);  --! number of steps motor did
  motor_pwm : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);   --! signal-bus for the motor pulse-width-modulation
  motor_en  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)    --! both enable signals for the motor
 );
END signal_generator;

--! @brief    Architecture of signal generator
ARCHITECTURE my_signal_generator OF signal_generator IS

TYPE MODE_STATE_TYPE IS (IDLE, CR, COS_1_4, COS_1_2, COS_1, COS_2);
TYPE PWM_STATE_TYPE IS (1, 2, 3, 4);

SIGNAL mode_state : MODE_STATE_TYPE;
SIGNAL pwm_state : PWM_STATE_TYPE;
SIGNAL pulse_width_5ms : INTEGER RANGE 2 TO 400;

BEGIN
  mode_state_machine : PROCESS (reset_n, clock, mode)
  BEGIN
    IF(reset_n = '0') THEN
      mode_state <= IDLE;
    ELSIF(rising_edge(clock)) THEN
      CASE mode_state IS
      WHEN IDLE =>
        IF mode = "XX01" THEN
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
      WHEN others =>
      END CASE;
    END IF; 
  END PROCESS;
  
  state_PROCESSing : PROCESS (mode_state)
  BEGIN
    CASE mode_state IS
    WHEN IDLE =>
      motor_en <= "00"; -- stops the motor
    WHEN CR =>
    WHEN COS_1_4 =>
    WHEN COS_1_2 =>
    WHEN COS_1 =>
    WHEN COS_2 =>
    WHEN others =>
    END CASE;
  END PROCESS;
  
  pwm_state_machine : PROCESS (reset_n, clock, direction)
  BEGIN
    IF(reset_n = '0') THEN
      pwm_state <= 1;
    ELSIF(rising_edge(clock)) THEN
      CASE pwm_state IS
      WHEN 1 =>
        IF(direction = '0') THEN
          pwm_state <= 4;
        ELSE
          pwm_state <= 2;
        END IF;
      WHEN 2 =>
        IF(direction = '0') THEN
          pwm_state <= 1;
        ELSE
          pwm_state <= 3;
        END IF;
      WHEN 3 =>
        IF(direction = '0') THEN
          pwm_state <= 2;
        ELSE
          pwm_state <= 4;
        END IF;
      WHEN 4 =>
        IF(direction = '0') THEN
          pwm_state <= 3;
        ELSE
          pwm_state <= 1;
        END IF;
      WHEN others =>
      END CASE;
    END IF;
  END PROCESS;
  
  pwm_generation : PROCESS (pulse_width_5ms)
   AND rising_edge(pulse_width_5ms)
END my_signal_generator;