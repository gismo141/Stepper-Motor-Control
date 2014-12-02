-------------------------------------------------------------------------------
--! @file         milestone3_tb.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v0.1.0
--! @date         02.12.2014
--!
--! @brief        Testbench for Milestone 3
--! @details      Tests the bahavior when all components are wired together
--! @par History:
--! @details      v0.1.0 02.12.2014 Kossmann
--!               - first draft
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee;
--! Use Logic Elements
USE ieee.STD_LOGIC_1164.all;
--! Use Arithmetic Functions
USE ieee.STD_LOGIC_arith.all;
--! Use Conversion Functions
USE ieee.STD_LOGIC_SIGNED.all;


--! @brief    Entity of testbench for milestone3
ENTITY milestone3_tb  IS   
  GENERIC
  (
    --! @brief		Prescaler for PWM-signal.
    --! @details	For this purpose 2,5 ms are used as minimal pulse-width.
    --!	@details	The prescaler is calculated with the given and desired frequency
    --!			via the following formula:
    --!			prescaler = f_clock [Hz] / f_prescaler [Hz]
    --!			e.g.:	f_prescaler = 1/5 ms = 400 Hz
    --!					prescaler = 50 Mhz / 400 Hz = 125000
    --! @details In simulation the divider is 125 for faster wave generation.
    divider : integer := 125
  );
END ; 
 

--! @brief    Architecture of testbench for milestone3
ARCHITECTURE milestone3_tb_arch OF milestone3_tb IS

  SIGNAL LEDG   :  std_logic_vector (7 downto 0) := (others => '0') ; 
  SIGNAL CLOCK_50_B5B   :  STD_LOGIC := '0' ; 
  SIGNAL HSMC_TX_P   :  std_logic_vector (16 downto 0) := (others => '0'); 
  SIGNAL HSMC_RX_N   :  std_logic_vector (16 downto 0) := (others => '0'); 
  SIGNAL KEY   :  std_logic_vector (3 downto 0) := (others => '1'); -- low active
  SIGNAL SW   :  std_logic_vector (9 downto 0) := (others => '0'); 
  SIGNAL LEDR   :  std_logic_vector (7 downto 0) := (others => '0'); 
  SIGNAL HSMC_TX_N   :  std_logic_vector (16 downto 0) := (others => '0'); 
  SIGNAL HSMC_RX_P   :  std_logic_vector (16 downto 0) := (others => '0'); 
  SIGNAL CPU_RESET_n   :  STD_LOGIC := '0'; 
  COMPONENT milestone3
    GENERIC
    ( 
      divider  : INTEGER
    );  
    PORT ( 
      LEDG  : out std_logic_vector (7 downto 0) ; 
      CLOCK_50_B5B  : in STD_LOGIC ; 
      HSMC_TX_P  : out std_logic_vector (16 downto 0) ; 
      HSMC_RX_N  : out std_logic_vector (16 downto 0) ; 
      KEY  : in std_logic_vector (3 downto 0) ; 
      SW  : in std_logic_vector (9 downto 0) ; 
      LEDR  : out std_logic_vector (7 downto 0) ; 
      HSMC_TX_N  : out std_logic_vector (16 downto 0) ; 
      HSMC_RX_P  : out std_logic_vector (16 downto 0) ; 
      CPU_RESET_n  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : milestone3      
    GENERIC MAP
    ( 
      divider         => divider
    )
    PORT MAP ( 
      LEDG   => LEDG  ,
      CLOCK_50_B5B   => CLOCK_50_B5B  ,
      HSMC_TX_P   => HSMC_TX_P  ,
      HSMC_RX_N   => HSMC_RX_N  ,
      KEY   => KEY  ,
      SW   => SW  ,
      LEDR   => LEDR  ,
      HSMC_TX_N   => HSMC_TX_N  ,
      HSMC_RX_P   => HSMC_RX_P  ,
      CPU_RESET_n   => CPU_RESET_n   ) ; 

  -- creates the clock
  CLOCK_50_B5B  <= not CLOCK_50_B5B after 10 ns;
  -- initial reset
  CPU_RESET_n   <= '0', '1' after 20 ns;
  
  --Testing continous run with speed 7. Direction and Run/stop switched
--  sw(1)           <= '0';     --direction ('0' is left)
--  sw(5 downto 2)  <= "0001";  --mode 
--  sw(6)           <= '1';     --interrupt enabled
--  sw(9 downto 7)  <= "111";   --speed
--  -- low active key
--  key(0)          <= '0' after 100 ns,  --on
--                     '1' after 130 ns,
--                     '0' after 300 us,  --off
--                     '1' after 301 us,
--                     '0' after 400 us,  --on
--                     '1' after 401 us;

  --Testing Chain of Steps 1/4 with speed 7. Direction switched
  sw(1)           <= '0',     --direction ('0' is left)
                     '1' after 300 us;
  sw(5 downto 2)  <= "0010";  --mode 
  sw(6)           <= '1';     --interrupt enabled
  sw(9 downto 7)  <= "111";   --speed
  key(0)          <= '0' after 100 ns,  -- low active
                     '1' after 130 ns,
                     '0' after 550 us,  --on
                     '1' after 551 us;

END ; 