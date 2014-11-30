-------------------------------------------------------------------------------
--! @file         motor_control_unit_tb.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v1.0.0
--! @date         26.11.2014
--!
--! @brief        Testbench for Motor-Control-Unit Component
--! @details      Tests full functionality of component
--!
--! @details  Test-procedure (1): reset_n
--!           | signal         | desired output |
--!           | :------------- | :--------------|
--!           | mode_state     | `IDLE`         |
--!           | pwm_state      | `ONE`          |
--! @details  Test-procedure (2): Continuous Run with speed = 0, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `CR`                                  |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--! @details  Test-procedure (3): Continuous Run with speed = 1, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `CR`                                  |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--! @details  Test-procedure (4): Continuous Run with speed = 7, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `CR`                                  |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--! @details  Test-procedure (5): Continuous Run with speed = 7, direction = right
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `CR`                                  |
--!           | pwm_state      | cycling `FOUR`, `THREE`, `TWO`, `ONE` |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--! @details  Test-procedure (6): Chain of Steps - 1/4 rotation with speed = 7, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `COS_1_4`                             |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `100`                                 |
--!           | ir             | `1`                                   |
--! @details  Test-procedure (7): Chain of Steps - 1/2 rotation with speed = 7, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `COS_1_2`                             |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--!           | ir             | `0`                                   |
--! @details  Test-procedure (8): Chain of Steps - 1 rotation with speed = 7, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `COS_1`                               |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`     motor_control_unit_tb.vhd                             |
--!           | ir             | `0`                                   |
--! @details  Test-procedure (9): Chain of Steps - 2 rotations with speed = 7, direction = left
--!           | signal         | desired output                        |
--!           | :------------- | :-------------------------------------|
--!           | mode_state     | `COS_2`                               |
--!           | pwm_state      | cycling `ONE`, `TWO`, `THREE`, `FOUR` |
--!           | steps_counter  | `0`                                   |
--!           | motor_pwm      | `0000`                                |
--!           | motor_en       | `00`                                  |
--!           | ir             | `0`                                   |
--!
--! @par History:
--! @details      v0.1.0 26.11.2014 Riedel
--!               - first draft
--! @details      v0.1.1 27.11.2014 Riedel
--!               - implemented first test-procedures
--! @details      v0.1.2 28.11.2014 Riedel
--!               - added documentation for GENERIC divider
--!               - moved test-procedure-documentation to doxygen-heade
--! @details      v0.1.3 30.11.2014 Kossmann
--!               - changed divider to 250 to get 1 ms in simulation for 1 s 
--!               in real. Simulation takes longer but easier to measure
--!               - Test-procedure must no commented in or out for easier readability
--!               - initialized every signal
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee;
--! Use Logic Elements
USE ieee.STD_LOGIC_1164.all;
--! Use Arithmetic Functions
USE ieee.STD_LOGIC_arith.all;
--! Use Conversion Functions
USE ieee.STD_LOGIC_SIGNED.all;

--! @brief    Entity of testbench for motor_control_unit
ENTITY motor_control_unit_tb  IS 
  GENERIC
  (
    --! @brief		Prescaler for PWM-signal.
    --! @details	For this purpose 5 ms are used as minimal pulse-width.
    --!	@details	The prescaler is calculated with the given and desired frequency
    --!			via the following formula:
    --!			prescaler = f_clock [Hz] / f_prescaler [Hz]
    --!			e.g.:	f_prescaler = 1/5 ms = 200 Hz
    --!					prescaler = 50 Mhz / 200 Hz = 250000
    --! @details	For simulation purpose the best value to use is 2.
    divider : integer := 250
  );
END; 
 
--! @brief    Architecture of testbench for motor_control_unit
ARCHITECTURE motor_control_unit_tb_arch OF motor_control_unit_tb IS

  SIGNAL    motor_pwm : STD_LOGIC_VECTOR (3 DOWNTO 0)   := "0000";
  SIGNAL    reset_n   : STD_LOGIC                       := '1';
  SIGNAL    clock     : STD_LOGIC                       := '0';
  SIGNAL    speed     : STD_LOGIC_VECTOR (2 DOWNTO 0)   := "000";
  SIGNAL    mode      : STD_LOGIC_VECTOR (3 DOWNTO 0)   := "0000";
  SIGNAL    direction : STD_LOGIC                       := '0';
  SIGNAL    run       : STD_LOGIC                       := '0';
  SIGNAL    ir        : STD_LOGIC                       := '0';
  SIGNAL    steps     : STD_LOGIC_VECTOR (31 DOWNTO 0)  := (others => '0');
  SIGNAL    motor_en  : STD_LOGIC_VECTOR (1 DOWNTO 0)   := "00";
  CONSTANT  left      : STD_LOGIC                       := '0';
  CONSTANT  right     : STD_LOGIC                       := NOT left;

  COMPONENT motor_control_unit  
    GENERIC
    ( 
      divider  : INTEGER
    );  
    PORT
    ( 
      motor_pwm       : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
      reset_n         : IN  STD_LOGIC;
      clock           : IN  STD_LOGIC;
      speed           : IN  STD_LOGIC_VECTOR (2 DOWNTO 0);
      mode            : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
      direction       : IN  STD_LOGIC;
      run             : IN  STD_LOGIC;
      ir              : OUT STD_LOGIC;
      steps           : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
      motor_en        : OUT STD_LOGIC_VECTOR (1 DOWNTO 0)
    ); 
  END COMPONENT; 
BEGIN
  DUT  : motor_control_unit  
    GENERIC MAP
    ( 
      divider         => divider
    )
    PORT MAP
    ( 
      motor_pwm       => motor_pwm,
      reset_n         => reset_n,
      clock           => clock,
      speed           => speed,
      mode            => mode,
      direction       => direction,
      run             => run,
      ir              => ir,
      steps           => steps,
      motor_en        => motor_en
    ); 

  -- creates the clock
  clock     <= not clock after 10 ns;

  -- Test-procedure (1), reset_n
  reset_n   <= '0',
               '1' after 20 ns;
               
  -- Test-procedure (2), Continuous Run with speed = 0, direction = left
  -- 5 ms sim time for two pulses
--  run       <= '1' after 20 ns;
--  mode    	 <= "0001" after 20 ns;
--  direction <= left;
--  speed     <= "000";

  -- Test-procedure (3), Continuous Run with speed = 1, direction = left
  -- 3 ms sim time for two pulses
--  run       <= '1' after 20 ns;
--  mode    	 <= "0001" after 20 ns;
--  direction <= left;
--  speed     <= "001"; 

  -- Test-procedure (4), Continuous Run with speed = 7, direction = left
  -- 30 us sim time for two pulses
--  run       <= '1' after 20 ns;
--  mode    	 <= "0001" after 20 ns;
--  direction <= left;
--  speed     <= "111";
               
  -- Test-procedure (2), Continuous Run with speed = 7, direction = right
  -- 30 us sim time for two pulses
--  run       <= '1' after 20 ns;
--  mode    	 <= "0001" after 20 ns;
--  direction <= right;
--  speed     <= "111";
               
  -- Test-procedure (2), Chain of Steps - 1/4 rotation with speed = 7, direction = left
  -- 1020 us sim time for 1/4 rotation
  run       <= '1' after 20 ns;
  mode    	 <= "0010" after 20 ns;
  direction <= right;
  speed     <= "111";



  finish_sim_time : PROCESS
    BEGIN
      WAIT FOR 10 ms;
      ASSERT false
        REPORT "simulation finished"
        SEVERITY failure;
  END PROCESS finish_sim_time;
END;

