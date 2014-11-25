LIBRARY ieee  ; 
USE ieee.std_logic_1164.all  ; 
ENTITY counter_tb  IS 
  GENERIC (
    divider  : INTEGER   := 250000 ); 
END ; 
 
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

