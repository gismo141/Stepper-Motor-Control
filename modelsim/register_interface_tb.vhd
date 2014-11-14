LIBRARY ieee  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.STD_LOGIC_SIGNED.all  ; 
ENTITY register_interface_tb  IS 
  GENERIC (
    MyParameter  : INTEGER   := 42 ); 
END ; 
 
ARCHITECTURE register_interface_tb_arch OF register_interface_tb IS
  SIGNAL write_n      :  STD_LOGIC  := '1' ; 
  SIGNAL greenleds    :  std_logic_vector (7 downto 0) := (others => '0') ; 
  SIGNAL addr         :  std_logic_vector (2 downto 0) := (others => '0')  ; 
  SIGNAL clock        :  STD_LOGIC := '0' ; 
  SIGNAL ce_n         :  STD_LOGIC := '1' ; 
  SIGNAL reset_n      :  STD_LOGIC := '0' ; 
  SIGNAL read_n       :  STD_LOGIC := '1' ; 
  SIGNAL redleds      :  std_logic_vector (7 downto 0) := (others => '0')  ; 
  SIGNAL write_data   :  std_logic_vector (31 downto 0) := (others => '0')  ; 
  SIGNAL debug_n      :  STD_LOGIC := '1' ; 
  SIGNAL irq          :  STD_LOGIC := '0' ; 
  SIGNAL read_data    :  std_logic_vector (31 downto 0) := (others => '0')  ; 
  COMPONENT register_interface  
    GENERIC ( 
      MyParameter  : INTEGER  );  
    PORT ( 
      write_n  : in STD_LOGIC ; 
      greenleds  : out std_logic_vector (7 downto 0) ; 
      addr  : in std_logic_vector (2 downto 0) ; 
      clock  : in STD_LOGIC ; 
      ce_n  : in STD_LOGIC ; 
      reset_n  : in STD_LOGIC ; 
      read_n  : in STD_LOGIC ; 
      redleds  : out std_logic_vector (7 downto 0) ; 
      write_data  : in std_logic_vector (31 downto 0) ; 
      debug_n  : in STD_LOGIC ; 
      irq  : out STD_LOGIC ; 
      read_data  : out std_logic_vector (31 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : register_interface  
    GENERIC MAP ( 
      MyParameter  => MyParameter   )
    PORT MAP ( 
      write_n   => write_n  ,
      greenleds   => greenleds  ,
      addr   => addr  ,
      clock   => clock  ,
      ce_n   => ce_n  ,
      reset_n   => reset_n  ,
      read_n   => read_n  ,
      redleds   => redleds  ,
      write_data   => write_data  ,
      debug_n   => debug_n  ,
      irq   => irq  ,
      read_data   => read_data   ) ; 
      
    clock <= not clock after 10 ns;
    ce_n <= '0' after 20 ns;
    reset_n <= '1' after 20 ns,
               '0' after 140 ns,
               '1' after 150 ns;          
    write_n <= '0' after 30 ns,
               '1' after 200 ns;        
    read_n  <= '0' after 30 ns;
    addr <= "000" after 30 ns,
            "001" after 50 ns,
            "010" after 70 ns,
            "011" after 90 ns,
            "100" after 110 ns,
            "000" after 150 ns,
            "001" after 170 ns,
            "010" after 190 ns;
    write_data(7 downto 0) <= "11111111" after 30 ns,
                              "10101010" after 150 ns,
                              "01010101" after 170 ns,
                              "10101010" after 190 ns;
    
    finish_sim_time :process
    begin
      wait for 3000 ns;
      assert false
        report "simulation finished"
        severity failure;
  end process finish_sim_time;
END ; 

