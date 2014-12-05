-------------------------------------------------------------------------------
--! @file         milestone3_tb.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v1.0.0
--! @date         05.12.2014
--!
--! @brief        Testbench for Milestone 3
--! @details      Tests the bahavior when all components are wired together
--! @par History:
--! @details      v0.1.0 02.12.2014 Kossmann
--!               - first draft
--! @details      v0.1.1 04.12.2014 Riedel
--!               - corrected output-naming for LEDs
--!               - corrected formatting and indention
--! @details      v1.0.0 05.12.2014 Riedel & Kossmann
--!               - release milestone 3b
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
    --! @brief    Prescaler for PWM-signal.
    --! @details  For this purpose 2,5 ms are used as minimal pulse-width.
    --! @details  The prescaler is calculated with the given and desired frequency
    --!           via the following formula:
    --!     \f{equation*}{
    --!       \text{prescaler}      = \frac{f_{\text{clock}}\,\text{Hz}}{f_{\text{prescaler}}\,\text{Hz}}
    --!     \f}
    --!     e.g.:
    --!     \f{equation*}{
    --!       \left.\begin{aligned}
    --!         f_{\text{prescaler}}  &= \frac{2}{5}\,\text{ms} \newline
    --!                               &= 400\,\text{Hz} \newline\newline
    --!         \text{prescaler}      &= \frac{50\,\text{Mhz}}{400\,\text{Hz}} \newline
    --!                               &= 125000 \newline
    --!       \end{aligned}
    --!     \right\}
    --!     \qquad \text{pulse-width: 5 ms}
    --!     \f}
    --! @details For simulation-purpose the divider was set to 125 for faster wave generation.
    --!           
    divider : INTEGER := 125
  );
END;

--! @brief    Architecture of testbench for milestone3
ARCHITECTURE milestone3_tb_arch OF milestone3_tb IS

  SIGNAL LEDG         : STD_LOGIC_VECTOR (7 DOWNTO 0)   := (others => '0');
  SIGNAL CLOCK_50_B5B : STD_LOGIC                       := '0';
  SIGNAL HSMC_TX_P    : STD_LOGIC_VECTOR (16 DOWNTO 0)  := (others => '0'); 
  SIGNAL HSMC_RX_N    : STD_LOGIC_VECTOR (16 DOWNTO 0)  := (others => '0'); 
  SIGNAL KEY          : STD_LOGIC_VECTOR (3 DOWNTO 0)   := (others => '1'); -- low active
  SIGNAL SW           : STD_LOGIC_VECTOR (9 DOWNTO 0)   := (others => '0'); 
  SIGNAL LEDR         : STD_LOGIC_VECTOR (7 DOWNTO 0)   := (others => '0'); 
  SIGNAL HSMC_TX_N    : STD_LOGIC_VECTOR (16 DOWNTO 0)  := (others => '0'); 
  SIGNAL HSMC_RX_P    : STD_LOGIC_VECTOR (16 DOWNTO 0)  := (others => '0'); 
  SIGNAL CPU_RESET_n  : STD_LOGIC                       := '0'; 
  COMPONENT milestone3
    GENERIC
    ( 
      divider  : INTEGER
    );  
    PORT ( 
      LEDG            : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      CLOCK_50_B5B    : IN  STD_LOGIC;
      HSMC_TX_P       : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      HSMC_RX_N       : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      KEY             : IN  STD_LOGIC_VECTOR (3 DOWNTO 0);
      SW              : IN  STD_LOGIC_VECTOR (9 DOWNTO 0);
      LEDR            : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
      HSMC_TX_N       : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      HSMC_RX_P       : OUT STD_LOGIC_VECTOR (16 DOWNTO 0);
      CPU_RESET_n     : IN  STD_LOGIC ); 
  END COMPONENT;
BEGIN
  DUT  : milestone3      
    GENERIC MAP
    ( 
      divider         => divider
    )
    PORT MAP
    (
      LEDG            => LEDG,
      CLOCK_50_B5B    => CLOCK_50_B5B,
      HSMC_TX_P       => HSMC_TX_P,
      HSMC_RX_N       => HSMC_RX_N,
      KEY             => KEY,
      SW              => SW,
      LEDR            => LEDR,
      HSMC_TX_N       => HSMC_TX_N,
      HSMC_RX_P       => HSMC_RX_P,
      CPU_RESET_n     => CPU_RESET_n
    );

  -- creates the clock
  CLOCK_50_B5B  <= not CLOCK_50_B5B AFTER 10 ns;
  -- initial reset
  CPU_RESET_n   <= '0', '1' AFTER 20 ns;
  
  --Testing continous run with speed 7 and 6. Direction and Run/stop switched
  --750 us simtime
  --sw(1)           <= '0';     --direction ('0' is left)
--  sw(5 DOWNTO 2)  <= "0001";  --mode 
--  sw(6)           <= '1';     --interrupt enabled
--  sw(1)           <= '0';     --direction ('0' is left)
--  sw(5 DOWNTO 2)  <= "0001";  --mode 
--  sw(6)           <= '1';     --interrupt enabled
--  sw(9 DOWNTO 7)  <= "111",   --speed
--                     "110" AFTER 200 us;
--  -- low active key
--  key(0)          <= '0' AFTER 100 ns,  --on
--                     '1' AFTER 130 ns,
--                     '0' AFTER 300 us,  --off
--                     '1' AFTER 301 us,
--                     '0' AFTER 400 us,  --on
--                     '1' AFTER 401 us;sw(9 DOWNTO 7)  <= "111",   --speed
--                     "110" AFTER 200 us;
--  -- low active key
--  key(0)          <= '0' AFTER 100 ns,  --on
--                     '1' AFTER 130 ns,
--                     '0' AFTER 300 us,  --off
--                     '1' AFTER 301 us,
--                     '0' AFTER 400 us,  --on
--                     '1' AFTER 401 us;

  --Testing Chain of Steps 1/4 with speed 7. Direction switched and restart
  --750 us simtime
--  sw(1)           <= '0',     --direction ('0' is left)
--                     '1' AFTER 300 us;
--  sw(5 DOWNTO 2)  <= "0010";  --mode 
--  sw(6)           <= '1';     --interrupt enabled
--  sw(9 DOWNTO 7)  <= "111";   --speed
--  key(0)          <= '0' AFTER 100 ns,  -- low active
--                     '1' AFTER 130 ns,
--                     '0' AFTER 550 us,  --on
--                     '1' AFTER 551 us;

  --Testing Chain of Steps 1/2 with speed 7. Direction switched
  --1100 us simtime
--  sw(1)           <= '0',     --direction ('0' is left)
--                     '1' AFTER 300 us;
--  sw(5 DOWNTO 2)  <= "0110";  --mode 
--  sw(6)           <= '1';     --interrupt enabled
--  sw(9 DOWNTO 7)  <= "111";   --speed
--  key(0)          <= '0' AFTER 100 ns,  -- low active
--                     '1' AFTER 130 ns,
--                     '0' AFTER 550 us,  --on
--                     '1' AFTER 551 us;
                     
  -- Testing CoS 1/4 after finish CoS 1/2 with speed = 7, direction = left
  -- 1500 us sim time for both
--  sw(1)           <= '0';     --direction ('0' is left)
--  sw(5 DOWNTO 2)  <= "0010",  --mode 
--                     "0110" after 600 us;
--  sw(6)           <= '1';     --interrupt enabled
--  sw(9 DOWNTO 7)  <= "111";   --speed
--  key(0)          <= '0' AFTER 100 ns,  -- low active
--                     '1' AFTER 130 ns,
--                     '0' AFTER 650 us,  --on
--                     '1' AFTER 651 us;
                     
  -- Testing CoS 1/2 multiple times with speed = 7, direction = left
  -- 1500 us sim time for both
  sw(1)           <= '0';     --direction ('0' is left)
  sw(5 DOWNTO 2)  <= "0110";  --mode
  sw(6)           <= '1';     --interrupt enabled
  sw(9 DOWNTO 7)  <= "111";   --speed
  key(0)          <= '0' AFTER 100 ns,  -- low active
                     '1' AFTER 130 ns,
                     '0' AFTER 1050 us,  --on
                     '1' AFTER 1051 us,
                     '0' AFTER 2200 us,
                     '1' AFTER 2201 us,
                     '0' AFTER 3400 us,
                     '1' AFTER 3401 us;

END;