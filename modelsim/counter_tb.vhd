-------------------------------------------------------------------------------
--! @file         counter_tb.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v0.1.0
--! @date         23.11.2014
--!
--! @brief        Testbench for counter component
--! @par History:
--! @details      v0.1.0 23.11.2014 Kossmann
--!               - first draft
--! @details      v0.1.2 28.11.2014 Kossmann
--!               - improved documentation
--! @details      v0.1.3 05.12.2014 Riedel
--!               - corrected formatting and indention
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all; 

--! @brief Testbench entity
ENTITY counter_tb  IS 
  GENERIC
  (
    --! @brief    Prescaler for PWM-signal.
    --! @details  For this purpose 2,5 ms are used as minimal pulse-width.
    --! @details  The prescaler is calculated with the given and desired frequency
    --!     via the following formula:
    --!     prescaler = f_clock [Hz] / f_prescaler [Hz]
    --!     e.g.: f_prescaler = 1/5 ms = 400 Hz
    --!         prescaler = 50 Mhz / 400 Hz = 125000
    divider  : INTEGER   := 125
  );
END;

--! @brief    Architecture of testbench
--! @details  Just to test if counter works like expected
ARCHITECTURE counter_tb_arch OF counter_tb IS

  SIGNAL reset_n  :  STD_LOGIC    := '0'; 
  SIGNAL clock    :  STD_LOGIC    := '0'; 
  SIGNAL clk_out  :  STD_LOGIC    := '0'; 
  SIGNAL enable   :  STD_LOGIC    := '0'; 

  COMPONENT counter
    GENERIC
    ( 
      divider     : INTEGER
    );  
    PORT ( 
      reset_n     : in STD_LOGIC;
      clock       : in STD_LOGIC;
      clk_out     : out STD_LOGIC;
      enable      : in STD_LOGIC
    ); 
  END COMPONENT;

BEGIN
  DUT  : counter
    GENERIC MAP
    ( 
      divider     => divider
    )
    PORT MAP
    (
      reset_n     => reset_n,
      clock       => clock,
      clk_out     => clk_out,
      enable      => enable
    );
      
    clock         <= NOT clock AFTER 10 ns;
    enable        <= '1' AFTER 20 ns;
    reset_n       <= '1' AFTER 20 ns;
    
    finish_sim_time : PROCESS
    BEGIN
      WAIT FOR 50 ms;
      ASSERT false
        REPORT "simulation finished"
        SEVERITY failure;
  END PROCESS finish_sim_time;
END;

