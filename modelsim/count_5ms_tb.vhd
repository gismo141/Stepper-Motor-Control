LIBRARY ieee  ; 
USE ieee.std_logic_1164.all  ; 
ENTITY count_5ms_tb  IS 
  GENERIC (
    max  : INTEGER   := 125000 ); 
END ; 
 
ARCHITECTURE count_5ms_tb_arch OF count_5ms_tb IS
  SIGNAL reset_n    :  STD_LOGIC    := '0'; 
  SIGNAL clock      :  STD_LOGIC    := '0'; 
  SIGNAL clock5ms   :  STD_LOGIC    := '0'; 
  SIGNAL enable     :  STD_LOGIC    := '0'; 
  COMPONENT count_5ms  
    GENERIC ( 
      max  : INTEGER  );  
    PORT ( 
      reset_n  : in STD_LOGIC ; 
      clock  : in STD_LOGIC ; 
      clock5ms  : out STD_LOGIC ; 
      enable  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : count_5ms  
    GENERIC MAP ( 
      max  => max   )
    PORT MAP ( 
      reset_n   => reset_n  ,
      clock   => clock  ,
      clock5ms   => clock5ms  ,
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

