-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Web Edition"

-- DATE "11/26/2014 01:25:45"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	milestone3 IS
    PORT (
	CLOCK_50_B5B : IN std_logic;
	CPU_RESET_n : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	HSMC_RX_P : BUFFER std_logic_vector(16 DOWNTO 0);
	HSMC_RX_N : BUFFER std_logic_vector(16 DOWNTO 0);
	HSMC_TX_N : BUFFER std_logic_vector(16 DOWNTO 0);
	HSMC_TX_P : BUFFER std_logic_vector(16 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END milestone3;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- HSMC_RX_P[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[3]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[4]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[7]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[8]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[9]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[10]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[11]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[12]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[13]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[14]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[15]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_P[16]	=>  Location: PIN_B24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[0]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[1]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[3]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[6]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[7]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[8]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[9]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[10]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[11]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[12]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[13]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[14]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[15]	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_RX_N[16]	=>  Location: PIN_A24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[2]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[5]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[6]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[7]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[8]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[10]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[11]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[12]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[13]	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[14]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[15]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_N[16]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[0]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[4]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[5]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[7]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[8]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[10]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[11]	=>  Location: PIN_C23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[12]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[13]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[14]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[15]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HSMC_TX_P[16]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CPU_RESET_n	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50_B5B	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF milestone3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50_B5B : std_logic;
SIGNAL ww_CPU_RESET_n : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_HSMC_RX_P : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_HSMC_RX_N : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_HSMC_TX_N : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_HSMC_TX_P : std_logic_vector(16 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_B5B~input_o\ : std_logic;
SIGNAL \CLOCK_50_B5B~inputCLKENA0_outclk\ : std_logic;
SIGNAL \debug_inst|addr_counter[0]~0_combout\ : std_logic;
SIGNAL \CPU_RESET_n~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux10~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux8~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux7~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux9~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector0~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|steps_counter[0]~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~125_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~6\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~1_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey~10_combout\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey.start~q\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey~9_combout\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey.newpress~q\ : std_logic;
SIGNAL \debug_inst|key0_reg~q\ : std_logic;
SIGNAL \debug_inst|key0_reg~0_combout\ : std_logic;
SIGNAL \debug_inst|key0_reg~DUPLICATE_q\ : std_logic;
SIGNAL \debug_inst|Mux12~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~2\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~57_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~58\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~105_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~106\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~61_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~62\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~109_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~110\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~101_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~102\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~97_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~98\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~93_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~94\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~53_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~54\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~49_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~50\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~45_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~46\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~41_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~42\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~81_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~82\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~85_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~86\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~25_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~26\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~77_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~78\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~73_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~74\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~69_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~70\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~65_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~66\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~33_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~34\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~37_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~38\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~29_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~126\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~121_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~122\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~89_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~90\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~117_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~118\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~21_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~22\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~17_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~18\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~9_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~10\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~113_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~114\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~13_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~14\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~5_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal1~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal1~combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~34_cout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~18\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~22\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~feeder_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~26\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~29_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~30\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~2\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~5_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~6\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~10\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~29_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~30\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~81_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~82\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~113_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~114\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~73_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~74\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~85_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~86\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~117_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~118\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~121_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~122\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~77_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~78\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~89_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~90\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~25_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~26\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~69_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~70\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~65_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~66\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~61_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~62\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~57_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~58\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~53_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~54\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~49_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~50\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~45_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~46\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~109_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~110\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~105_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~106\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~101_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~102\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~97_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~98\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~93_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~94\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~33_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~34\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~37_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~38\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~41_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~42\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~1_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~2\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~5_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~6\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~9_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~10\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~13_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~14\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~17_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~18\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add1~21_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector2~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal7~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal7~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector5~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal7~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal7~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal7~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux11~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|motor_pwm[0]~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|motor_pwm[2]~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|motor_pwm[3]~3_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux6~0_combout\ : std_logic;
SIGNAL \register_interface_inst|ctrlReg~0_combout\ : std_logic;
SIGNAL \debug_inst|addr_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \register_interface_inst|speedReg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \debug_inst|addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \motor_control_unit_inst|prescaler_inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|steps_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \debug_inst|data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_interface_inst|ctrlReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \debug_inst|ALT_INV_key0_reg~DUPLICATE_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_CPU_RESET_n~input_o\ : std_logic;
SIGNAL \debug_inst|key0_inst|ALT_INV_STkey.start~q\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \debug_inst|key0_inst|ALT_INV_STkey.newpress~q\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_key0_reg~q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_addr_counter\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \debug_inst|ALT_INV_addr\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.THREE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \register_interface_inst|ALT_INV_ctrlReg\ : std_logic_vector(7 DOWNTO 1);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[0]~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~7_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_2~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_2~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~17_sumout\ : std_logic;

BEGIN

ww_CLOCK_50_B5B <= CLOCK_50_B5B;
ww_CPU_RESET_n <= CPU_RESET_n;
ww_SW <= SW;
ww_KEY <= KEY;
HSMC_RX_P <= ww_HSMC_RX_P;
HSMC_RX_N <= ww_HSMC_RX_N;
HSMC_TX_N <= ww_HSMC_TX_N;
HSMC_TX_P <= ww_HSMC_TX_P;
LEDG <= ww_LEDG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\debug_inst|ALT_INV_key0_reg~DUPLICATE_q\ <= NOT \debug_inst|key0_reg~DUPLICATE_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~DUPLICATE_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_CPU_RESET_n~input_o\ <= NOT \CPU_RESET_n~input_o\;
\debug_inst|key0_inst|ALT_INV_STkey.start~q\ <= NOT \debug_inst|key0_inst|STkey.start~q\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~5_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~4_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\;
\debug_inst|key0_inst|ALT_INV_STkey.newpress~q\ <= NOT \debug_inst|key0_inst|STkey.newpress~q\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~1_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~0_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal1~0_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~3_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~2_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~1_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~1_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~0_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~0_combout\;
\debug_inst|ALT_INV_key0_reg~q\ <= NOT \debug_inst|key0_reg~q\;
\debug_inst|ALT_INV_addr_counter\(0) <= NOT \debug_inst|addr_counter\(0);
\debug_inst|ALT_INV_addr\(0) <= NOT \debug_inst|addr\(0);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.THREE~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~4_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~4_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(4) <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(4);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(3) <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(3);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(2) <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(2);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(1) <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(1);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(0) <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(0);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(8) <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(8);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(7) <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(7);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(6) <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(6);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(5) <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(5);
\register_interface_inst|ALT_INV_ctrlReg\(7) <= NOT \register_interface_inst|ctrlReg\(7);
\register_interface_inst|ALT_INV_ctrlReg\(5) <= NOT \register_interface_inst|ctrlReg\(5);
\register_interface_inst|ALT_INV_ctrlReg\(4) <= NOT \register_interface_inst|ctrlReg\(4);
\register_interface_inst|ALT_INV_ctrlReg\(3) <= NOT \register_interface_inst|ctrlReg\(3);
\register_interface_inst|ALT_INV_ctrlReg\(2) <= NOT \register_interface_inst|ctrlReg\(2);
\register_interface_inst|ALT_INV_ctrlReg\(1) <= NOT \register_interface_inst|ctrlReg\(1);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~1_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~1_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[0]~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|motor_pwm[0]~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~7_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~6_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal7~6_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(7);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(6) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(6);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_2~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(3) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(3);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~5_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal7~5_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(18) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(18);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(19) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(19);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(20) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(20);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(21) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(21);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(22) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(22);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~4_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal7~4_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(9) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(9);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(5) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(5);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(2) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(2);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~3_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal7~3_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(8) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(8);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_2~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(4) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(4);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~2_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal7~2_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(11) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(11);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(12) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(12);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(13) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(13);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(14) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(14);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(15) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(15);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(16) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(16);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(17) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(17);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~1_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(25) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(25);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(24) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(24);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(23) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(23);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(0) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(0);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(1) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(1);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(10) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(10);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(31) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(31);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(30) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(30);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(29) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(29);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(28) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(28);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(27) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(27);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(26) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(26);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(0) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(0);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(1) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(1);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(3) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(3);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(7) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(7);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(14) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(14);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(12) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(12);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(15) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(15);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(16) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(16);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(17) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(17);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(2) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(2);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(23) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(23);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(22) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(22);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(25) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(25);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(26) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(26);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(27) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(27);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(28) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(28);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(13) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(13);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(11) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(11);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(18) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(18);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(19) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(19);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(20) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(20);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(21) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(21);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(30) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(30);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(29) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(29);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(31) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(31);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(24) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(24);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(4) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(4);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(5) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(5);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(8) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(8);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(6) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(6);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(9) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(9);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(10) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(10);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~25_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~17_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\;

-- Location: IOOBUF_X42_Y61_N2
\HSMC_RX_P[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(0));

-- Location: IOOBUF_X34_Y61_N2
\HSMC_RX_P[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(1));

-- Location: IOOBUF_X64_Y61_N2
\HSMC_RX_P[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(2));

-- Location: IOOBUF_X50_Y61_N2
\HSMC_RX_P[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(3));

-- Location: IOOBUF_X66_Y61_N2
\HSMC_RX_P[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(4));

-- Location: IOOBUF_X57_Y61_N2
\HSMC_RX_P[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(5));

-- Location: IOOBUF_X61_Y61_N2
\HSMC_RX_P[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(6));

-- Location: IOOBUF_X36_Y61_N2
\HSMC_RX_P[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(7));

-- Location: IOOBUF_X51_Y61_N2
\HSMC_RX_P[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(8));

-- Location: IOOBUF_X40_Y61_N42
\HSMC_RX_P[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(9));

-- Location: IOOBUF_X32_Y61_N42
\HSMC_RX_P[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(10));

-- Location: IOOBUF_X48_Y61_N42
\HSMC_RX_P[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(11));

-- Location: IOOBUF_X44_Y61_N2
\HSMC_RX_P[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(12));

-- Location: IOOBUF_X55_Y61_N42
\HSMC_RX_P[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(13));

-- Location: IOOBUF_X59_Y61_N2
\HSMC_RX_P[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(14));

-- Location: IOOBUF_X62_Y61_N42
\HSMC_RX_P[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(15));

-- Location: IOOBUF_X65_Y61_N2
\HSMC_RX_P[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_P(16));

-- Location: IOOBUF_X42_Y61_N19
\HSMC_RX_N[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_control_unit_inst|signal_generator_inst|motor_pwm[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(0));

-- Location: IOOBUF_X34_Y61_N19
\HSMC_RX_N[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_control_unit_inst|signal_generator_inst|motor_pwm[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(1));

-- Location: IOOBUF_X64_Y61_N19
\HSMC_RX_N[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(2));

-- Location: IOOBUF_X50_Y61_N19
\HSMC_RX_N[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(3));

-- Location: IOOBUF_X66_Y61_N19
\HSMC_RX_N[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(4));

-- Location: IOOBUF_X57_Y61_N19
\HSMC_RX_N[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(5));

-- Location: IOOBUF_X61_Y61_N19
\HSMC_RX_N[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(6));

-- Location: IOOBUF_X36_Y61_N19
\HSMC_RX_N[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(7));

-- Location: IOOBUF_X51_Y61_N19
\HSMC_RX_N[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(8));

-- Location: IOOBUF_X40_Y61_N59
\HSMC_RX_N[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(9));

-- Location: IOOBUF_X32_Y61_N59
\HSMC_RX_N[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(10));

-- Location: IOOBUF_X48_Y61_N59
\HSMC_RX_N[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(11));

-- Location: IOOBUF_X44_Y61_N19
\HSMC_RX_N[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(12));

-- Location: IOOBUF_X55_Y61_N59
\HSMC_RX_N[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(13));

-- Location: IOOBUF_X59_Y61_N19
\HSMC_RX_N[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(14));

-- Location: IOOBUF_X62_Y61_N59
\HSMC_RX_N[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(15));

-- Location: IOOBUF_X65_Y61_N19
\HSMC_RX_N[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_RX_N(16));

-- Location: IOOBUF_X40_Y61_N93
\HSMC_TX_N[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(0));

-- Location: IOOBUF_X46_Y61_N53
\HSMC_TX_N[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(1));

-- Location: IOOBUF_X44_Y61_N53
\HSMC_TX_N[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(2));

-- Location: IOOBUF_X36_Y61_N53
\HSMC_TX_N[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(3));

-- Location: IOOBUF_X42_Y61_N53
\HSMC_TX_N[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(4));

-- Location: IOOBUF_X61_Y61_N53
\HSMC_TX_N[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(5));

-- Location: IOOBUF_X50_Y61_N53
\HSMC_TX_N[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(6));

-- Location: IOOBUF_X64_Y61_N53
\HSMC_TX_N[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(7));

-- Location: IOOBUF_X34_Y61_N53
\HSMC_TX_N[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(8));

-- Location: IOOBUF_X48_Y61_N93
\HSMC_TX_N[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(9));

-- Location: IOOBUF_X38_Y61_N53
\HSMC_TX_N[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(10));

-- Location: IOOBUF_X66_Y61_N53
\HSMC_TX_N[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(11));

-- Location: IOOBUF_X51_Y61_N53
\HSMC_TX_N[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(12));

-- Location: IOOBUF_X65_Y61_N53
\HSMC_TX_N[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(13));

-- Location: IOOBUF_X53_Y61_N53
\HSMC_TX_N[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(14));

-- Location: IOOBUF_X59_Y61_N53
\HSMC_TX_N[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(15));

-- Location: IOOBUF_X62_Y61_N93
\HSMC_TX_N[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_N(16));

-- Location: IOOBUF_X40_Y61_N76
\HSMC_TX_P[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(0));

-- Location: IOOBUF_X46_Y61_N36
\HSMC_TX_P[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(1));

-- Location: IOOBUF_X44_Y61_N36
\HSMC_TX_P[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(2));

-- Location: IOOBUF_X36_Y61_N36
\HSMC_TX_P[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(3));

-- Location: IOOBUF_X42_Y61_N36
\HSMC_TX_P[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(4));

-- Location: IOOBUF_X61_Y61_N36
\HSMC_TX_P[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(5));

-- Location: IOOBUF_X50_Y61_N36
\HSMC_TX_P[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(6));

-- Location: IOOBUF_X64_Y61_N36
\HSMC_TX_P[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(7));

-- Location: IOOBUF_X34_Y61_N36
\HSMC_TX_P[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(8));

-- Location: IOOBUF_X48_Y61_N76
\HSMC_TX_P[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(9));

-- Location: IOOBUF_X38_Y61_N36
\HSMC_TX_P[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(10));

-- Location: IOOBUF_X66_Y61_N36
\HSMC_TX_P[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(11));

-- Location: IOOBUF_X51_Y61_N36
\HSMC_TX_P[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(12));

-- Location: IOOBUF_X65_Y61_N36
\HSMC_TX_P[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(13));

-- Location: IOOBUF_X53_Y61_N36
\HSMC_TX_P[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(14));

-- Location: IOOBUF_X59_Y61_N36
\HSMC_TX_P[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(15));

-- Location: IOOBUF_X62_Y61_N76
\HSMC_TX_P[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HSMC_TX_P(16));

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|speedReg\(0),
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X10_Y61_N59
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|speedReg\(1),
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X10_Y61_N76
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|speedReg\(2),
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X10_Y61_N93
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X21_Y61_N36
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X21_Y61_N53
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X19_Y61_N2
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X19_Y61_N19
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOOBUF_X14_Y61_N53
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|ctrlReg\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X15_Y61_N36
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|ctrlReg\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X15_Y61_N53
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|ctrlReg\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|ctrlReg\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y61_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|ctrlReg\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X12_Y61_N53
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|ctrlReg\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X12_Y61_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|ctrlReg\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X14_Y61_N2
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \register_interface_inst|ctrlReg\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOIBUF_X68_Y22_N44
\CLOCK_50_B5B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B5B,
	o => \CLOCK_50_B5B~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50_B5B~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_B5B~input_o\,
	outclk => \CLOCK_50_B5B~inputCLKENA0_outclk\);

-- Location: LABCELL_X27_Y26_N42
\debug_inst|addr_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|addr_counter[0]~0_combout\ = ( !\debug_inst|addr_counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \debug_inst|ALT_INV_addr_counter\(0),
	combout => \debug_inst|addr_counter[0]~0_combout\);

-- Location: IOIBUF_X68_Y12_N55
\CPU_RESET_n~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CPU_RESET_n,
	o => \CPU_RESET_n~input_o\);

-- Location: FF_X27_Y26_N43
\debug_inst|addr_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|addr_counter[0]~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|addr_counter\(0));

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X27_Y26_N57
\debug_inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux10~0_combout\ = ( \SW[9]~input_o\ & ( (\SW[2]~input_o\) # (\debug_inst|addr_counter\(0)) ) ) # ( !\SW[9]~input_o\ & ( (!\debug_inst|addr_counter\(0) & \SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \debug_inst|ALT_INV_addr_counter\(0),
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \debug_inst|Mux10~0_combout\);

-- Location: FF_X27_Y26_N59
\debug_inst|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|Mux10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|data\(2));

-- Location: FF_X27_Y26_N50
\debug_inst|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|addr_counter\(0),
	sload => VCC,
	ena => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|addr\(0));

-- Location: FF_X27_Y26_N32
\register_interface_inst|ctrlReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(2),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|ALT_INV_addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(2));

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X27_Y26_N9
\debug_inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux8~0_combout\ = (!\debug_inst|addr_counter\(0) & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_addr_counter\(0),
	datad => \ALT_INV_SW[4]~input_o\,
	combout => \debug_inst|Mux8~0_combout\);

-- Location: FF_X27_Y26_N10
\debug_inst|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|Mux8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|data\(4));

-- Location: FF_X27_Y26_N34
\register_interface_inst|ctrlReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(4),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|ALT_INV_addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(4));

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X27_Y26_N6
\debug_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux7~0_combout\ = (!\debug_inst|addr_counter\(0) & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_addr_counter\(0),
	datac => \ALT_INV_SW[5]~input_o\,
	combout => \debug_inst|Mux7~0_combout\);

-- Location: FF_X27_Y26_N8
\debug_inst|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|Mux7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|data\(5));

-- Location: FF_X27_Y26_N37
\register_interface_inst|ctrlReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(5),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|ALT_INV_addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(5));

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X27_Y26_N0
\debug_inst|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux9~0_combout\ = (\SW[3]~input_o\ & !\debug_inst|addr_counter\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \debug_inst|ALT_INV_addr_counter\(0),
	combout => \debug_inst|Mux9~0_combout\);

-- Location: FF_X27_Y26_N1
\debug_inst|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|Mux9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|data\(3));

-- Location: FF_X43_Y29_N46
\register_interface_inst|ctrlReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(3),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|ALT_INV_addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(3));

-- Location: LABCELL_X31_Y26_N30
\motor_control_unit_inst|signal_generator_inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector0~0_combout\ = ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( \register_interface_inst|ctrlReg\(3) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & 
-- ( \register_interface_inst|ctrlReg\(3) & ( !\register_interface_inst|ctrlReg\(2) ) ) ) # ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( !\register_interface_inst|ctrlReg\(3) & ( \register_interface_inst|ctrlReg\(2) ) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( !\register_interface_inst|ctrlReg\(3) & ( \register_interface_inst|ctrlReg\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(3),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector0~0_combout\);

-- Location: LABCELL_X30_Y27_N42
\motor_control_unit_inst|signal_generator_inst|steps_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|steps_counter[0]~0_combout\ = !\motor_control_unit_inst|signal_generator_inst|steps_counter\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(0),
	combout => \motor_control_unit_inst|signal_generator_inst|steps_counter[0]~0_combout\);

-- Location: LABCELL_X43_Y30_N0
\motor_control_unit_inst|prescaler_inst|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~125_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \motor_control_unit_inst|prescaler_inst|Add0~126\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(0),
	cin => GND,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~125_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~126\);

-- Location: LABCELL_X43_Y30_N27
\motor_control_unit_inst|prescaler_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~5_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(9) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~14\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~6\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(9) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(9),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~14\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~5_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~6\);

-- Location: LABCELL_X43_Y30_N30
\motor_control_unit_inst|prescaler_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~1_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(10) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~6\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~2\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(10) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(10),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~6\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~1_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~2\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LABCELL_X31_Y26_N36
\debug_inst|key0_inst|STkey~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|key0_inst|STkey~10_combout\ = ( \KEY[0]~input_o\ & ( \debug_inst|key0_inst|STkey.newpress~q\ ) ) # ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000011110000111111111111111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \debug_inst|key0_inst|ALT_INV_STkey.newpress~q\,
	datae => \ALT_INV_KEY[0]~input_o\,
	combout => \debug_inst|key0_inst|STkey~10_combout\);

-- Location: FF_X31_Y26_N38
\debug_inst|key0_inst|STkey.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|key0_inst|STkey~10_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|key0_inst|STkey.start~q\);

-- Location: LABCELL_X31_Y26_N54
\debug_inst|key0_inst|STkey~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|key0_inst|STkey~9_combout\ = (!\KEY[0]~input_o\ & !\debug_inst|key0_inst|STkey.start~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[0]~input_o\,
	datac => \debug_inst|key0_inst|ALT_INV_STkey.start~q\,
	combout => \debug_inst|key0_inst|STkey~9_combout\);

-- Location: FF_X31_Y26_N56
\debug_inst|key0_inst|STkey.newpress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~input_o\,
	d => \debug_inst|key0_inst|STkey~9_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|key0_inst|STkey.newpress~q\);

-- Location: FF_X30_Y26_N32
\debug_inst|key0_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debug_inst|key0_inst|STkey.newpress~q\,
	asdata => \debug_inst|key0_reg~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|key0_reg~q\);

-- Location: LABCELL_X30_Y26_N33
\debug_inst|key0_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|key0_reg~0_combout\ = !\debug_inst|key0_reg~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \debug_inst|ALT_INV_key0_reg~q\,
	combout => \debug_inst|key0_reg~0_combout\);

-- Location: FF_X30_Y26_N31
\debug_inst|key0_reg~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debug_inst|key0_inst|STkey.newpress~q\,
	asdata => \debug_inst|key0_reg~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|key0_reg~DUPLICATE_q\);

-- Location: LABCELL_X27_Y26_N12
\debug_inst|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux12~0_combout\ = ( \debug_inst|key0_reg~DUPLICATE_q\ & ( (!\debug_inst|addr_counter\(0)) # (\SW[7]~input_o\) ) ) # ( !\debug_inst|key0_reg~DUPLICATE_q\ & ( (\debug_inst|addr_counter\(0) & \SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_addr_counter\(0),
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \debug_inst|ALT_INV_key0_reg~DUPLICATE_q\,
	combout => \debug_inst|Mux12~0_combout\);

-- Location: FF_X27_Y26_N14
\debug_inst|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|Mux12~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|data\(0));

-- Location: FF_X43_Y29_N53
\register_interface_inst|ctrlReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(0),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|ALT_INV_addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(0));

-- Location: FF_X43_Y30_N32
\motor_control_unit_inst|prescaler_inst|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~1_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(10));

-- Location: LABCELL_X43_Y30_N33
\motor_control_unit_inst|prescaler_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~57_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(11) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~2\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~58\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(11) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(11),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~2\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~57_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~58\);

-- Location: FF_X43_Y30_N34
\motor_control_unit_inst|prescaler_inst|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~57_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(11));

-- Location: LABCELL_X43_Y30_N36
\motor_control_unit_inst|prescaler_inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~105_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(12) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~58\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~106\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(12) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(12),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~58\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~105_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~106\);

-- Location: FF_X43_Y30_N38
\motor_control_unit_inst|prescaler_inst|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~105_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(12));

-- Location: LABCELL_X43_Y30_N39
\motor_control_unit_inst|prescaler_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~61_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(13) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~106\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~62\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(13) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(13),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~106\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~61_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~62\);

-- Location: FF_X43_Y30_N40
\motor_control_unit_inst|prescaler_inst|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~61_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(13));

-- Location: LABCELL_X43_Y30_N42
\motor_control_unit_inst|prescaler_inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~109_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(14) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~62\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~110\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(14) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(14),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~62\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~109_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~110\);

-- Location: FF_X43_Y30_N44
\motor_control_unit_inst|prescaler_inst|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~109_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(14));

-- Location: LABCELL_X43_Y30_N45
\motor_control_unit_inst|prescaler_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~101_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(15) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~110\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~102\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(15) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(15),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~110\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~101_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~102\);

-- Location: FF_X43_Y30_N47
\motor_control_unit_inst|prescaler_inst|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~101_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(15));

-- Location: LABCELL_X43_Y30_N48
\motor_control_unit_inst|prescaler_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~97_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(16) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~102\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~98\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(16) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(16),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~102\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~97_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~98\);

-- Location: FF_X43_Y30_N50
\motor_control_unit_inst|prescaler_inst|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~97_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(16));

-- Location: LABCELL_X43_Y30_N51
\motor_control_unit_inst|prescaler_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~93_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(17) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~98\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~94\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(17) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(17),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~98\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~93_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~94\);

-- Location: FF_X43_Y30_N53
\motor_control_unit_inst|prescaler_inst|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~93_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(17));

-- Location: LABCELL_X43_Y30_N54
\motor_control_unit_inst|prescaler_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~53_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(18) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~94\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~54\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(18) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(18),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~94\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~53_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~54\);

-- Location: FF_X43_Y30_N56
\motor_control_unit_inst|prescaler_inst|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~53_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(18));

-- Location: LABCELL_X43_Y30_N57
\motor_control_unit_inst|prescaler_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~49_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(19) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~54\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~50\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(19) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(19),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~54\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~49_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~50\);

-- Location: FF_X43_Y30_N59
\motor_control_unit_inst|prescaler_inst|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~49_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(19));

-- Location: LABCELL_X43_Y29_N0
\motor_control_unit_inst|prescaler_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~45_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(20) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~50\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~46\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(20) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(20),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~50\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~45_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~46\);

-- Location: FF_X43_Y29_N1
\motor_control_unit_inst|prescaler_inst|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~45_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(20));

-- Location: LABCELL_X43_Y29_N3
\motor_control_unit_inst|prescaler_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~41_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(21) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~46\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~42\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(21) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(21),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~46\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~41_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~42\);

-- Location: FF_X43_Y29_N5
\motor_control_unit_inst|prescaler_inst|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~41_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(21));

-- Location: LABCELL_X43_Y29_N6
\motor_control_unit_inst|prescaler_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~81_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(22) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~42\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~82\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(22) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(22),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~42\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~81_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~82\);

-- Location: FF_X43_Y29_N7
\motor_control_unit_inst|prescaler_inst|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~81_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(22));

-- Location: LABCELL_X43_Y29_N9
\motor_control_unit_inst|prescaler_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~85_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(23) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~82\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~86\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(23) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(23),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~82\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~85_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~86\);

-- Location: FF_X43_Y29_N11
\motor_control_unit_inst|prescaler_inst|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~85_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(23));

-- Location: LABCELL_X43_Y29_N12
\motor_control_unit_inst|prescaler_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~25_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(24) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~86\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~26\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(24) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(24),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~86\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~25_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~26\);

-- Location: FF_X43_Y29_N14
\motor_control_unit_inst|prescaler_inst|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~25_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(24));

-- Location: LABCELL_X43_Y29_N15
\motor_control_unit_inst|prescaler_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~77_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(25) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~26\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~78\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(25) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(25),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~26\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~77_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~78\);

-- Location: FF_X43_Y29_N17
\motor_control_unit_inst|prescaler_inst|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~77_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(25));

-- Location: LABCELL_X43_Y29_N18
\motor_control_unit_inst|prescaler_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~73_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(26) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~78\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~74\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(26) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(26),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~78\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~73_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~74\);

-- Location: FF_X43_Y29_N20
\motor_control_unit_inst|prescaler_inst|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~73_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(26));

-- Location: LABCELL_X43_Y29_N21
\motor_control_unit_inst|prescaler_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~69_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(27) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~74\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~70\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(27) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(27),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~74\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~69_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~70\);

-- Location: FF_X43_Y29_N22
\motor_control_unit_inst|prescaler_inst|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~69_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(27));

-- Location: LABCELL_X43_Y29_N24
\motor_control_unit_inst|prescaler_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~65_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(28) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~70\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~66\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(28) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(28),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~70\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~65_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~66\);

-- Location: FF_X43_Y29_N26
\motor_control_unit_inst|prescaler_inst|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~65_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(28));

-- Location: LABCELL_X43_Y29_N27
\motor_control_unit_inst|prescaler_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~33_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(29) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~66\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~34\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(29) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(29),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~66\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~33_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~34\);

-- Location: FF_X43_Y29_N29
\motor_control_unit_inst|prescaler_inst|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~33_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(29));

-- Location: LABCELL_X43_Y29_N30
\motor_control_unit_inst|prescaler_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~37_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(30) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~34\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~38\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(30) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(30),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~34\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~37_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~38\);

-- Location: FF_X43_Y29_N32
\motor_control_unit_inst|prescaler_inst|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~37_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(30));

-- Location: LABCELL_X43_Y29_N33
\motor_control_unit_inst|prescaler_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~29_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(31) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(31),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~38\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~29_sumout\);

-- Location: FF_X43_Y29_N35
\motor_control_unit_inst|prescaler_inst|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~29_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(31));

-- Location: LABCELL_X43_Y29_N36
\motor_control_unit_inst|prescaler_inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~1_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(29) & ( !\motor_control_unit_inst|prescaler_inst|counter\(24) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(31) & 
-- (!\motor_control_unit_inst|prescaler_inst|counter\(4) & (!\motor_control_unit_inst|prescaler_inst|counter\(5) & !\motor_control_unit_inst|prescaler_inst|counter\(30)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(31),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(4),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(5),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(30),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(29),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(24),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~1_combout\);

-- Location: LABCELL_X43_Y29_N42
\motor_control_unit_inst|prescaler_inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(18) & ( !\motor_control_unit_inst|prescaler_inst|counter\(19) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(21) & 
-- (!\motor_control_unit_inst|prescaler_inst|counter\(20) & (!\motor_control_unit_inst|prescaler_inst|counter\(11) & !\motor_control_unit_inst|prescaler_inst|counter\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(21),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(20),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(11),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(13),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(18),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(19),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\);

-- Location: LABCELL_X43_Y29_N48
\motor_control_unit_inst|prescaler_inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(22) & ( !\motor_control_unit_inst|prescaler_inst|counter\(25) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(28) & 
-- (!\motor_control_unit_inst|prescaler_inst|counter\(23) & (!\motor_control_unit_inst|prescaler_inst|counter\(26) & !\motor_control_unit_inst|prescaler_inst|counter\(27)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(28),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(23),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(26),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(27),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(22),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(25),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\);

-- Location: MLABCELL_X42_Y29_N6
\motor_control_unit_inst|prescaler_inst|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\ = (\motor_control_unit_inst|prescaler_inst|counter\(3) & (\motor_control_unit_inst|prescaler_inst|counter\(0) & (\motor_control_unit_inst|prescaler_inst|counter\(7) & 
-- \motor_control_unit_inst|prescaler_inst|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(3),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(0),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(7),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(1),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\);

-- Location: MLABCELL_X42_Y29_N18
\motor_control_unit_inst|prescaler_inst|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\ = ( \motor_control_unit_inst|prescaler_inst|counter\(14) & ( \motor_control_unit_inst|prescaler_inst|counter\(15) & ( (\motor_control_unit_inst|prescaler_inst|counter\(17) & 
-- (\motor_control_unit_inst|prescaler_inst|counter\(16) & (\motor_control_unit_inst|prescaler_inst|counter\(12) & \motor_control_unit_inst|prescaler_inst|counter\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(17),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(16),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(12),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(2),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(14),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(15),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\);

-- Location: LABCELL_X43_Y29_N57
\motor_control_unit_inst|prescaler_inst|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\ = ( \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\ & ( \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\ & ( (\motor_control_unit_inst|prescaler_inst|Equal0~0_combout\ & 
-- (\motor_control_unit_inst|prescaler_inst|Equal0~1_combout\ & (\motor_control_unit_inst|prescaler_inst|Equal0~2_combout\ & \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~0_combout\,
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~1_combout\,
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~2_combout\,
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~3_combout\,
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~5_combout\,
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~4_combout\,
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\);

-- Location: FF_X43_Y30_N2
\motor_control_unit_inst|prescaler_inst|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~125_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(0));

-- Location: LABCELL_X43_Y30_N3
\motor_control_unit_inst|prescaler_inst|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~121_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(1) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~126\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~122\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(1) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(1),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~126\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~121_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~122\);

-- Location: FF_X43_Y30_N5
\motor_control_unit_inst|prescaler_inst|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~121_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(1));

-- Location: LABCELL_X43_Y30_N6
\motor_control_unit_inst|prescaler_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~89_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(2) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~122\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~90\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(2) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(2),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~122\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~89_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~90\);

-- Location: FF_X43_Y30_N8
\motor_control_unit_inst|prescaler_inst|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~89_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(2));

-- Location: LABCELL_X43_Y30_N9
\motor_control_unit_inst|prescaler_inst|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~117_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(3) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~90\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~118\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(3) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(3),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~90\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~117_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~118\);

-- Location: FF_X43_Y30_N11
\motor_control_unit_inst|prescaler_inst|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~117_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(3));

-- Location: LABCELL_X43_Y30_N12
\motor_control_unit_inst|prescaler_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~21_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(4) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~118\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~22\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(4) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(4),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~118\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~21_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~22\);

-- Location: FF_X43_Y30_N14
\motor_control_unit_inst|prescaler_inst|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~21_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(4));

-- Location: LABCELL_X43_Y30_N15
\motor_control_unit_inst|prescaler_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~17_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(5) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~22\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~18\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(5) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(5),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~22\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~17_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~18\);

-- Location: FF_X43_Y30_N17
\motor_control_unit_inst|prescaler_inst|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~17_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(5));

-- Location: LABCELL_X43_Y30_N18
\motor_control_unit_inst|prescaler_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~9_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(6) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~18\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~10\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(6) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(6),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~18\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~9_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~10\);

-- Location: FF_X43_Y30_N19
\motor_control_unit_inst|prescaler_inst|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~9_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(6));

-- Location: LABCELL_X43_Y30_N21
\motor_control_unit_inst|prescaler_inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~113_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(7) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~10\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~114\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(7) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(7),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~10\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~113_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~114\);

-- Location: FF_X43_Y30_N23
\motor_control_unit_inst|prescaler_inst|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~113_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(7));

-- Location: LABCELL_X43_Y30_N24
\motor_control_unit_inst|prescaler_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~13_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(8) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~114\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~14\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(8) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(8),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~114\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~13_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~14\);

-- Location: FF_X43_Y30_N26
\motor_control_unit_inst|prescaler_inst|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~13_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(8));

-- Location: FF_X43_Y30_N28
\motor_control_unit_inst|prescaler_inst|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|prescaler_inst|Add0~5_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	sclr => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\,
	ena => \register_interface_inst|ctrlReg\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|prescaler_inst|counter\(9));

-- Location: MLABCELL_X42_Y29_N30
\motor_control_unit_inst|prescaler_inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~0_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(6) & ( !\motor_control_unit_inst|prescaler_inst|counter\(8) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(9) & 
-- !\motor_control_unit_inst|prescaler_inst|counter\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(9),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(10),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(6),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(8),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~0_combout\);

-- Location: MLABCELL_X42_Y29_N9
\motor_control_unit_inst|prescaler_inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(0) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(3) & (!\motor_control_unit_inst|prescaler_inst|counter\(1) & 
-- !\motor_control_unit_inst|prescaler_inst|counter\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(3),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(1),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(7),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(0),
	combout => \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\);

-- Location: MLABCELL_X42_Y29_N24
\motor_control_unit_inst|prescaler_inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal1~0_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(16) & ( !\motor_control_unit_inst|prescaler_inst|counter\(15) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(12) & 
-- (!\motor_control_unit_inst|prescaler_inst|counter\(2) & (!\motor_control_unit_inst|prescaler_inst|counter\(17) & !\motor_control_unit_inst|prescaler_inst|counter\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(12),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(2),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(17),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(14),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(16),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(15),
	combout => \motor_control_unit_inst|prescaler_inst|Equal1~0_combout\);

-- Location: LABCELL_X43_Y29_N54
\motor_control_unit_inst|prescaler_inst|Equal1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal1~combout\ = LCELL(( \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\ & ( \motor_control_unit_inst|prescaler_inst|Equal1~0_combout\ & ( (\motor_control_unit_inst|prescaler_inst|Equal0~0_combout\ & 
-- (\motor_control_unit_inst|prescaler_inst|Equal0~1_combout\ & (\motor_control_unit_inst|prescaler_inst|Equal0~3_combout\ & \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~0_combout\,
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~1_combout\,
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~3_combout\,
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~2_combout\,
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~1_combout\,
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~0_combout\,
	combout => \motor_control_unit_inst|prescaler_inst|Equal1~combout\);

-- Location: MLABCELL_X47_Y27_N21
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~0_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(0),
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~0_combout\);

-- Location: FF_X47_Y27_N31
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(0));

-- Location: MLABCELL_X47_Y27_N30
\motor_control_unit_inst|signal_generator_inst|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~34_cout\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(0),
	cin => GND,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~34_cout\);

-- Location: MLABCELL_X47_Y27_N33
\motor_control_unit_inst|signal_generator_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\ = SUM(( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(1) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~34_cout\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~18\ = CARRY(( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(1) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(1),
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~34_cout\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~18\);

-- Location: MLABCELL_X47_Y27_N18
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~1_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~17_sumout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~1_combout\);

-- Location: FF_X47_Y27_N20
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(1));

-- Location: MLABCELL_X47_Y27_N36
\motor_control_unit_inst|signal_generator_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(2) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~18\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~22\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(2) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(2),
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~18\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~22\);

-- Location: FF_X47_Y27_N26
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(2));

-- Location: MLABCELL_X47_Y27_N39
\motor_control_unit_inst|signal_generator_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~DUPLICATE_q\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~22\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~26\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~DUPLICATE_q\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~DUPLICATE_q\,
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~22\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~26\);

-- Location: MLABCELL_X47_Y27_N27
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~feeder_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~25_sumout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~feeder_combout\);

-- Location: FF_X47_Y27_N29
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~DUPLICATE_q\);

-- Location: MLABCELL_X47_Y27_N42
\motor_control_unit_inst|signal_generator_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~29_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(4) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~26\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~30\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(4) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(4),
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~26\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~29_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~30\);

-- Location: FF_X47_Y27_N7
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add0~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(4));

-- Location: MLABCELL_X47_Y27_N45
\motor_control_unit_inst|signal_generator_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(5) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~30\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~2\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(5) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(5),
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~30\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~2\);

-- Location: FF_X47_Y27_N11
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(5));

-- Location: MLABCELL_X47_Y27_N48
\motor_control_unit_inst|signal_generator_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~5_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(6) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~2\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~6\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(6) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(6),
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~2\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~5_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~6\);

-- Location: FF_X47_Y27_N59
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add0~5_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(6));

-- Location: FF_X47_Y27_N28
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(3));

-- Location: MLABCELL_X47_Y27_N6
\motor_control_unit_inst|signal_generator_inst|Equal6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~0_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(4) & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(0) & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(2) & (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(3) & \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(2),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(3),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(1),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(4),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(0),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~0_combout\);

-- Location: MLABCELL_X47_Y27_N51
\motor_control_unit_inst|signal_generator_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(7) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~6\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~10\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(7) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(7),
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~6\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~10\);

-- Location: FF_X47_Y27_N17
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(7));

-- Location: MLABCELL_X47_Y27_N54
\motor_control_unit_inst|signal_generator_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(8) ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(8),
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~10\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\);

-- Location: FF_X47_Y27_N14
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(8));

-- Location: MLABCELL_X47_Y27_N12
\motor_control_unit_inst|signal_generator_inst|Equal6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(8) & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(5) & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(6) & (\motor_control_unit_inst|signal_generator_inst|Equal6~0_combout\ & !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter\(7))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(6),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~0_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(7),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(8),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter\(5),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\);

-- Location: FF_X30_Y27_N43
\motor_control_unit_inst|signal_generator_inst|steps_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|steps_counter[0]~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(0));

-- Location: LABCELL_X30_Y28_N0
\motor_control_unit_inst|signal_generator_inst|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~29_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(1) ) + ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(0) ) + ( !VCC ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~30\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(1) ) + ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(0),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(1),
	cin => GND,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~29_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~30\);

-- Location: FF_X30_Y28_N1
\motor_control_unit_inst|signal_generator_inst|steps_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~29_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(1));

-- Location: LABCELL_X30_Y28_N3
\motor_control_unit_inst|signal_generator_inst|Add1~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~81_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(2) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~30\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~82\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(2) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(2),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~30\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~81_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~82\);

-- Location: FF_X30_Y28_N4
\motor_control_unit_inst|signal_generator_inst|steps_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~81_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(2));

-- Location: LABCELL_X30_Y28_N6
\motor_control_unit_inst|signal_generator_inst|Add1~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~113_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(3) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~82\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~114\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(3) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(3),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~82\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~113_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~114\);

-- Location: FF_X30_Y28_N7
\motor_control_unit_inst|signal_generator_inst|steps_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~113_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(3));

-- Location: LABCELL_X30_Y28_N9
\motor_control_unit_inst|signal_generator_inst|Add1~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~73_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(4) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~114\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~74\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(4) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(4),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~114\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~73_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~74\);

-- Location: FF_X30_Y28_N10
\motor_control_unit_inst|signal_generator_inst|steps_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~73_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(4));

-- Location: LABCELL_X30_Y28_N12
\motor_control_unit_inst|signal_generator_inst|Add1~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~85_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(5) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~74\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~86\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(5) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(5),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~74\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~85_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~86\);

-- Location: FF_X30_Y28_N13
\motor_control_unit_inst|signal_generator_inst|steps_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~85_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(5));

-- Location: LABCELL_X30_Y28_N15
\motor_control_unit_inst|signal_generator_inst|Add1~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~117_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(6) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~86\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~118\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(6) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(6),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~86\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~117_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~118\);

-- Location: FF_X30_Y28_N17
\motor_control_unit_inst|signal_generator_inst|steps_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~117_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(6));

-- Location: LABCELL_X30_Y28_N18
\motor_control_unit_inst|signal_generator_inst|Add1~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~121_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(7) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~118\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~122\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(7) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~118\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~121_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~122\);

-- Location: FF_X30_Y28_N19
\motor_control_unit_inst|signal_generator_inst|steps_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~121_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(7));

-- Location: LABCELL_X30_Y28_N21
\motor_control_unit_inst|signal_generator_inst|Add1~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~77_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(8) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~122\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~78\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(8) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(8),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~122\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~77_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~78\);

-- Location: FF_X30_Y28_N22
\motor_control_unit_inst|signal_generator_inst|steps_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~77_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(8));

-- Location: LABCELL_X30_Y28_N24
\motor_control_unit_inst|signal_generator_inst|Add1~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~89_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(9) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~78\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~90\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(9) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(9),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~78\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~89_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~90\);

-- Location: FF_X30_Y28_N25
\motor_control_unit_inst|signal_generator_inst|steps_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~89_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(9));

-- Location: LABCELL_X30_Y28_N27
\motor_control_unit_inst|signal_generator_inst|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~25_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(10) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~90\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~26\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(10) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(10),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~90\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~25_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~26\);

-- Location: FF_X30_Y28_N28
\motor_control_unit_inst|signal_generator_inst|steps_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~25_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(10));

-- Location: LABCELL_X30_Y28_N30
\motor_control_unit_inst|signal_generator_inst|Add1~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~69_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(11) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~26\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~70\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(11) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(11),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~26\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~69_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~70\);

-- Location: FF_X30_Y28_N31
\motor_control_unit_inst|signal_generator_inst|steps_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~69_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(11));

-- Location: LABCELL_X30_Y28_N33
\motor_control_unit_inst|signal_generator_inst|Add1~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~65_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(12) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~70\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~66\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(12) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(12),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~70\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~65_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~66\);

-- Location: FF_X30_Y28_N34
\motor_control_unit_inst|signal_generator_inst|steps_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~65_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(12));

-- Location: LABCELL_X30_Y28_N36
\motor_control_unit_inst|signal_generator_inst|Add1~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~61_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(13) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~66\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~62\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(13) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(13),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~66\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~61_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~62\);

-- Location: FF_X30_Y28_N37
\motor_control_unit_inst|signal_generator_inst|steps_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~61_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(13));

-- Location: LABCELL_X30_Y28_N39
\motor_control_unit_inst|signal_generator_inst|Add1~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~57_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(14) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~62\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~58\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(14) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(14),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~62\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~57_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~58\);

-- Location: FF_X30_Y28_N41
\motor_control_unit_inst|signal_generator_inst|steps_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~57_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(14));

-- Location: LABCELL_X30_Y28_N42
\motor_control_unit_inst|signal_generator_inst|Add1~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~53_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(15) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~58\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~54\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(15) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(15),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~58\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~53_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~54\);

-- Location: FF_X30_Y28_N44
\motor_control_unit_inst|signal_generator_inst|steps_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~53_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(15));

-- Location: LABCELL_X30_Y28_N45
\motor_control_unit_inst|signal_generator_inst|Add1~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~49_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(16) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~54\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~50\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(16) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(16),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~54\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~49_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~50\);

-- Location: FF_X30_Y28_N46
\motor_control_unit_inst|signal_generator_inst|steps_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~49_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(16));

-- Location: LABCELL_X30_Y28_N48
\motor_control_unit_inst|signal_generator_inst|Add1~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~45_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(17) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~50\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~46\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(17) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(17),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~50\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~45_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~46\);

-- Location: FF_X30_Y28_N49
\motor_control_unit_inst|signal_generator_inst|steps_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~45_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(17));

-- Location: LABCELL_X30_Y28_N51
\motor_control_unit_inst|signal_generator_inst|Add1~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~109_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(18) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~46\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~110\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(18) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(18),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~46\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~109_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~110\);

-- Location: FF_X30_Y28_N52
\motor_control_unit_inst|signal_generator_inst|steps_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~109_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(18));

-- Location: LABCELL_X30_Y28_N54
\motor_control_unit_inst|signal_generator_inst|Add1~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~105_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(19) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~110\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~106\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(19) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(19),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~110\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~105_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~106\);

-- Location: FF_X30_Y28_N56
\motor_control_unit_inst|signal_generator_inst|steps_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~105_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(19));

-- Location: LABCELL_X30_Y28_N57
\motor_control_unit_inst|signal_generator_inst|Add1~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~101_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(20) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~106\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~102\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(20) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(20),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~106\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~101_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~102\);

-- Location: FF_X30_Y28_N58
\motor_control_unit_inst|signal_generator_inst|steps_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~101_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(20));

-- Location: LABCELL_X30_Y27_N0
\motor_control_unit_inst|signal_generator_inst|Add1~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~97_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(21) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~102\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~98\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(21) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(21),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~102\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~97_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~98\);

-- Location: FF_X30_Y27_N2
\motor_control_unit_inst|signal_generator_inst|steps_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~97_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(21));

-- Location: LABCELL_X30_Y27_N3
\motor_control_unit_inst|signal_generator_inst|Add1~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~93_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(22) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~98\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~94\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(22) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(22),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~98\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~93_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~94\);

-- Location: FF_X30_Y27_N5
\motor_control_unit_inst|signal_generator_inst|steps_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~93_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(22));

-- Location: LABCELL_X30_Y27_N6
\motor_control_unit_inst|signal_generator_inst|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~33_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(23) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~94\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~34\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(23) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(23),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~94\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~33_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~34\);

-- Location: FF_X30_Y27_N8
\motor_control_unit_inst|signal_generator_inst|steps_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~33_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(23));

-- Location: LABCELL_X30_Y27_N9
\motor_control_unit_inst|signal_generator_inst|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~37_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(24) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~34\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~38\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(24) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(24),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~34\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~37_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~38\);

-- Location: FF_X30_Y27_N10
\motor_control_unit_inst|signal_generator_inst|steps_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~37_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(24));

-- Location: LABCELL_X30_Y27_N12
\motor_control_unit_inst|signal_generator_inst|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~41_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(25) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~38\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~42\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(25) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(25),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~38\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~41_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~42\);

-- Location: FF_X30_Y27_N14
\motor_control_unit_inst|signal_generator_inst|steps_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~41_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(25));

-- Location: LABCELL_X30_Y27_N48
\motor_control_unit_inst|signal_generator_inst|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(0) & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(1) & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(24) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(25) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(10) & 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(24),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(25),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(10),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(23),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(0),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(1),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\);

-- Location: LABCELL_X30_Y27_N15
\motor_control_unit_inst|signal_generator_inst|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~1_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(26) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~42\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~2\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(26) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(26),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~42\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~1_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~2\);

-- Location: FF_X30_Y27_N16
\motor_control_unit_inst|signal_generator_inst|steps_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~1_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(26));

-- Location: LABCELL_X30_Y27_N18
\motor_control_unit_inst|signal_generator_inst|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~5_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(27) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~2\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~6\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(27) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(27),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~2\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~5_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~6\);

-- Location: FF_X30_Y27_N20
\motor_control_unit_inst|signal_generator_inst|steps_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~5_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(27));

-- Location: LABCELL_X30_Y27_N21
\motor_control_unit_inst|signal_generator_inst|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~9_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(28) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~6\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~10\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(28) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(28),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~6\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~9_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~10\);

-- Location: FF_X30_Y27_N22
\motor_control_unit_inst|signal_generator_inst|steps_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~9_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(28));

-- Location: LABCELL_X30_Y27_N24
\motor_control_unit_inst|signal_generator_inst|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~13_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(29) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~10\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~14\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(29) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(29),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~10\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~13_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~14\);

-- Location: FF_X30_Y27_N26
\motor_control_unit_inst|signal_generator_inst|steps_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~13_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(29));

-- Location: LABCELL_X30_Y27_N27
\motor_control_unit_inst|signal_generator_inst|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~17_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(30) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~14\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add1~18\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(30) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(30),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~14\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~17_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add1~18\);

-- Location: FF_X30_Y27_N29
\motor_control_unit_inst|signal_generator_inst|steps_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~17_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(30));

-- Location: LABCELL_X30_Y27_N30
\motor_control_unit_inst|signal_generator_inst|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add1~21_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(31) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(31),
	cin => \motor_control_unit_inst|signal_generator_inst|Add1~18\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add1~21_sumout\);

-- Location: FF_X30_Y27_N32
\motor_control_unit_inst|signal_generator_inst|steps_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Add1~21_sumout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(31));

-- Location: LABCELL_X30_Y27_N36
\motor_control_unit_inst|signal_generator_inst|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(30) & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(26) & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(27) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(31) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(29) & 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(28)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(27),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(31),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(29),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(28),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(30),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(26),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\);

-- Location: LABCELL_X31_Y26_N57
\motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~4_combout\ = ( \CPU_RESET_n~input_o\ & ( (\motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\ & (\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\ & 
-- \motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\)) ) ) # ( !\CPU_RESET_n~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~1_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~7_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~0_combout\,
	dataf => \ALT_INV_CPU_RESET_n~input_o\,
	combout => \motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~4_combout\);

-- Location: FF_X31_Y26_N31
\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector0~0_combout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\);

-- Location: LABCELL_X31_Y26_N24
\motor_control_unit_inst|signal_generator_inst|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( (!\register_interface_inst|ctrlReg\(2) & (!\register_interface_inst|ctrlReg\(4) & 
-- (\register_interface_inst|ctrlReg\(5) & \register_interface_inst|ctrlReg\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datab => \register_interface_inst|ALT_INV_ctrlReg\(4),
	datac => \register_interface_inst|ALT_INV_ctrlReg\(5),
	datad => \register_interface_inst|ALT_INV_ctrlReg\(3),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\);

-- Location: LABCELL_X27_Y26_N30
\motor_control_unit_inst|signal_generator_inst|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\ = ( \register_interface_inst|ctrlReg\(2) & ( \register_interface_inst|ctrlReg\(3) & ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ ) ) ) # ( 
-- !\register_interface_inst|ctrlReg\(2) & ( \register_interface_inst|ctrlReg\(3) & ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ ) ) ) # ( \register_interface_inst|ctrlReg\(2) & ( !\register_interface_inst|ctrlReg\(3) & ( 
-- !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ ) ) ) # ( !\register_interface_inst|ctrlReg\(2) & ( !\register_interface_inst|ctrlReg\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	datae => \register_interface_inst|ALT_INV_ctrlReg\(2),
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(3),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\);

-- Location: FF_X31_Y26_N26
\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~4_combout\,
	ena => \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\);

-- Location: LABCELL_X31_Y26_N9
\motor_control_unit_inst|signal_generator_inst|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( (!\register_interface_inst|ctrlReg\(2) & (\register_interface_inst|ctrlReg\(4) & 
-- (!\register_interface_inst|ctrlReg\(5) & \register_interface_inst|ctrlReg\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datab => \register_interface_inst|ALT_INV_ctrlReg\(4),
	datac => \register_interface_inst|ALT_INV_ctrlReg\(5),
	datad => \register_interface_inst|ALT_INV_ctrlReg\(3),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\);

-- Location: FF_X31_Y26_N10
\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~4_combout\,
	ena => \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\);

-- Location: LABCELL_X31_Y26_N6
\motor_control_unit_inst|signal_generator_inst|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector2~1_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( (!\register_interface_inst|ctrlReg\(2) & (!\register_interface_inst|ctrlReg\(4) & 
-- (!\register_interface_inst|ctrlReg\(5) & \register_interface_inst|ctrlReg\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datab => \register_interface_inst|ALT_INV_ctrlReg\(4),
	datac => \register_interface_inst|ALT_INV_ctrlReg\(5),
	datad => \register_interface_inst|ALT_INV_ctrlReg\(3),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector2~1_combout\);

-- Location: FF_X31_Y26_N8
\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector2~1_combout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~4_combout\,
	ena => \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\);

-- Location: LABCELL_X31_Y26_N0
\motor_control_unit_inst|signal_generator_inst|Equal7~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal7~6_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(6) & ( \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(3) & (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ $ 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(7))))) # (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ & (((\motor_control_unit_inst|signal_generator_inst|steps_counter\(7) & 
-- \motor_control_unit_inst|signal_generator_inst|steps_counter\(3))))) ) ) ) # ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(6) & ( !\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(7) & (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ & \motor_control_unit_inst|signal_generator_inst|steps_counter\(3))) ) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(6) & ( !\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & ( (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ & 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(3) & (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ $ (\motor_control_unit_inst|signal_generator_inst|steps_counter\(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000000000000000000000001100000000000000001001000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1~q\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_2~q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(3),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(6),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal7~6_combout\);

-- Location: LABCELL_X30_Y27_N54
\motor_control_unit_inst|signal_generator_inst|Equal7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal7~5_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(20) & ( (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(21) & 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(18) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(22) & !\motor_control_unit_inst|signal_generator_inst|steps_counter\(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(21),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(18),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(22),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(19),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(20),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal7~5_combout\);

-- Location: LABCELL_X31_Y26_N27
\motor_control_unit_inst|signal_generator_inst|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector5~0_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( (!\register_interface_inst|ctrlReg\(2) & (\register_interface_inst|ctrlReg\(4) & 
-- (\register_interface_inst|ctrlReg\(5) & \register_interface_inst|ctrlReg\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datab => \register_interface_inst|ALT_INV_ctrlReg\(4),
	datac => \register_interface_inst|ALT_INV_ctrlReg\(5),
	datad => \register_interface_inst|ALT_INV_ctrlReg\(3),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector5~0_combout\);

-- Location: FF_X31_Y26_N29
\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector5~0_combout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm[1]~4_combout\,
	ena => \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\);

-- Location: LABCELL_X31_Y26_N42
\motor_control_unit_inst|signal_generator_inst|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal7~3_combout\ = ( \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ & ( (\motor_control_unit_inst|signal_generator_inst|steps_counter\(8) & 
-- \motor_control_unit_inst|signal_generator_inst|steps_counter\(4)) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ & ( (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(4) & 
-- (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ $ (\motor_control_unit_inst|signal_generator_inst|steps_counter\(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_2~q\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(8),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(4),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal7~3_combout\);

-- Location: LABCELL_X30_Y26_N0
\motor_control_unit_inst|signal_generator_inst|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal7~2_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(16) & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(11) & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(14) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(13) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(15) & 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(14),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(13),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(15),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(12),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(16),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(11),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal7~2_combout\);

-- Location: LABCELL_X31_Y26_N45
\motor_control_unit_inst|signal_generator_inst|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal7~4_combout\ = ( \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & ( (\motor_control_unit_inst|signal_generator_inst|steps_counter\(5) & 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(2) & (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ $ (\motor_control_unit_inst|signal_generator_inst|steps_counter\(9))))) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & ( (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(2) & ((!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(5) & !\motor_control_unit_inst|signal_generator_inst|steps_counter\(9))) # (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(5) & \motor_control_unit_inst|signal_generator_inst|steps_counter\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000010000100000000001000000000010000000010000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_2~q\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(5),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(2),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(9),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal7~4_combout\);

-- Location: LABCELL_X30_Y26_N36
\motor_control_unit_inst|signal_generator_inst|Equal7~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Equal7~2_combout\ & ( \motor_control_unit_inst|signal_generator_inst|Equal7~4_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|Equal7~6_combout\ & (\motor_control_unit_inst|signal_generator_inst|Equal7~5_combout\ & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(17) & 
-- \motor_control_unit_inst|signal_generator_inst|Equal7~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~6_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~5_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(17),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~3_combout\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~2_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~4_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X27_Y26_N15
\debug_inst|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux11~0_combout\ = ( \SW[1]~input_o\ & ( (!\debug_inst|addr_counter\(0)) # (\SW[8]~input_o\) ) ) # ( !\SW[1]~input_o\ & ( (\debug_inst|addr_counter\(0) & \SW[8]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_addr_counter\(0),
	datac => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \debug_inst|Mux11~0_combout\);

-- Location: FF_X27_Y26_N17
\debug_inst|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|Mux11~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|data\(1));

-- Location: FF_X43_Y29_N40
\register_interface_inst|ctrlReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(1),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|ALT_INV_addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(1));

-- Location: MLABCELL_X47_Y27_N0
\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0_combout\ = (!\register_interface_inst|ctrlReg\(1) & (!\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\)) # (\register_interface_inst|ctrlReg\(1) & 
-- ((\motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000011110101101000001111010110100000111101011010000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(1),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.THREE~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0_combout\);

-- Location: FF_X47_Y27_N1
\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\);

-- Location: MLABCELL_X47_Y27_N3
\motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ & ( (!\register_interface_inst|ctrlReg\(1)) # (\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\) 
-- ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ & ( (\register_interface_inst|ctrlReg\(1) & \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(1),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0_combout\);

-- Location: FF_X47_Y27_N4
\motor_control_unit_inst|signal_generator_inst|pwm_state.THREE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\);

-- Location: LABCELL_X30_Y27_N45
\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( (!\register_interface_inst|ctrlReg\(1) & \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\) ) ) 
-- # ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( (\motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\) # (\register_interface_inst|ctrlReg\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(1),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.THREE~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0_combout\);

-- Location: FF_X30_Y27_N46
\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\);

-- Location: LABCELL_X30_Y27_N57
\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0_combout\ = ( \register_interface_inst|ctrlReg\(1) & ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ ) ) # ( !\register_interface_inst|ctrlReg\(1) & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\,
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(1),
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0_combout\);

-- Location: FF_X30_Y27_N58
\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\);

-- Location: LABCELL_X30_Y26_N12
\motor_control_unit_inst|signal_generator_inst|motor_pwm[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|motor_pwm[0]~0_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ ) ) # ( \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ & ( (!\CPU_RESET_n~input_o\) # ((\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\ & (\motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\ & 
-- \motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\))) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111110000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~7_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~1_combout\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|motor_pwm[0]~0_combout\);

-- Location: LABCELL_X30_Y26_N15
\motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~1_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ ) ) # ( \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ & ( (!\CPU_RESET_n~input_o\) # ((\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\ & (\motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\ & 
-- \motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\))) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111100001111000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~7_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~0_combout\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~1_combout\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|motor_pwm[1]~1_combout\);

-- Location: LABCELL_X30_Y26_N18
\motor_control_unit_inst|signal_generator_inst|motor_pwm[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|motor_pwm[2]~2_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ & ( (\CPU_RESET_n~input_o\ & 
-- ((!\motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\) # ((!\motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\)))) ) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ & ( (\CPU_RESET_n~input_o\ & ((!\motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\) # 
-- ((!\motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\)))) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ & ( (\CPU_RESET_n~input_o\ & ((!\motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\) # ((!\motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\) # 
-- (!\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111110000000000000000000000000111111100000000011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~1_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~7_combout\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|motor_pwm[2]~2_combout\);

-- Location: LABCELL_X30_Y26_N21
\motor_control_unit_inst|signal_generator_inst|motor_pwm[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|motor_pwm[3]~3_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ & ( (\CPU_RESET_n~input_o\ & 
-- ((!\motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\) # ((!\motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\)))) ) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ & ( (\CPU_RESET_n~input_o\ & ((!\motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\) # 
-- ((!\motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\)))) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ & ( (\CPU_RESET_n~input_o\ & ((!\motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\) # ((!\motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\) # 
-- (!\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000000000000000000001111000011100000111100001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~1_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~0_combout\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~7_combout\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|motor_pwm[3]~3_combout\);

-- Location: FF_X30_Y27_N40
\register_interface_inst|speedReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(0),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|speedReg\(0));

-- Location: FF_X30_Y27_N53
\register_interface_inst|speedReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(1),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|speedReg\(1));

-- Location: FF_X30_Y26_N40
\register_interface_inst|speedReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(2),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|speedReg\(2));

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X27_Y26_N54
\debug_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux6~0_combout\ = (!\debug_inst|addr_counter\(0) & \SW[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_addr_counter\(0),
	datac => \ALT_INV_SW[6]~input_o\,
	combout => \debug_inst|Mux6~0_combout\);

-- Location: FF_X27_Y26_N56
\debug_inst|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|data\(6));

-- Location: FF_X27_Y26_N40
\register_interface_inst|ctrlReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|data\(6),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|ALT_INV_addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(6));

-- Location: LABCELL_X30_Y26_N57
\register_interface_inst|ctrlReg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_interface_inst|ctrlReg~0_combout\ = ( \register_interface_inst|ctrlReg\(7) & ( \motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\ & ( \debug_inst|addr\(0) ) ) ) # ( !\register_interface_inst|ctrlReg\(7) & ( 
-- \motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|Equal7~1_combout\ & (\motor_control_unit_inst|signal_generator_inst|Equal7~0_combout\ & \debug_inst|addr\(0))) ) ) ) # ( 
-- \register_interface_inst|ctrlReg\(7) & ( !\motor_control_unit_inst|signal_generator_inst|Equal7~7_combout\ & ( \debug_inst|addr\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000001000000010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~1_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~0_combout\,
	datac => \debug_inst|ALT_INV_addr\(0),
	datae => \register_interface_inst|ALT_INV_ctrlReg\(7),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal7~7_combout\,
	combout => \register_interface_inst|ctrlReg~0_combout\);

-- Location: FF_X30_Y26_N59
\register_interface_inst|ctrlReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \register_interface_inst|ctrlReg~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(7));

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X15_Y16_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


