-----------------------------------------------------------------------------
--! @file register_interface_tb.vhd
--! @author  	Marc Kossmann
--! @author  	Michael Riedel
--! @version 	v0.1.0
--! @date    	07.11.2014
--!
--! @brief 		Testbench for Register Component
--! @details 	Tests full functionality of component
--! @par History:
--! @details 	v0.1.0 06.11.2014 Kossmann
--!          	- first draft
--! @details 	v0.1.1 07.11.2014 Kossmann
--!          	- finished reset_n task
-----------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee  ; 
--! Use Logic Elements
USE ieee.std_logic_1164.all  ; 
--! Use Conversion Functions
USE ieee.STD_LOGIC_SIGNED.all  ; 
ENTITY register_interface_tb  IS 
  GENERIC (
    MyParameter  : INTEGER   := 42 );  --! Dummyparameter (Demo)
END ; 
 
 
--! @brief    Architecture of testbench for register_interface
--! @details  first test if all registers can be written
--!           then resets everything
--!           test if set and clear is working the right way
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
      irq   => irq  ,
      read_data   => read_data   ) ; 
      
    
    -- first test if all registers can be written
    -- then resets everything
    -- test if set and clear is working the right way
    clock <= not clock after 10 ns;
    ce_n <= '0' after 20 ns;
    reset_n <= '1' after 20 ns,
               '0' after 140 ns,
               '1' after 150 ns;          
    write_n <= '0' after 30 ns,
               '1' after 200 ns;        
    read_n  <= '0' after 30 ns;
    addr <= "000" after 30 ns,    -- ctrlReg
            "001" after 50 ns,    -- ctrlSetReg
            "010" after 70 ns,    -- ctrlClrReg
            "011" after 90 ns,    -- speedReg
            "100" after 110 ns,   -- stepsReg
                                  -- reset
            "000" after 150 ns,   -- ctrlReg
            "001" after 170 ns,   -- ctrlSetReg
            "010" after 190 ns;   -- ctrlClrReg
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

