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
-------------------------------------------------------------------------------

LIBRARY ieee  ; 
USE ieee.std_logic_1164.all  ; 

--! @brief Testbench entity
ENTITY counter_tb  IS 
  GENERIC (
    divider  : INTEGER   := 250000 ); --! divider for counter
END ; 

--! @brief    Architecture of testbench
--! @details  Just to test if counter works like expected
ARCHITECTURE counter_tb_arch OF counter_tb IS
  SIGNAL reset_n    :  STD_LOGIC    := '0'; 
  SIGNAL clock      :  STD_LOGIC    := '0'; 
  SIGNAL clk_out   :  STD_LOGIC    := '0'; 
  SIGNAL enable     :  STD_LOGIC    := '0'; 
  COMPONENT counter
    GENERIC ( 
      divider  : INTEGER  );  
    PORT ( 
      reset_n  : in STD_LOGIC ; 
      clock  : in STD_LOGIC ; 
      clk_out  : out STD_LOGIC ; 
      enable  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : counter
    GENERIC MAP ( 
      divider  => divider   )
    PORT MAP ( 
      reset_n   => reset_n  ,
      clock   => clock  ,
      clk_out   => clk_out  ,
      enable   => enable   ) ;
      
    clock <= not clock after 10 ns;
    enable <= '1' after 20 ns;
    reset_n <= '1' after 20 ns;
    
    finish_sim_time :process
    begin
      wait for 50 ms;
      assert false
        report "simulation finished"
        severity failure;
  end process finish_sim_time;
END ; 

