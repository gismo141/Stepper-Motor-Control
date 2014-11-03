-------------------------------------------------------------------------------
--! @file       interface_RTX_Base.vhd
--! @author     Michael Riedel
--! @author     Marc Kossmann
--! @version    v0.1
--! @date       28.10.2014
--! @brief      Interface Base-File (RTX) to embed Qsys-outputAssignments->))
--!
--! @par        History:
--! @details    28.10. Kossmann
--!             - initial setup
--! @details    03.11. Riedel
--!             - corrected documentation and indention
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee;
--! Use Logic Elements
USE ieee.std_logic_1164.all; 

--! Use Work Library
LIBRARY work;


--! @brief Base-Entity. This Entity describes the connection
--!        to DE2-Board
ENTITY interface_RTX_Base IS 
  PORT
  (
    CLOCK_50_B5B  : IN      STD_LOGIC;                                          --! 50 MHz Oscillator
    CPU_RESET_n   : IN      STD_LOGIC;                                          --! CPU reset_n
    SRAM_A        : OUT     STD_LOGIC_VECTOR(17 DOWNTO 0);                      --! SRAM address lines
    SRAM_D        : INOUT   STD_LOGIC_VECTOR(15 DOWNTO 0);                      --! SRAM-data bus
    SRAM_CE_N     : OUT     STD_LOGIC;                                          --! SRAM chip enable
    SRAM_LB_N     : OUT     STD_LOGIC;                                          --! SRAM lower byte line
    SRAM_OE_N     : OUT     STD_LOGIC;                                          --! SRAM output enable (read) line
    SRAM_UB_N     : OUT     STD_LOGIC;                                          --! SRAM upper byte linkage
    SRAM_WE_N     : OUT     STD_LOGIC;                                          --! SRAM write enable line
    KEY           : IN      STD_LOGIC_VECTOR(3 DOWNTO 0);                       --! key-definition
    SW            : IN      STD_LOGIC_VECTOR(9 DOWNTO 0);                       --! slidINg switches
    LED9          : OUT     STD_LOGIC;                                          --! debug LEDs
    HEX0          : OUT     STD_LOGIC_VECTOR(6 DOWNTO 0);                       --! HEX display 0
    HEX1          : OUT     STD_LOGIC_VECTOR(6 DOWNTO 0);                       --! HEX display 1
    HEX2          : OUT     STD_LOGIC_VECTOR(6 DOWNTO 0);                       --! HEX display 2
    HEX3          : OUT     STD_LOGIC_VECTOR(6 DOWNTO 0);                       --! HEX display 3
    LCD_RS        : OUT     STD_LOGIC;                                          --! LCD RS
    LCD_RW        : OUT     STD_LOGIC;                                          --! LCD RW
    LCD_DQ        : INOUT   STD_LOGIC(7 DOWNTO 0)           := (OTHERS => '0'); --! LCD data
    LCD_EN        : OUT     STD_LOGIC                                           --! LCD enable
  );
END interface_RTX_Base;

--! @brief NIOS-Processor with SOPC-Peripherie
ARCHITECTURE a1 OF interface_RTX_Base IS 

component StepperMotorControl is
  port (
    reset_reset_n  : IN    STD_LOGIC                        := '0';             -- reset.reset_n
    clk_clk        : IN    STD_LOGIC                        := '0';             --   clk.clk
    sram_SRAM_OE_N : OUT   STD_LOGIC_VECTOR(0 DOWNTO 0);                        --  sram.SRAM_OE_N
    sram_SRAM_CE_N : OUT   STD_LOGIC_VECTOR(0 DOWNTO 0);                        --      .SRAM_CE_N
    sram_SRAM_BE_N : OUT   STD_LOGIC_VECTOR(1 DOWNTO 0);                        --      .SRAM_BE_N
    sram_SRAM_D    : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0)    := (OTHERS => '0'); --      .SRAM_D
    sram_SRAM_A    : OUT   STD_LOGIC_VECTOR(18 DOWNTO 0);                       --      .SRAM_A
    sram_SRAM_WE_N : OUT   STD_LOGIC_VECTOR(0 DOWNTO 0);                        --      .SRAM_WE_N
    sw_export      : IN    STD_LOGIC_VECTOR(9 DOWNTO 0)     := (OTHERS => '0'); --    sw.export
    lcd_RS         : OUT   STD_LOGIC;                                           --   lcd.RS
    lcd_RW         : OUT   STD_LOGIC;                                           --      .RW
    lcd_data       : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)     := (OTHERS => '0'); --      .data
    lcd_E          : OUT   STD_LOGIC;                                           --      .E
    key_export     : IN    STD_LOGIC_VECTOR(3 DOWNTO 0)     := (OTHERS => '0'); --   key.export
    hex0_export    : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);                        --  hex0.export
    hex1_export    : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);                        --  hex1.export
    hex2_export    : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);                        --  hex2.export
    hex3_export    : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);                        --  hex3.export
    led9_export    : OUT   STD_LOGIC                                            --  led9.export
  );
    end component StepperMotorControl;

signal be_n: STD_LOGIC_VECTOR(1 DOWNTO 0);  --! Byte enable signals
BEGIN 
  -- RAM
  SRAM_LB_N <= be_n(0);
  SRAM_UB_N <= be_n(1);
      
  u0 : component StepperMotorControl
    port map (
      reset_reset_n             => CPU_RESET_n,             -- clk_50MHz_clk_in_reset.reset_n
      clk_clk                   => CLOCK_50_B5B,            -- clk_50MHz_clk_in.clk
      sram_SRAM_OE_N(0)         => SRAM_OE_N,               -- SRAM_Conduit_out.SRAM_OE_N
      sram_SRAM_CE_N(0)         => SRAM_CE_N,               --                  .SRAM_CE_N
      sram_SRAM_BE_N            => be_n,                    --                  .SRAM_BE_N
      sram_SRAM_D               => SRAM_D,                  --                  .SRAM_D
      sram_SRAM_A(18 DOWNTO 1)  => SRAM_A,                  --                  .SRAM_A
      sram_SRAM_WE_N(0)         => SRAM_WE_N,               --                  .SRAM_WE_N
      sw_export                 => SW,
      lcd_RS                    => LCD_RS,
      lcd_RW                    => LCD_RW,
      lcd_data                  => LCD_DQ,
      lcd_E                     => LCD_EN,
      key_export                => KEY,
      hex0_export               => HEX0,
      hex1_export               => HEX1,
      hex2_export               => HEX2,
      hex3_export               => HEX3,
      led9_export               => LED9
    );
END a1;