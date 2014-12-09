-------------------------------------------------------------------------------
--! @file       interface_RTX_Base.vhd
--! @author     Michael Riedel
--! @author     Marc Kossmann
--! @version    v1.0.0
--! @date       11.11.2014
--! @brief      Interface Base-File (RTX) to embed Qsys-outputAssignments->))
--!
--! @par        History:
--! @details    v0.1.0 28.10.2014 Kossmann
--!             - initial setup
--! @details   	v1.0.0 03.11.2014 Riedel
--!             - corrected documentation and indention
--! @details    v1.0.1 05.11.2014 Riedel
--!             - renamed led-outputs in StepperMotorControl-Component
--!             - removed unused-comments and corrected formatting
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
    CLOCK_50_B5B    : IN    STD_LOGIC;                                          --! 50 MHz Oscillator
    CPU_RESET_n     : IN    STD_LOGIC;                                          --! CPU reset_n
    SRAM_A          : OUT   STD_LOGIC_VECTOR(17 DOWNTO 0);                      --! SRAM address lines
    SRAM_D          : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);                      --! SRAM-data bus
    SRAM_CE_N       : OUT   STD_LOGIC;                                          --! SRAM chip enable
    SRAM_LB_N       : OUT   STD_LOGIC;                                          --! SRAM lower byte line
    SRAM_OE_N       : OUT   STD_LOGIC;                                          --! SRAM output enable (read) line
    SRAM_UB_N       : OUT   STD_LOGIC;                                          --! SRAM upper byte linkage
    SRAM_WE_N       : OUT   STD_LOGIC;                                          --! SRAM write enable line
    KEY             : IN    STD_LOGIC_VECTOR(3 DOWNTO 0);                       --! key-definition
    SW              : IN    STD_LOGIC_VECTOR(9 DOWNTO 0);                       --! slidINg switches
    LED9            : OUT   STD_LOGIC;                                          --! debug LEDs
    LEDG				  : OUT	 STD_LOGIC_VECTOR(7 DOWNTO 0);                       --! green leds
    LEDR				  : OUT	 STD_LOGIC_VECTOR(7 DOWNTO 0);							  --! red leds
    HEX0            : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);                       --! HEX display 0
    HEX1            : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);                       --! HEX display 1
    HEX2            : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);                       --! HEX display 2
    HEX3            : OUT   STD_LOGIC_VECTOR(6 DOWNTO 0);                       --! HEX display 3
    LCD_RS          : OUT   STD_LOGIC;                                          --! LCD RS
    LCD_RW          : OUT   STD_LOGIC;                                          --! LCD RW
    LCD_DQ          : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)  := (OTHERS => '0');   --! LCD data
    LCD_EN          : OUT   STD_LOGIC;                                          --! LCD enable
    HSMC_RX_P       : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);  							  --! Motor_pwm1( bit 0 ) and Motor_pwm2( bit 1 )
    HSMC_RX_N       : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);  							  --! Motor_pwm3( bit 0 ) and Motor_pwm4( bit 1 )
    HSMC_TX_N       : OUT STD_LOGIC_VECTOR(16 DOWNTO 0);  							  --! Motor_en_a( bit 2 )
    HSMC_TX_P       : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)  							  --! Motor_en_b( bit 3 )
  );
END interface_RTX_Base;

--! @brief NIOS-Processor with SOPC-Peripherals
ARCHITECTURE a1 OF interface_RTX_Base IS 

COMPONENT StepperMotorControl IS
  PORT
  (
		reset_reset_n                    : in    std_logic                     := '0';             --                  reset.reset_n
		clk_clk                          : in    std_logic                     := '0';             --                    clk.clk
		sram_SRAM_OE_N                   : out   std_logic_vector(0 downto 0);                     --                   sram.SRAM_OE_N
		sram_SRAM_CE_N                   : out   std_logic_vector(0 downto 0);                     --                       .SRAM_CE_N
		sram_SRAM_BE_N                   : out   std_logic_vector(1 downto 0);                     --                       .SRAM_BE_N
		sram_SRAM_D                      : inout std_logic_vector(15 downto 0) := (others => '0'); --                       .SRAM_D
		sram_SRAM_A                      : out   std_logic_vector(18 downto 0);                    --                       .SRAM_A
		sram_SRAM_WE_N                   : out   std_logic_vector(0 downto 0);                     --                       .SRAM_WE_N
		sw_export                        : in    std_logic_vector(9 downto 0)  := (others => '0'); --                     sw.export
		lcd_RS                           : out   std_logic;                                        --                    lcd.RS
		lcd_RW                           : out   std_logic;                                        --                       .RW
		lcd_data                         : inout std_logic_vector(7 downto 0)  := (others => '0'); --                       .data
		lcd_E                            : out   std_logic;                                        --                       .E
		key_export                       : in    std_logic_vector(3 downto 0)  := (others => '0'); --                    key.export
		hex0_export                      : out   std_logic_vector(6 downto 0);                     --                   hex0.export
		hex1_export                      : out   std_logic_vector(6 downto 0);                     --                   hex1.export
		hex2_export                      : out   std_logic_vector(6 downto 0);                     --                   hex2.export
		hex3_export                      : out   std_logic_vector(6 downto 0);                     --                   hex3.export
		led9_export                      : out   std_logic;                                        --                   led9.export
		registers_conduit_nios_redleds   : out   std_logic_vector(7 downto 0);                     -- registers_conduit_nios.redleds
		registers_conduit_nios_greenleds : out   std_logic_vector(7 downto 0);                     --                       .greenleds
		mcu_conduit_motor_motor_pwm      : out   std_logic_vector(3 downto 0);                     --      mcu_conduit_motor.motor_pwm
		mcu_conduit_motor_motor_en       : out   std_logic_vector(1 downto 0)                      --                       .motor_en
  );
END COMPONENT StepperMotorControl;

SIGNAL be_n: STD_LOGIC_VECTOR(1 DOWNTO 0);  --! Byte enable signals
SIGNAL motor_pwm_wire : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL motor_en_wire  : STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN 
  -- RAM
  SRAM_LB_N <= be_n(0);
  SRAM_UB_N <= be_n(1);
  
  LEDG(3) <= motor_pwm_wire(3);
  LEDG(2) <= motor_pwm_wire(1);
  LEDG(1) <= motor_pwm_wire(2);
  LEDG(0) <= motor_pwm_wire(0);

  LEDG(5 DOWNTO 4)	 <= motor_en_wire;
	
  HSMC_RX_P(0)       <= motor_pwm_wire(0);
  HSMC_RX_P(1)       <= motor_pwm_wire(1);
  HSMC_RX_N(0)       <= motor_pwm_wire(2);
  HSMC_RX_N(1)       <= motor_pwm_wire(3);
  HSMC_TX_N(2)       <= motor_en_wire(0);
  HSMC_TX_P(3)       <= motor_en_wire(1);
      
  u0 : COMPONENT StepperMotorControl
    PORT MAP
    (
      reset_reset_n                     => CPU_RESET_n,
      clk_clk                           => CLOCK_50_B5B,
      sram_SRAM_OE_N(0)                 => SRAM_OE_N,
      sram_SRAM_CE_N(0)                 => SRAM_CE_N,
      sram_SRAM_BE_N                    => be_n,
      sram_SRAM_D                       => SRAM_D,
      sram_SRAM_A(18 DOWNTO 1)          => SRAM_A,
      sram_SRAM_WE_N(0)                 => SRAM_WE_N,
      sw_export                         => SW,
      lcd_RS                            => LCD_RS,
      lcd_RW                            => LCD_RW,
      lcd_data                          => LCD_DQ,
      lcd_E                             => LCD_EN,
      key_export                        => KEY,
      hex0_export                       => HEX0,
      hex1_export                       => HEX1,
      hex2_export                       => HEX2,
      hex3_export                       => HEX3,
      led9_export                       => LED9,
		registers_conduit_nios_redleds    => LEDR,
		--registers_conduit_nios_greenleds	 => LEDG
		mcu_conduit_motor_motor_pwm		 => motor_pwm_wire,
		mcu_conduit_motor_motor_en		    => motor_en_wire
    );
END a1;