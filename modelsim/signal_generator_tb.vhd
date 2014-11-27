-----------------------------------------------------------------------------
--! @file         signal_generator_tb.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v1.0.0
--! @date         26.11.2014
--!
--! @brief        Testbench for Signal Generator Component
--! @details      Tests full functionality of component
--! @par History:
--! @details      v0.1.0 26.11.2014 Riedel
--!               - first draft
-----------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee;
--! Use Logic Elements
USE ieee.STD_LOGIC_1164.all;
--! Use Arithmetic Functions
USE ieee.STD_LOGIC_arith.all;
--! Use Conversion Functions
USE ieee.STD_LOGIC_SIGNED.all;

--! @brief    Entity of testbench for signal_generator
ENTITY signal_generator_tb IS
END; 

--! @brief    Architecture of testbench for signal_generator
--! @details  Test-procedure (1): reset_n
--!           | signal         | desired output |
--!           | :------------- | :--------------|
--!           | mode_state     | `IDLE`         |
--!           | pwm_state      | `ONE`          |
--!           | steps_counter  | `0`            |
--!           | motor_pwm      | `0000`         | 
--!           | motor_en       | `00`           |
--!           | ir             | `0`            |
--! @details  Test-procedure (2): Continuous Run with speed = 0, direction = left
--!           | signal         | desired output |
--!           | :------------- | :--------------|
--!           | mode_state     | `CR`           |
--!           | pwm_state      | `ONE`          |
--!           | steps_counter  | `0`            |
--!           | motor_pwm      | `0000`         |
--!           | motor_en       | `00`           |
--!           | ir             | `0`            |
--! @details  Test-procedure (3): Continuous Run with speed = 1, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `CR`                                  |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--!           | ir             | `0`                                   |
--! @details  Test-procedure (4): Continuous Run with speed = 7, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `CR`                                  |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--!           | ir             | `0`                                   |
--! @details  Test-procedure (5): Continuous Run with speed = 7, direction = right
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `CR`                                  |
--!           | pwm_state      | cycling `FOUR`, `THREE`, `TWO`, `ONE` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--!           | ir             | `0`                                   |
--! @details  Test-procedure (6): Chain of Steps - 1/4 rotation with speed = 0, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `COS_1_4`                             |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--!           | ir             | `0`                                   |
--! @details  Test-procedure (7): Chain of Steps - 1/2 rotation with speed = 0, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `COS_1_2`                             |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--!           | ir             | `0`                                   |
--! @details  Test-procedure (8): Chain of Steps - 1 rotation with speed = 0, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `COS_1`                               |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--!           | ir             | `0`                                   |
--! @details  Test-procedure (9): Chain of Steps - 2 rotations with speed = 0, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `COS_2`                               |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--!           | ir             | `0`                                   |
ARCHITECTURE signal_generator_tb_arch OF signal_generator_tb IS

  SIGNAL    motor_pwm  : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL    reset_n    : STD_LOGIC                      := '1';
  SIGNAL    clock      : STD_LOGIC                      := '0';
  SIGNAL    direction  : STD_LOGIC;
  SIGNAL    speed      : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL    mode       : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL    motor_en   : STD_LOGIC_VECTOR (1 DOWNTO 0);
  SIGNAL    steps      : STD_LOGIC_VECTOR (31 DOWNTO 0);
  SIGNAL    ir         : STD_LOGIC;
  SIGNAL    enable     : STD_LOGIC                      := '0';

  CONSTANT  left       : STD_LOGIC                      := '0';
  CONSTANT  right      : STD_LOGIC                      := NOT left;

  COMPONENT signal_generator  
    PORT
    (
      motor_pwm     : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
      reset_n       : IN  STD_LOGIC;
      clock         : IN  STD_LOGIC;
      direction     : IN  STD_LOGIC;
      speed         : IN  STD_LOGIC_VECTOR (2 DOWNTO 0);
      mode          : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
      motor_en      : OUT STD_LOGIC_VECTOR (1 DOWNTO 0);
      steps         : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      ir            : OUT STD_LOGIC;
      enable        : IN  STD_LOGIC
    ); 
  END COMPONENT;

BEGIN
  DUT : signal_generator
    PORT MAP
    ( 
      motor_pwm     => motor_pwm,
      reset_n       => reset_n,
      clock         => clock,
      direction     => direction,
      speed         => speed,
      mode          => mode,
      motor_en      => motor_en,
      steps         => steps,
      ir            => ir,
      enable        => enable
    ); 
      
  clock     <= not clock after 10 ns; --! creates the clock
  reset_n   <= '0' after 40 ns,       --! initial reset-trigger
               '1' after 80 ns;
  mode      <= "0001" after 60 ns;    --! CR
  direction <= right after 60 ns;
  enable    <= not enable after 30 ns;
  speed     <= "111" after 60 ns;

  finish_sim_time : PROCESS
    BEGIN
      WAIT FOR 50 ms;
      ASSERT false
        REPORT "simulation finished"
        SEVERITY failure;
  END PROCESS finish_sim_time;
END;