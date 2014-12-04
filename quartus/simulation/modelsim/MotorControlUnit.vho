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
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "12/03/2014 13:46:54"

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
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
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
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_B5B~input_o\ : std_logic;
SIGNAL \CLOCK_50_B5B~inputCLKENA0_outclk\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~117_sumout\ : std_logic;
SIGNAL \CPU_RESET_n~input_o\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~98\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~53_sumout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \debug_inst|old_switches[9]~37_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[9]~39_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \debug_inst|old_switches[0]~1_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[0]~3_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[0]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[0]~2_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \debug_inst|old_switches[1]~5_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[1]~7_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[1]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[1]~6_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey~10_combout\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey.start~q\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey~9_combout\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey.newpress~q\ : std_logic;
SIGNAL \debug_inst|write_data[2]~3_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \debug_inst|old_switches[3]~13_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[3]~15_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[3]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[3]~14_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \debug_inst|old_switches[4]~17_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[4]~19_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[4]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[4]~18_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \debug_inst|old_switches[2]~9_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[2]~11_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[2]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[2]~10_combout\ : std_logic;
SIGNAL \debug_inst|write_data[2]~4_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \debug_inst|old_switches[7]~29_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[7]~31_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[7]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[7]~30_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \debug_inst|old_switches[5]~21_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[5]~23_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[5]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[5]~22_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[6]~25_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[6]~27_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[6]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[6]~26_combout\ : std_logic;
SIGNAL \debug_inst|write_data[2]~2_combout\ : std_logic;
SIGNAL \debug_inst|write_data[2]~7_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[9]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[9]~38_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[8]~33_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[8]~35_combout\ : std_logic;
SIGNAL \debug_inst|old_switches[8]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|old_switches[8]~34_combout\ : std_logic;
SIGNAL \debug_inst|write_data[2]~1_combout\ : std_logic;
SIGNAL \debug_inst|reg_write_stage~0_combout\ : std_logic;
SIGNAL \debug_inst|write_n~1_combout\ : std_logic;
SIGNAL \debug_inst|write_data[2]~6_combout\ : std_logic;
SIGNAL \debug_inst|write_n~0_combout\ : std_logic;
SIGNAL \debug_inst|write_n~q\ : std_logic;
SIGNAL \debug_inst|addr[0]~0_combout\ : std_logic;
SIGNAL \register_interface_inst|process_0~0_combout\ : std_logic;
SIGNAL \debug_inst|write_data~12_combout\ : std_logic;
SIGNAL \debug_inst|write_data[3]~13_combout\ : std_logic;
SIGNAL \debug_inst|write_data~10_combout\ : std_logic;
SIGNAL \debug_inst|write_data~11_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|steps_counter[0]~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|steps_output_wire[31]~0_combout\ : std_logic;
SIGNAL \debug_inst|write_data~8_combout\ : std_logic;
SIGNAL \debug_inst|write_data~9_combout\ : std_logic;
SIGNAL \register_interface_inst|process_0~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Mux1~0_combout\ : std_logic;
SIGNAL \register_interface_inst|Mux31~0_combout\ : std_logic;
SIGNAL \debug_inst|run_bit~1_combout\ : std_logic;
SIGNAL \debug_inst|run_bit~3_combout\ : std_logic;
SIGNAL \debug_inst|run_bit~_emulated_q\ : std_logic;
SIGNAL \debug_inst|run_bit~2_combout\ : std_logic;
SIGNAL \debug_inst|write_data~0_combout\ : std_logic;
SIGNAL \debug_inst|write_data~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Mux3~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Mux4~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Mux5~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Mux6~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Mux8~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~35_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~34_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~14\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~31_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~30_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~10\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~5_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~27_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~26_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~6\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~23_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~22_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~2\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~33_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~19_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~18_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~34\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~29_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~15_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~14_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~30\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~11_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~10_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~26\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~7_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Mux0~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~22\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal8~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~89_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~90\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~61_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~62\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~65_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~66\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~101_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~102\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~113_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~114\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~93_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~94\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~97_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~98\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~69_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~70\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~105_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~106\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~109_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~110\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~117_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~118\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~121_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~122\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~73_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~74\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~77_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~78\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~81_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~82\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~85_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~86\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~45_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~46\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~49_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~50\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~53_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~54\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~57_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~58\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~29_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~30\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~33_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~34\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~37_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~38\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~41_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~7_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~42\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~13_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~14\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~17_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~18\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~21_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~22\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~25_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~26\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~1_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~2\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~5_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~6\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Add3~9_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~7_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~8_combout\ : std_logic;
SIGNAL \debug_inst|write_data~15_combout\ : std_logic;
SIGNAL \debug_inst|write_data~14_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector3~9_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector4~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector4~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector4~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~9_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~8_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~10_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector6~7_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector6~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector5~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector6~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector6~8_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector5~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector5~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector5~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector5~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~12_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~14_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~13_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector1~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|Selector0~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ir_wire~q\ : std_logic;
SIGNAL \register_interface_inst|ctrlReg[0]~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~54\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~101_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~102\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~105_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~106\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~113_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~114\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~109_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~110\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~45_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~46\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~65_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~66\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~61_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~62\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~57_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~58\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~85_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~86\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~89_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~90\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~81_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~82\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~77_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~78\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~37_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~38\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~13_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~14\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~41_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~42\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~33_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~34\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~29_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~30\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~25_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~26\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~21_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~118\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~125_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~126\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~121_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~122\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~9_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~10\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~5_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~6\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~1_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~2\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~93_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~94\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~17_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~18\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~69_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~70\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~73_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~74\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~49_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~50\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Add0~97_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal1~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|Equal1~combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|motor_en_wire~0_combout\ : std_logic;
SIGNAL \debug_inst|write_data~16_combout\ : std_logic;
SIGNAL \register_interface_inst|ctrlReg~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|motor_pwm\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \debug_inst|write_data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|steps_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \register_interface_inst|ctrlReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \motor_control_unit_inst|prescaler_inst|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|motor_en_wire\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \register_interface_inst|speedReg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \debug_inst|addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \debug_inst|reg_write_stage\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_CPU_RESET_n~input_o\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[4]~17_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[3]~13_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[2]~9_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[1]~5_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[0]~1_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[7]~29_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[6]~25_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[5]~21_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[9]~37_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[8]~33_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_run_bit~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~17_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~13_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~9_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~33_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~29_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~25_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~21_combout\ : std_logic;
SIGNAL \register_interface_inst|ALT_INV_Mux31~0_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[4]~18_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[4]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[3]~14_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[3]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[2]~10_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[2]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[1]~6_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[1]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[0]~2_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[0]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|key0_inst|ALT_INV_STkey.start~q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[7]~30_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[7]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[6]~26_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[6]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[5]~22_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[5]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[9]~38_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[9]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[8]~34_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_old_switches[8]~_emulated_q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_run_bit~2_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_run_bit~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector6~7_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector6~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector6~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector4~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector4~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~8_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~7_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~4_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_to_run[10]~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \register_interface_inst|ALT_INV_speedReg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_write_data~10_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_write_data~8_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_write_data[2]~7_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_write_data[2]~4_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_write_data[2]~3_combout\ : std_logic;
SIGNAL \debug_inst|key0_inst|ALT_INV_STkey.newpress~q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_write_data[2]~2_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_write_data[2]~1_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_write_data~0_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_reg_write_stage\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~15_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~14_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~13_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~12_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_2~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~11_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~10_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~9_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_2~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~8_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~7_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~5_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~18_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~14_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~10_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~6_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~34_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~30_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~26_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~22_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~_emulated_q\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_ir_wire~q\ : std_logic;
SIGNAL \register_interface_inst|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \debug_inst|ALT_INV_addr\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \debug_inst|ALT_INV_write_n~q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_write_data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.THREE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \register_interface_inst|ALT_INV_ctrlReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\ : std_logic_vector(31 DOWNTO 0);

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
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_CPU_RESET_n~input_o\ <= NOT \CPU_RESET_n~input_o\;
\debug_inst|ALT_INV_old_switches[4]~17_combout\ <= NOT \debug_inst|old_switches[4]~17_combout\;
\debug_inst|ALT_INV_old_switches[3]~13_combout\ <= NOT \debug_inst|old_switches[3]~13_combout\;
\debug_inst|ALT_INV_old_switches[2]~9_combout\ <= NOT \debug_inst|old_switches[2]~9_combout\;
\debug_inst|ALT_INV_old_switches[1]~5_combout\ <= NOT \debug_inst|old_switches[1]~5_combout\;
\debug_inst|ALT_INV_old_switches[0]~1_combout\ <= NOT \debug_inst|old_switches[0]~1_combout\;
\debug_inst|ALT_INV_old_switches[7]~29_combout\ <= NOT \debug_inst|old_switches[7]~29_combout\;
\debug_inst|ALT_INV_old_switches[6]~25_combout\ <= NOT \debug_inst|old_switches[6]~25_combout\;
\debug_inst|ALT_INV_old_switches[5]~21_combout\ <= NOT \debug_inst|old_switches[5]~21_combout\;
\debug_inst|ALT_INV_old_switches[9]~37_combout\ <= NOT \debug_inst|old_switches[9]~37_combout\;
\debug_inst|ALT_INV_old_switches[8]~33_combout\ <= NOT \debug_inst|old_switches[8]~33_combout\;
\debug_inst|ALT_INV_run_bit~1_combout\ <= NOT \debug_inst|run_bit~1_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~17_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~13_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~9_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~5_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~1_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~33_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~29_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~25_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~21_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21_combout\;
\register_interface_inst|ALT_INV_Mux31~0_combout\ <= NOT \register_interface_inst|Mux31~0_combout\;
\debug_inst|ALT_INV_old_switches[4]~18_combout\ <= NOT \debug_inst|old_switches[4]~18_combout\;
\debug_inst|ALT_INV_old_switches[4]~_emulated_q\ <= NOT \debug_inst|old_switches[4]~_emulated_q\;
\debug_inst|ALT_INV_old_switches[3]~14_combout\ <= NOT \debug_inst|old_switches[3]~14_combout\;
\debug_inst|ALT_INV_old_switches[3]~_emulated_q\ <= NOT \debug_inst|old_switches[3]~_emulated_q\;
\debug_inst|ALT_INV_old_switches[2]~10_combout\ <= NOT \debug_inst|old_switches[2]~10_combout\;
\debug_inst|ALT_INV_old_switches[2]~_emulated_q\ <= NOT \debug_inst|old_switches[2]~_emulated_q\;
\debug_inst|ALT_INV_old_switches[1]~6_combout\ <= NOT \debug_inst|old_switches[1]~6_combout\;
\debug_inst|ALT_INV_old_switches[1]~_emulated_q\ <= NOT \debug_inst|old_switches[1]~_emulated_q\;
\debug_inst|ALT_INV_old_switches[0]~2_combout\ <= NOT \debug_inst|old_switches[0]~2_combout\;
\debug_inst|ALT_INV_old_switches[0]~_emulated_q\ <= NOT \debug_inst|old_switches[0]~_emulated_q\;
\debug_inst|key0_inst|ALT_INV_STkey.start~q\ <= NOT \debug_inst|key0_inst|STkey.start~q\;
\debug_inst|ALT_INV_old_switches[7]~30_combout\ <= NOT \debug_inst|old_switches[7]~30_combout\;
\debug_inst|ALT_INV_old_switches[7]~_emulated_q\ <= NOT \debug_inst|old_switches[7]~_emulated_q\;
\debug_inst|ALT_INV_old_switches[6]~26_combout\ <= NOT \debug_inst|old_switches[6]~26_combout\;
\debug_inst|ALT_INV_old_switches[6]~_emulated_q\ <= NOT \debug_inst|old_switches[6]~_emulated_q\;
\debug_inst|ALT_INV_old_switches[5]~22_combout\ <= NOT \debug_inst|old_switches[5]~22_combout\;
\debug_inst|ALT_INV_old_switches[5]~_emulated_q\ <= NOT \debug_inst|old_switches[5]~_emulated_q\;
\debug_inst|ALT_INV_old_switches[9]~38_combout\ <= NOT \debug_inst|old_switches[9]~38_combout\;
\debug_inst|ALT_INV_old_switches[9]~_emulated_q\ <= NOT \debug_inst|old_switches[9]~_emulated_q\;
\debug_inst|ALT_INV_old_switches[8]~34_combout\ <= NOT \debug_inst|old_switches[8]~34_combout\;
\debug_inst|ALT_INV_old_switches[8]~_emulated_q\ <= NOT \debug_inst|old_switches[8]~_emulated_q\;
\debug_inst|ALT_INV_run_bit~2_combout\ <= NOT \debug_inst|run_bit~2_combout\;
\debug_inst|ALT_INV_run_bit~_emulated_q\ <= NOT \debug_inst|run_bit~_emulated_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~4_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector5~4_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~3_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector5~3_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~2_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector5~2_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector6~7_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector6~7_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector6~6_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector6~6_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector6~5_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector6~5_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~1_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector5~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector4~2_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector4~2_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector4~1_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector4~1_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector4~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~8_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector3~8_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~7_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector3~7_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~6_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector3~6_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~5_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector3~5_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~4_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector3~4_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~3_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector3~3_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~2_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector3~2_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~1_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector3~1_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_to_run[10]~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|steps_output_wire[31]~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux4~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Mux4~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux3~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Mux3~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux2~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux1~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Mux1~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux0~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Mux0~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux8~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Mux8~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux7~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux6~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Mux6~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux5~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Mux5~0_combout\;
\register_interface_inst|ALT_INV_speedReg\(1) <= NOT \register_interface_inst|speedReg\(1);
\register_interface_inst|ALT_INV_speedReg\(0) <= NOT \register_interface_inst|speedReg\(0);
\register_interface_inst|ALT_INV_speedReg\(2) <= NOT \register_interface_inst|speedReg\(2);
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~5_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~4_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\;
\debug_inst|ALT_INV_write_data~10_combout\ <= NOT \debug_inst|write_data~10_combout\;
\debug_inst|ALT_INV_write_data~8_combout\ <= NOT \debug_inst|write_data~8_combout\;
\debug_inst|ALT_INV_write_data[2]~7_combout\ <= NOT \debug_inst|write_data[2]~7_combout\;
\debug_inst|ALT_INV_write_data[2]~4_combout\ <= NOT \debug_inst|write_data[2]~4_combout\;
\debug_inst|ALT_INV_write_data[2]~3_combout\ <= NOT \debug_inst|write_data[2]~3_combout\;
\debug_inst|key0_inst|ALT_INV_STkey.newpress~q\ <= NOT \debug_inst|key0_inst|STkey.newpress~q\;
\debug_inst|ALT_INV_write_data[2]~2_combout\ <= NOT \debug_inst|write_data[2]~2_combout\;
\debug_inst|ALT_INV_write_data[2]~1_combout\ <= NOT \debug_inst|write_data[2]~1_combout\;
\debug_inst|ALT_INV_write_data~0_combout\ <= NOT \debug_inst|write_data~0_combout\;
\debug_inst|ALT_INV_reg_write_stage\(1) <= NOT \debug_inst|reg_write_stage\(1);
\debug_inst|ALT_INV_reg_write_stage\(0) <= NOT \debug_inst|reg_write_stage\(0);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~15_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~14_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~14_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(12) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(12);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(11) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(11);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(5) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(5);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~13_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~13_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(10) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(10);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(9) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(9);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(4) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(4);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~12_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~12_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(7);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(6) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(6);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_2~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(0) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(0);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(1) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(1);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~11_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~10_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~10_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(16) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(16);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(15) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(15);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(14) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(14);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(13) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(13);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~9_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~9_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(8) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(8);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(3) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(3);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_2~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(2) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(2);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~8_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~8_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(20) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(20);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(19) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(19);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(18) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(18);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(17) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(17);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~7_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~7_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(24) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(24);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(23) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(23);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(22) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(22);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(21) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(21);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~6_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~6_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(28) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(28);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(27) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(27);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(26) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(26);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(25) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(25);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~5_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal6~5_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(31) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(31);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(30) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(30);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(29) <= NOT \motor_control_unit_inst|signal_generator_inst|steps_counter\(29);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~18_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~18_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~_emulated_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~_emulated_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~14_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~14_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~_emulated_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~_emulated_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~10_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~10_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~_emulated_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~_emulated_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~6_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~6_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~_emulated_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~_emulated_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~2_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~2_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~_emulated_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~_emulated_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~34_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~34_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~_emulated_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~_emulated_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~30_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~30_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~_emulated_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~_emulated_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~26_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~26_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~_emulated_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~_emulated_q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~22_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~22_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~_emulated_q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~_emulated_q\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~1_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~0_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal1~0_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~3_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~2_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~1_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~1_combout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~0_combout\ <= NOT \motor_control_unit_inst|prescaler_inst|Equal0~0_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_ir_wire~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|ir_wire~q\;
\register_interface_inst|ALT_INV_process_0~0_combout\ <= NOT \register_interface_inst|process_0~0_combout\;
\debug_inst|ALT_INV_addr\(0) <= NOT \debug_inst|addr\(0);
\debug_inst|ALT_INV_write_n~q\ <= NOT \debug_inst|write_n~q\;
\debug_inst|ALT_INV_write_data\(0) <= NOT \debug_inst|write_data\(0);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.THREE~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~0_combout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Equal8~0_combout\;
\register_interface_inst|ALT_INV_ctrlReg\(7) <= NOT \register_interface_inst|ctrlReg\(7);
\register_interface_inst|ALT_INV_ctrlReg\(5) <= NOT \register_interface_inst|ctrlReg\(5);
\register_interface_inst|ALT_INV_ctrlReg\(4) <= NOT \register_interface_inst|ctrlReg\(4);
\register_interface_inst|ALT_INV_ctrlReg\(3) <= NOT \register_interface_inst|ctrlReg\(3);
\register_interface_inst|ALT_INV_ctrlReg\(2) <= NOT \register_interface_inst|ctrlReg\(2);
\register_interface_inst|ALT_INV_ctrlReg\(1) <= NOT \register_interface_inst|ctrlReg\(1);
\register_interface_inst|ALT_INV_ctrlReg\(0) <= NOT \register_interface_inst|ctrlReg\(0);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm\(3) <= NOT \motor_control_unit_inst|signal_generator_inst|motor_pwm\(3);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm\(2) <= NOT \motor_control_unit_inst|signal_generator_inst|motor_pwm\(2);
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\ <= NOT \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~33_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~33_sumout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~29_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~29_sumout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~25_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~21_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~17_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~13_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~9_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~5_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~5_sumout\;
\motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~1_sumout\ <= NOT \motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\;
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(1) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(1);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(2) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(2);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(0) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(0);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(15) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(15);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(16) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(16);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(14) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(14);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(13) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(13);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(11) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(11);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(6) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(6);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(22) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(22);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(21) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(21);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(23) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(23);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(24) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(24);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(9) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(9);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(8) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(8);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(18) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(18);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(19) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(19);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(20) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(20);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(12) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(12);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(10) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(10);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(17) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(17);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(27) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(27);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(25) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(25);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(28) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(28);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(29) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(29);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(30) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(30);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(31) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(31);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(7) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(7);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(26) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(26);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(3) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(3);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(4) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(4);
\motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(5) <= NOT \motor_control_unit_inst|prescaler_inst|counter\(5);

-- Location: IOOBUF_X42_Y61_N2
\HSMC_RX_P[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm\(2),
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
	i => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm\(3),
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
	i => \motor_control_unit_inst|signal_generator_inst|motor_pwm\(2),
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
	i => \motor_control_unit_inst|signal_generator_inst|motor_pwm\(3),
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
	i => \motor_control_unit_inst|signal_generator_inst|motor_en_wire\(0),
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
	i => \motor_control_unit_inst|signal_generator_inst|motor_en_wire\(0),
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
	i => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm\(2),
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
	i => \motor_control_unit_inst|signal_generator_inst|motor_pwm\(2),
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
	i => \motor_control_unit_inst|signal_generator_inst|ALT_INV_motor_pwm\(3),
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
	i => \motor_control_unit_inst|signal_generator_inst|motor_pwm\(3),
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
	i => \motor_control_unit_inst|signal_generator_inst|motor_en_wire\(0),
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
	i => \motor_control_unit_inst|signal_generator_inst|motor_en_wire\(0),
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

-- Location: LABCELL_X36_Y20_N0
\motor_control_unit_inst|prescaler_inst|Add0~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~117_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(0) ) + ( VCC ) + ( !VCC ))
-- \motor_control_unit_inst|prescaler_inst|Add0~118\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(0),
	cin => GND,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~117_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~118\);

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

-- Location: LABCELL_X36_Y20_N33
\motor_control_unit_inst|prescaler_inst|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~97_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(11) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~50\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~98\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(11) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(11),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~50\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~97_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~98\);

-- Location: LABCELL_X36_Y20_N36
\motor_control_unit_inst|prescaler_inst|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~53_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(12) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~98\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~54\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(12) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(12),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~98\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~53_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~54\);

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

-- Location: LABCELL_X33_Y18_N6
\debug_inst|old_switches[9]~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[9]~37_combout\ = ( \debug_inst|old_switches[9]~37_combout\ & ( (\CPU_RESET_n~input_o\) # (\SW[9]~input_o\) ) ) # ( !\debug_inst|old_switches[9]~37_combout\ & ( (\SW[9]~input_o\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[9]~37_combout\,
	combout => \debug_inst|old_switches[9]~37_combout\);

-- Location: LABCELL_X33_Y18_N9
\debug_inst|old_switches[9]~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[9]~39_combout\ = ( \debug_inst|old_switches[9]~37_combout\ & ( !\SW[9]~input_o\ ) ) # ( !\debug_inst|old_switches[9]~37_combout\ & ( \SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[9]~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[9]~37_combout\,
	combout => \debug_inst|old_switches[9]~39_combout\);

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

-- Location: LABCELL_X33_Y18_N57
\debug_inst|old_switches[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[0]~1_combout\ = ( \debug_inst|old_switches[0]~1_combout\ & ( (\CPU_RESET_n~input_o\) # (\SW[0]~input_o\) ) ) # ( !\debug_inst|old_switches[0]~1_combout\ & ( (\SW[0]~input_o\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[0]~1_combout\,
	combout => \debug_inst|old_switches[0]~1_combout\);

-- Location: LABCELL_X33_Y18_N48
\debug_inst|old_switches[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[0]~3_combout\ = ( \SW[0]~input_o\ & ( !\debug_inst|old_switches[0]~1_combout\ ) ) # ( !\SW[0]~input_o\ & ( \debug_inst|old_switches[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \debug_inst|ALT_INV_old_switches[0]~1_combout\,
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \debug_inst|old_switches[0]~3_combout\);

-- Location: FF_X33_Y18_N49
\debug_inst|old_switches[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|old_switches[0]~3_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[0]~_emulated_q\);

-- Location: LABCELL_X33_Y18_N15
\debug_inst|old_switches[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[0]~2_combout\ = ( \CPU_RESET_n~input_o\ & ( !\debug_inst|old_switches[0]~_emulated_q\ $ (!\debug_inst|old_switches[0]~1_combout\) ) ) # ( !\CPU_RESET_n~input_o\ & ( \SW[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datac => \debug_inst|ALT_INV_old_switches[0]~_emulated_q\,
	datad => \debug_inst|ALT_INV_old_switches[0]~1_combout\,
	dataf => \ALT_INV_CPU_RESET_n~input_o\,
	combout => \debug_inst|old_switches[0]~2_combout\);

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

-- Location: LABCELL_X33_Y18_N51
\debug_inst|old_switches[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[1]~5_combout\ = ( \debug_inst|old_switches[1]~5_combout\ & ( (\CPU_RESET_n~input_o\) # (\SW[1]~input_o\) ) ) # ( !\debug_inst|old_switches[1]~5_combout\ & ( (\SW[1]~input_o\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[1]~5_combout\,
	combout => \debug_inst|old_switches[1]~5_combout\);

-- Location: LABCELL_X33_Y18_N18
\debug_inst|old_switches[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[1]~7_combout\ = ( \debug_inst|old_switches[1]~5_combout\ & ( !\SW[1]~input_o\ ) ) # ( !\debug_inst|old_switches[1]~5_combout\ & ( \SW[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[1]~5_combout\,
	combout => \debug_inst|old_switches[1]~7_combout\);

-- Location: FF_X33_Y18_N20
\debug_inst|old_switches[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|old_switches[1]~7_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[1]~_emulated_q\);

-- Location: LABCELL_X33_Y18_N54
\debug_inst|old_switches[1]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[1]~6_combout\ = ( \SW[1]~input_o\ & ( (!\CPU_RESET_n~input_o\) # (!\debug_inst|old_switches[1]~5_combout\ $ (!\debug_inst|old_switches[1]~_emulated_q\)) ) ) # ( !\SW[1]~input_o\ & ( (\CPU_RESET_n~input_o\ & 
-- (!\debug_inst|old_switches[1]~5_combout\ $ (!\debug_inst|old_switches[1]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000011001111111111001100111111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \debug_inst|ALT_INV_old_switches[1]~5_combout\,
	datad => \debug_inst|ALT_INV_old_switches[1]~_emulated_q\,
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \debug_inst|old_switches[1]~6_combout\);

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

-- Location: MLABCELL_X37_Y18_N33
\debug_inst|key0_inst|STkey~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|key0_inst|STkey~10_combout\ = (!\KEY[0]~input_o\) # (\debug_inst|key0_inst|STkey.newpress~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101111101011111010111110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \debug_inst|key0_inst|ALT_INV_STkey.newpress~q\,
	combout => \debug_inst|key0_inst|STkey~10_combout\);

-- Location: FF_X37_Y18_N35
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

-- Location: MLABCELL_X37_Y18_N30
\debug_inst|key0_inst|STkey~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|key0_inst|STkey~9_combout\ = (!\KEY[0]~input_o\ & !\debug_inst|key0_inst|STkey.start~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \debug_inst|key0_inst|ALT_INV_STkey.start~q\,
	combout => \debug_inst|key0_inst|STkey~9_combout\);

-- Location: FF_X37_Y18_N32
\debug_inst|key0_inst|STkey.newpress\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|key0_inst|STkey~9_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|key0_inst|STkey.newpress~q\);

-- Location: LABCELL_X33_Y18_N12
\debug_inst|write_data[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data[2]~3_combout\ = ( !\debug_inst|key0_inst|STkey.newpress~q\ & ( (!\SW[0]~input_o\ & (!\debug_inst|old_switches[0]~2_combout\ & (!\SW[1]~input_o\ $ (\debug_inst|old_switches[1]~6_combout\)))) # (\SW[0]~input_o\ & 
-- (\debug_inst|old_switches[0]~2_combout\ & (!\SW[1]~input_o\ $ (\debug_inst|old_switches[1]~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001100100000000100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \debug_inst|ALT_INV_old_switches[0]~2_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \debug_inst|ALT_INV_old_switches[1]~6_combout\,
	dataf => \debug_inst|key0_inst|ALT_INV_STkey.newpress~q\,
	combout => \debug_inst|write_data[2]~3_combout\);

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

-- Location: LABCELL_X35_Y18_N51
\debug_inst|old_switches[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[3]~13_combout\ = ( \debug_inst|old_switches[3]~13_combout\ & ( (\CPU_RESET_n~input_o\) # (\SW[3]~input_o\) ) ) # ( !\debug_inst|old_switches[3]~13_combout\ & ( (\SW[3]~input_o\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[3]~13_combout\,
	combout => \debug_inst|old_switches[3]~13_combout\);

-- Location: LABCELL_X36_Y18_N51
\debug_inst|old_switches[3]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[3]~15_combout\ = ( \SW[3]~input_o\ & ( !\debug_inst|old_switches[3]~13_combout\ ) ) # ( !\SW[3]~input_o\ & ( \debug_inst|old_switches[3]~13_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \debug_inst|ALT_INV_old_switches[3]~13_combout\,
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \debug_inst|old_switches[3]~15_combout\);

-- Location: FF_X35_Y18_N50
\debug_inst|old_switches[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|old_switches[3]~15_combout\,
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[3]~_emulated_q\);

-- Location: LABCELL_X35_Y18_N48
\debug_inst|old_switches[3]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[3]~14_combout\ = ( \CPU_RESET_n~input_o\ & ( !\debug_inst|old_switches[3]~13_combout\ $ (!\debug_inst|old_switches[3]~_emulated_q\) ) ) # ( !\CPU_RESET_n~input_o\ & ( \SW[3]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_old_switches[3]~13_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datad => \debug_inst|ALT_INV_old_switches[3]~_emulated_q\,
	dataf => \ALT_INV_CPU_RESET_n~input_o\,
	combout => \debug_inst|old_switches[3]~14_combout\);

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

-- Location: LABCELL_X35_Y18_N24
\debug_inst|old_switches[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[4]~17_combout\ = ( \debug_inst|old_switches[4]~17_combout\ & ( (\SW[4]~input_o\) # (\CPU_RESET_n~input_o\) ) ) # ( !\debug_inst|old_switches[4]~17_combout\ & ( (!\CPU_RESET_n~input_o\ & \SW[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[4]~17_combout\,
	combout => \debug_inst|old_switches[4]~17_combout\);

-- Location: LABCELL_X35_Y18_N27
\debug_inst|old_switches[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[4]~19_combout\ = ( \SW[4]~input_o\ & ( !\debug_inst|old_switches[4]~17_combout\ ) ) # ( !\SW[4]~input_o\ & ( \debug_inst|old_switches[4]~17_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_old_switches[4]~17_combout\,
	dataf => \ALT_INV_SW[4]~input_o\,
	combout => \debug_inst|old_switches[4]~19_combout\);

-- Location: FF_X35_Y18_N28
\debug_inst|old_switches[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|old_switches[4]~19_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[4]~_emulated_q\);

-- Location: LABCELL_X35_Y18_N39
\debug_inst|old_switches[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[4]~18_combout\ = ( \debug_inst|old_switches[4]~17_combout\ & ( (!\CPU_RESET_n~input_o\ & (\SW[4]~input_o\)) # (\CPU_RESET_n~input_o\ & ((!\debug_inst|old_switches[4]~_emulated_q\))) ) ) # ( !\debug_inst|old_switches[4]~17_combout\ 
-- & ( (!\CPU_RESET_n~input_o\ & (\SW[4]~input_o\)) # (\CPU_RESET_n~input_o\ & ((\debug_inst|old_switches[4]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101110100011101000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[4]~input_o\,
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \debug_inst|ALT_INV_old_switches[4]~_emulated_q\,
	dataf => \debug_inst|ALT_INV_old_switches[4]~17_combout\,
	combout => \debug_inst|old_switches[4]~18_combout\);

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

-- Location: LABCELL_X35_Y18_N15
\debug_inst|old_switches[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[2]~9_combout\ = ( \debug_inst|old_switches[2]~9_combout\ & ( (\CPU_RESET_n~input_o\) # (\SW[2]~input_o\) ) ) # ( !\debug_inst|old_switches[2]~9_combout\ & ( (\SW[2]~input_o\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[2]~9_combout\,
	combout => \debug_inst|old_switches[2]~9_combout\);

-- Location: LABCELL_X35_Y18_N36
\debug_inst|old_switches[2]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[2]~11_combout\ = ( \debug_inst|old_switches[2]~9_combout\ & ( !\SW[2]~input_o\ ) ) # ( !\debug_inst|old_switches[2]~9_combout\ & ( \SW[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[2]~9_combout\,
	combout => \debug_inst|old_switches[2]~11_combout\);

-- Location: FF_X35_Y18_N38
\debug_inst|old_switches[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|old_switches[2]~11_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[2]~_emulated_q\);

-- Location: LABCELL_X35_Y18_N12
\debug_inst|old_switches[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[2]~10_combout\ = (!\CPU_RESET_n~input_o\ & (\SW[2]~input_o\)) # (\CPU_RESET_n~input_o\ & ((!\debug_inst|old_switches[2]~9_combout\ $ (!\debug_inst|old_switches[2]~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101011100010100110101110001010011010111000101001101011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datab => \debug_inst|ALT_INV_old_switches[2]~9_combout\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	datad => \debug_inst|ALT_INV_old_switches[2]~_emulated_q\,
	combout => \debug_inst|old_switches[2]~10_combout\);

-- Location: LABCELL_X35_Y18_N42
\debug_inst|write_data[2]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data[2]~4_combout\ = ( \SW[2]~input_o\ & ( \debug_inst|old_switches[2]~10_combout\ & ( (!\debug_inst|old_switches[3]~14_combout\ & (!\SW[3]~input_o\ & (!\SW[4]~input_o\ $ (\debug_inst|old_switches[4]~18_combout\)))) # 
-- (\debug_inst|old_switches[3]~14_combout\ & (\SW[3]~input_o\ & (!\SW[4]~input_o\ $ (\debug_inst|old_switches[4]~18_combout\)))) ) ) ) # ( !\SW[2]~input_o\ & ( !\debug_inst|old_switches[2]~10_combout\ & ( (!\debug_inst|old_switches[3]~14_combout\ & 
-- (!\SW[3]~input_o\ & (!\SW[4]~input_o\ $ (\debug_inst|old_switches[4]~18_combout\)))) # (\debug_inst|old_switches[3]~14_combout\ & (\SW[3]~input_o\ & (!\SW[4]~input_o\ $ (\debug_inst|old_switches[4]~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_old_switches[3]~14_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \debug_inst|ALT_INV_old_switches[4]~18_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[2]~10_combout\,
	combout => \debug_inst|write_data[2]~4_combout\);

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

-- Location: LABCELL_X33_Y18_N42
\debug_inst|old_switches[7]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[7]~29_combout\ = ( \debug_inst|old_switches[7]~29_combout\ & ( (\CPU_RESET_n~input_o\) # (\SW[7]~input_o\) ) ) # ( !\debug_inst|old_switches[7]~29_combout\ & ( (\SW[7]~input_o\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[7]~29_combout\,
	combout => \debug_inst|old_switches[7]~29_combout\);

-- Location: LABCELL_X33_Y18_N45
\debug_inst|old_switches[7]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[7]~31_combout\ = !\SW[7]~input_o\ $ (!\debug_inst|old_switches[7]~29_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datab => \debug_inst|ALT_INV_old_switches[7]~29_combout\,
	combout => \debug_inst|old_switches[7]~31_combout\);

-- Location: FF_X33_Y18_N47
\debug_inst|old_switches[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|old_switches[7]~31_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[7]~_emulated_q\);

-- Location: LABCELL_X33_Y18_N39
\debug_inst|old_switches[7]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[7]~30_combout\ = ( \CPU_RESET_n~input_o\ & ( !\debug_inst|old_switches[7]~_emulated_q\ $ (!\debug_inst|old_switches[7]~29_combout\) ) ) # ( !\CPU_RESET_n~input_o\ & ( \SW[7]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \debug_inst|ALT_INV_old_switches[7]~_emulated_q\,
	datad => \debug_inst|ALT_INV_old_switches[7]~29_combout\,
	dataf => \ALT_INV_CPU_RESET_n~input_o\,
	combout => \debug_inst|old_switches[7]~30_combout\);

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

-- Location: LABCELL_X35_Y18_N57
\debug_inst|old_switches[5]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[5]~21_combout\ = ( \debug_inst|old_switches[5]~21_combout\ & ( (\CPU_RESET_n~input_o\) # (\SW[5]~input_o\) ) ) # ( !\debug_inst|old_switches[5]~21_combout\ & ( (\SW[5]~input_o\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[5]~21_combout\,
	combout => \debug_inst|old_switches[5]~21_combout\);

-- Location: LABCELL_X35_Y18_N18
\debug_inst|old_switches[5]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[5]~23_combout\ = ( \SW[5]~input_o\ & ( !\debug_inst|old_switches[5]~21_combout\ ) ) # ( !\SW[5]~input_o\ & ( \debug_inst|old_switches[5]~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \debug_inst|ALT_INV_old_switches[5]~21_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \debug_inst|old_switches[5]~23_combout\);

-- Location: FF_X35_Y18_N20
\debug_inst|old_switches[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|old_switches[5]~23_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[5]~_emulated_q\);

-- Location: LABCELL_X35_Y18_N54
\debug_inst|old_switches[5]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[5]~22_combout\ = ( \debug_inst|old_switches[5]~_emulated_q\ & ( (!\CPU_RESET_n~input_o\ & (\SW[5]~input_o\)) # (\CPU_RESET_n~input_o\ & ((!\debug_inst|old_switches[5]~21_combout\))) ) ) # ( 
-- !\debug_inst|old_switches[5]~_emulated_q\ & ( (!\CPU_RESET_n~input_o\ & (\SW[5]~input_o\)) # (\CPU_RESET_n~input_o\ & ((\debug_inst|old_switches[5]~21_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \debug_inst|ALT_INV_old_switches[5]~21_combout\,
	dataf => \debug_inst|ALT_INV_old_switches[5]~_emulated_q\,
	combout => \debug_inst|old_switches[5]~22_combout\);

-- Location: LABCELL_X35_Y18_N30
\debug_inst|old_switches[6]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[6]~25_combout\ = ( \debug_inst|old_switches[6]~25_combout\ & ( (\CPU_RESET_n~input_o\) # (\SW[6]~input_o\) ) ) # ( !\debug_inst|old_switches[6]~25_combout\ & ( (\SW[6]~input_o\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[6]~25_combout\,
	combout => \debug_inst|old_switches[6]~25_combout\);

-- Location: LABCELL_X35_Y18_N33
\debug_inst|old_switches[6]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[6]~27_combout\ = ( \debug_inst|old_switches[6]~25_combout\ & ( !\SW[6]~input_o\ ) ) # ( !\debug_inst|old_switches[6]~25_combout\ & ( \SW[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[6]~25_combout\,
	combout => \debug_inst|old_switches[6]~27_combout\);

-- Location: FF_X35_Y18_N35
\debug_inst|old_switches[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|old_switches[6]~27_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[6]~_emulated_q\);

-- Location: LABCELL_X35_Y18_N21
\debug_inst|old_switches[6]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[6]~26_combout\ = ( \CPU_RESET_n~input_o\ & ( !\debug_inst|old_switches[6]~_emulated_q\ $ (!\debug_inst|old_switches[6]~25_combout\) ) ) # ( !\CPU_RESET_n~input_o\ & ( \SW[6]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_old_switches[6]~_emulated_q\,
	datac => \debug_inst|ALT_INV_old_switches[6]~25_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \ALT_INV_CPU_RESET_n~input_o\,
	combout => \debug_inst|old_switches[6]~26_combout\);

-- Location: LABCELL_X35_Y18_N6
\debug_inst|write_data[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data[2]~2_combout\ = ( \debug_inst|old_switches[6]~26_combout\ & ( \SW[5]~input_o\ & ( (\SW[6]~input_o\ & (\debug_inst|old_switches[5]~22_combout\ & (!\debug_inst|old_switches[7]~30_combout\ $ (\SW[7]~input_o\)))) ) ) ) # ( 
-- !\debug_inst|old_switches[6]~26_combout\ & ( \SW[5]~input_o\ & ( (!\SW[6]~input_o\ & (\debug_inst|old_switches[5]~22_combout\ & (!\debug_inst|old_switches[7]~30_combout\ $ (\SW[7]~input_o\)))) ) ) ) # ( \debug_inst|old_switches[6]~26_combout\ & ( 
-- !\SW[5]~input_o\ & ( (\SW[6]~input_o\ & (!\debug_inst|old_switches[5]~22_combout\ & (!\debug_inst|old_switches[7]~30_combout\ $ (\SW[7]~input_o\)))) ) ) ) # ( !\debug_inst|old_switches[6]~26_combout\ & ( !\SW[5]~input_o\ & ( (!\SW[6]~input_o\ & 
-- (!\debug_inst|old_switches[5]~22_combout\ & (!\debug_inst|old_switches[7]~30_combout\ $ (\SW[7]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[6]~input_o\,
	datab => \debug_inst|ALT_INV_old_switches[7]~30_combout\,
	datac => \debug_inst|ALT_INV_old_switches[5]~22_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	datae => \debug_inst|ALT_INV_old_switches[6]~26_combout\,
	dataf => \ALT_INV_SW[5]~input_o\,
	combout => \debug_inst|write_data[2]~2_combout\);

-- Location: LABCELL_X36_Y18_N9
\debug_inst|write_data[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data[2]~7_combout\ = ( \debug_inst|write_data[2]~2_combout\ & ( (!\debug_inst|write_data[2]~1_combout\) # ((!\debug_inst|write_data[2]~3_combout\) # (!\debug_inst|write_data[2]~4_combout\)) ) ) # ( !\debug_inst|write_data[2]~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	dataf => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	combout => \debug_inst|write_data[2]~7_combout\);

-- Location: FF_X33_Y18_N11
\debug_inst|old_switches[9]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|old_switches[9]~39_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[9]~_emulated_q\);

-- Location: LABCELL_X33_Y18_N27
\debug_inst|old_switches[9]~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[9]~38_combout\ = ( \SW[9]~input_o\ & ( (!\CPU_RESET_n~input_o\) # (!\debug_inst|old_switches[9]~37_combout\ $ (!\debug_inst|old_switches[9]~_emulated_q\)) ) ) # ( !\SW[9]~input_o\ & ( (\CPU_RESET_n~input_o\ & 
-- (!\debug_inst|old_switches[9]~37_combout\ $ (!\debug_inst|old_switches[9]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011011110110111101101111011011110110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_old_switches[9]~37_combout\,
	datab => \debug_inst|ALT_INV_old_switches[9]~_emulated_q\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \debug_inst|old_switches[9]~38_combout\);

-- Location: LABCELL_X33_Y18_N30
\debug_inst|old_switches[8]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[8]~33_combout\ = ( \debug_inst|old_switches[8]~33_combout\ & ( (\CPU_RESET_n~input_o\) # (\SW[8]~input_o\) ) ) # ( !\debug_inst|old_switches[8]~33_combout\ & ( (\SW[8]~input_o\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[8]~input_o\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[8]~33_combout\,
	combout => \debug_inst|old_switches[8]~33_combout\);

-- Location: LABCELL_X33_Y18_N24
\debug_inst|old_switches[8]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[8]~35_combout\ = ( \debug_inst|old_switches[8]~33_combout\ & ( !\SW[8]~input_o\ ) ) # ( !\debug_inst|old_switches[8]~33_combout\ & ( \SW[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[8]~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[8]~33_combout\,
	combout => \debug_inst|old_switches[8]~35_combout\);

-- Location: FF_X33_Y18_N26
\debug_inst|old_switches[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|old_switches[8]~35_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|old_switches[8]~_emulated_q\);

-- Location: LABCELL_X33_Y18_N33
\debug_inst|old_switches[8]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|old_switches[8]~34_combout\ = ( \debug_inst|old_switches[8]~_emulated_q\ & ( (!\CPU_RESET_n~input_o\ & ((\SW[8]~input_o\))) # (\CPU_RESET_n~input_o\ & (!\debug_inst|old_switches[8]~33_combout\)) ) ) # ( 
-- !\debug_inst|old_switches[8]~_emulated_q\ & ( (!\CPU_RESET_n~input_o\ & ((\SW[8]~input_o\))) # (\CPU_RESET_n~input_o\ & (\debug_inst|old_switches[8]~33_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_old_switches[8]~33_combout\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_old_switches[8]~_emulated_q\,
	combout => \debug_inst|old_switches[8]~34_combout\);

-- Location: LABCELL_X33_Y18_N36
\debug_inst|write_data[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data[2]~1_combout\ = ( \SW[9]~input_o\ & ( (\debug_inst|old_switches[9]~38_combout\ & (!\SW[8]~input_o\ $ (\debug_inst|old_switches[8]~34_combout\))) ) ) # ( !\SW[9]~input_o\ & ( (!\debug_inst|old_switches[9]~38_combout\ & 
-- (!\SW[8]~input_o\ $ (\debug_inst|old_switches[8]~34_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \debug_inst|ALT_INV_old_switches[9]~38_combout\,
	datad => \debug_inst|ALT_INV_old_switches[8]~34_combout\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \debug_inst|write_data[2]~1_combout\);

-- Location: LABCELL_X36_Y18_N18
\debug_inst|reg_write_stage~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|reg_write_stage~0_combout\ = ( \debug_inst|reg_write_stage\(1) & ( \debug_inst|write_data[2]~2_combout\ & ( (\debug_inst|write_data[2]~4_combout\ & (\debug_inst|write_data[2]~3_combout\ & \debug_inst|write_data[2]~1_combout\)) ) ) ) # ( 
-- !\debug_inst|reg_write_stage\(1) & ( \debug_inst|write_data[2]~2_combout\ & ( (\debug_inst|write_data[2]~4_combout\ & (\debug_inst|write_data[2]~3_combout\ & (\debug_inst|write_data[2]~1_combout\ & \debug_inst|reg_write_stage\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datad => \debug_inst|ALT_INV_reg_write_stage\(0),
	datae => \debug_inst|ALT_INV_reg_write_stage\(1),
	dataf => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	combout => \debug_inst|reg_write_stage~0_combout\);

-- Location: FF_X36_Y18_N20
\debug_inst|reg_write_stage[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|reg_write_stage~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|reg_write_stage\(1));

-- Location: LABCELL_X36_Y18_N42
\debug_inst|write_n~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_n~1_combout\ = ( !\debug_inst|reg_write_stage\(0) & ( !\debug_inst|reg_write_stage\(1) & ( (\debug_inst|write_data[2]~1_combout\ & (\debug_inst|write_data[2]~3_combout\ & (\debug_inst|write_data[2]~4_combout\ & 
-- \debug_inst|write_data[2]~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	datad => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	datae => \debug_inst|ALT_INV_reg_write_stage\(0),
	dataf => \debug_inst|ALT_INV_reg_write_stage\(1),
	combout => \debug_inst|write_n~1_combout\);

-- Location: LABCELL_X36_Y18_N33
\debug_inst|write_data[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data[2]~6_combout\ = ( \debug_inst|reg_write_stage\(1) & ( (!\debug_inst|write_data[2]~2_combout\) # ((!\debug_inst|write_data[2]~3_combout\) # ((!\debug_inst|write_data[2]~1_combout\) # (!\debug_inst|write_data[2]~4_combout\))) ) ) # ( 
-- !\debug_inst|reg_write_stage\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111101111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datad => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	dataf => \debug_inst|ALT_INV_reg_write_stage\(1),
	combout => \debug_inst|write_data[2]~6_combout\);

-- Location: FF_X36_Y18_N44
\debug_inst|reg_write_stage[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|write_n~1_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|reg_write_stage\(0));

-- Location: LABCELL_X36_Y18_N39
\debug_inst|write_n~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_n~0_combout\ = ( \debug_inst|reg_write_stage\(1) & ( (\debug_inst|write_n~q\ & ((\debug_inst|write_data[2]~7_combout\) # (\debug_inst|reg_write_stage\(0)))) ) ) # ( !\debug_inst|reg_write_stage\(1) & ( ((!\debug_inst|reg_write_stage\(0) 
-- & !\debug_inst|write_data[2]~7_combout\)) # (\debug_inst|write_n~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111111110000001111111100000000001111110000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_reg_write_stage\(0),
	datac => \debug_inst|ALT_INV_write_data[2]~7_combout\,
	datad => \debug_inst|ALT_INV_write_n~q\,
	dataf => \debug_inst|ALT_INV_reg_write_stage\(1),
	combout => \debug_inst|write_n~0_combout\);

-- Location: FF_X36_Y18_N41
\debug_inst|write_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|write_n~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|write_n~q\);

-- Location: LABCELL_X36_Y18_N12
\debug_inst|addr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|addr[0]~0_combout\ = ( \debug_inst|write_data[2]~7_combout\ & ( \debug_inst|addr\(0) ) ) # ( !\debug_inst|write_data[2]~7_combout\ & ( (\debug_inst|reg_write_stage\(0) & ((!\debug_inst|reg_write_stage\(1)) # (\debug_inst|addr\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110011001100000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_reg_write_stage\(0),
	datac => \debug_inst|ALT_INV_reg_write_stage\(1),
	datad => \debug_inst|ALT_INV_addr\(0),
	dataf => \debug_inst|ALT_INV_write_data[2]~7_combout\,
	combout => \debug_inst|addr[0]~0_combout\);

-- Location: FF_X36_Y18_N14
\debug_inst|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|addr[0]~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|addr\(0));

-- Location: LABCELL_X36_Y18_N15
\register_interface_inst|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_interface_inst|process_0~0_combout\ = ( !\debug_inst|addr\(0) & ( \debug_inst|write_n~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \debug_inst|ALT_INV_write_n~q\,
	dataf => \debug_inst|ALT_INV_addr\(0),
	combout => \register_interface_inst|process_0~0_combout\);

-- Location: LABCELL_X36_Y18_N24
\debug_inst|write_data~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~12_combout\ = ( \debug_inst|write_data[2]~2_combout\ & ( (\debug_inst|write_data[2]~1_combout\ & (\debug_inst|write_data[2]~3_combout\ & (\SW[3]~input_o\ & \debug_inst|write_data[2]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	dataf => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	combout => \debug_inst|write_data~12_combout\);

-- Location: LABCELL_X36_Y18_N54
\debug_inst|write_data[3]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data[3]~13_combout\ = ( \debug_inst|write_data[2]~3_combout\ & ( \debug_inst|write_data[2]~2_combout\ & ( (!\debug_inst|write_data[2]~4_combout\) # ((!\debug_inst|write_data[2]~1_combout\) # ((!\debug_inst|reg_write_stage\(1) & 
-- !\debug_inst|reg_write_stage\(0)))) ) ) ) # ( !\debug_inst|write_data[2]~3_combout\ & ( \debug_inst|write_data[2]~2_combout\ ) ) # ( \debug_inst|write_data[2]~3_combout\ & ( !\debug_inst|write_data[2]~2_combout\ ) ) # ( 
-- !\debug_inst|write_data[2]~3_combout\ & ( !\debug_inst|write_data[2]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	datab => \debug_inst|ALT_INV_reg_write_stage\(1),
	datac => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datad => \debug_inst|ALT_INV_reg_write_stage\(0),
	datae => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	dataf => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	combout => \debug_inst|write_data[3]~13_combout\);

-- Location: FF_X36_Y18_N26
\debug_inst|write_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|write_data~12_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|write_data\(3));

-- Location: FF_X35_Y21_N14
\register_interface_inst|ctrlReg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|write_data\(3),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \register_interface_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(3));

-- Location: LABCELL_X33_Y18_N3
\debug_inst|write_data~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~10_combout\ = ( \SW[9]~input_o\ & ( ((\SW[2]~input_o\) # (\debug_inst|reg_write_stage\(0))) # (\debug_inst|reg_write_stage\(1)) ) ) # ( !\SW[9]~input_o\ & ( (!\debug_inst|reg_write_stage\(1) & (!\debug_inst|reg_write_stage\(0) & 
-- \SW[2]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_reg_write_stage\(1),
	datac => \debug_inst|ALT_INV_reg_write_stage\(0),
	datad => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \debug_inst|write_data~10_combout\);

-- Location: LABCELL_X36_Y18_N48
\debug_inst|write_data~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~11_combout\ = ( \debug_inst|write_data[2]~2_combout\ & ( (\debug_inst|write_data~10_combout\ & (\debug_inst|write_data[2]~3_combout\ & (\debug_inst|write_data[2]~1_combout\ & \debug_inst|write_data[2]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data~10_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datad => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	dataf => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	combout => \debug_inst|write_data~11_combout\);

-- Location: FF_X36_Y18_N50
\debug_inst|write_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|write_data~11_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|write_data\(2));

-- Location: FF_X35_Y21_N8
\register_interface_inst|ctrlReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|write_data\(2),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \register_interface_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(2));

-- Location: LABCELL_X35_Y21_N36
\motor_control_unit_inst|signal_generator_inst|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\ = ( \register_interface_inst|ctrlReg\(2) & ( ((!\register_interface_inst|ctrlReg\(3) & !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\)) # 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\) ) ) # ( !\register_interface_inst|ctrlReg\(2) & ( (\register_interface_inst|ctrlReg\(3) & (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & 
-- \motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001111000000111111111100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_interface_inst|ALT_INV_ctrlReg\(3),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\);

-- Location: FF_X35_Y21_N37
\motor_control_unit_inst|signal_generator_inst|mode_state.CR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector2~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\);

-- Location: LABCELL_X41_Y20_N3
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

-- Location: LABCELL_X40_Y20_N42
\motor_control_unit_inst|signal_generator_inst|steps_output_wire[31]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|steps_output_wire[31]~0_combout\ = ( \register_interface_inst|ctrlReg\(0) & ( !\CPU_RESET_n~input_o\ ) ) # ( !\register_interface_inst|ctrlReg\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(0),
	combout => \motor_control_unit_inst|signal_generator_inst|steps_output_wire[31]~0_combout\);

-- Location: LABCELL_X33_Y18_N21
\debug_inst|write_data~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~8_combout\ = ( \SW[8]~input_o\ & ( ((\debug_inst|reg_write_stage\(1)) # (\debug_inst|reg_write_stage\(0))) # (\SW[1]~input_o\) ) ) # ( !\SW[8]~input_o\ & ( (\SW[1]~input_o\ & (!\debug_inst|reg_write_stage\(0) & 
-- !\debug_inst|reg_write_stage\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111111111110101111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \debug_inst|ALT_INV_reg_write_stage\(0),
	datad => \debug_inst|ALT_INV_reg_write_stage\(1),
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \debug_inst|write_data~8_combout\);

-- Location: LABCELL_X36_Y18_N3
\debug_inst|write_data~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~9_combout\ = ( \debug_inst|write_data[2]~2_combout\ & ( (\debug_inst|write_data[2]~1_combout\ & (\debug_inst|write_data[2]~3_combout\ & (\debug_inst|write_data~8_combout\ & \debug_inst|write_data[2]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \debug_inst|ALT_INV_write_data~8_combout\,
	datad => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	dataf => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	combout => \debug_inst|write_data~9_combout\);

-- Location: FF_X36_Y18_N5
\debug_inst|write_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|write_data~9_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|write_data\(1));

-- Location: LABCELL_X36_Y18_N36
\register_interface_inst|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_interface_inst|process_0~1_combout\ = ( \debug_inst|addr\(0) & ( \debug_inst|write_n~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \debug_inst|ALT_INV_write_n~q\,
	dataf => \debug_inst|ALT_INV_addr\(0),
	combout => \register_interface_inst|process_0~1_combout\);

-- Location: FF_X42_Y20_N14
\register_interface_inst|speedReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|write_data\(1),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \register_interface_inst|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|speedReg\(1));

-- Location: FF_X42_Y20_N5
\register_interface_inst|speedReg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|write_data\(2),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \register_interface_inst|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|speedReg\(2));

-- Location: MLABCELL_X42_Y20_N27
\motor_control_unit_inst|signal_generator_inst|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Mux1~0_combout\ = (\register_interface_inst|speedReg\(2)) # (\register_interface_inst|speedReg\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_speedReg\(1),
	datab => \register_interface_inst|ALT_INV_speedReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Mux1~0_combout\);

-- Location: MLABCELL_X37_Y18_N9
\register_interface_inst|Mux31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_interface_inst|Mux31~0_combout\ = ( \register_interface_inst|speedReg\(0) & ( (\debug_inst|addr\(0)) # (\register_interface_inst|ctrlReg\(0)) ) ) # ( !\register_interface_inst|speedReg\(0) & ( (\register_interface_inst|ctrlReg\(0) & 
-- !\debug_inst|addr\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(0),
	datac => \debug_inst|ALT_INV_addr\(0),
	dataf => \register_interface_inst|ALT_INV_speedReg\(0),
	combout => \register_interface_inst|Mux31~0_combout\);

-- Location: MLABCELL_X37_Y18_N42
\debug_inst|run_bit~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|run_bit~1_combout\ = ( \debug_inst|run_bit~1_combout\ & ( (\CPU_RESET_n~input_o\) # (\register_interface_inst|Mux31~0_combout\) ) ) # ( !\debug_inst|run_bit~1_combout\ & ( (\register_interface_inst|Mux31~0_combout\ & !\CPU_RESET_n~input_o\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_interface_inst|ALT_INV_Mux31~0_combout\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_run_bit~1_combout\,
	combout => \debug_inst|run_bit~1_combout\);

-- Location: MLABCELL_X37_Y18_N6
\debug_inst|run_bit~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|run_bit~3_combout\ = ( \debug_inst|run_bit~2_combout\ & ( !\debug_inst|run_bit~1_combout\ $ (((!\register_interface_inst|Mux31~0_combout\) # (\debug_inst|key0_inst|STkey.newpress~q\))) ) ) # ( !\debug_inst|run_bit~2_combout\ & ( 
-- !\debug_inst|run_bit~1_combout\ $ (((!\register_interface_inst|Mux31~0_combout\ & !\debug_inst|key0_inst|STkey.newpress~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111000000001111111100000000110000110011110011000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_interface_inst|ALT_INV_Mux31~0_combout\,
	datac => \debug_inst|key0_inst|ALT_INV_STkey.newpress~q\,
	datad => \debug_inst|ALT_INV_run_bit~1_combout\,
	dataf => \debug_inst|ALT_INV_run_bit~2_combout\,
	combout => \debug_inst|run_bit~3_combout\);

-- Location: FF_X37_Y18_N8
\debug_inst|run_bit~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|run_bit~3_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|run_bit~_emulated_q\);

-- Location: MLABCELL_X37_Y18_N45
\debug_inst|run_bit~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|run_bit~2_combout\ = ( \debug_inst|run_bit~1_combout\ & ( (!\CPU_RESET_n~input_o\ & (\register_interface_inst|Mux31~0_combout\)) # (\CPU_RESET_n~input_o\ & ((!\debug_inst|run_bit~_emulated_q\))) ) ) # ( !\debug_inst|run_bit~1_combout\ & ( 
-- (!\CPU_RESET_n~input_o\ & (\register_interface_inst|Mux31~0_combout\)) # (\CPU_RESET_n~input_o\ & ((\debug_inst|run_bit~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100110011111100000011001111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_interface_inst|ALT_INV_Mux31~0_combout\,
	datac => \debug_inst|ALT_INV_run_bit~_emulated_q\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \debug_inst|ALT_INV_run_bit~1_combout\,
	combout => \debug_inst|run_bit~2_combout\);

-- Location: LABCELL_X33_Y18_N0
\debug_inst|write_data~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~0_combout\ = ( \debug_inst|run_bit~2_combout\ & ( ((!\debug_inst|reg_write_stage\(1) & !\debug_inst|reg_write_stage\(0))) # (\SW[7]~input_o\) ) ) # ( !\debug_inst|run_bit~2_combout\ & ( (\SW[7]~input_o\ & 
-- ((\debug_inst|reg_write_stage\(0)) # (\debug_inst|reg_write_stage\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111111001111000011111100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \debug_inst|ALT_INV_reg_write_stage\(1),
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \debug_inst|ALT_INV_reg_write_stage\(0),
	dataf => \debug_inst|ALT_INV_run_bit~2_combout\,
	combout => \debug_inst|write_data~0_combout\);

-- Location: LABCELL_X36_Y18_N0
\debug_inst|write_data~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~5_combout\ = ( \debug_inst|write_data[2]~2_combout\ & ( (\debug_inst|write_data[2]~1_combout\ & (\debug_inst|write_data[2]~3_combout\ & (\debug_inst|write_data~0_combout\ & \debug_inst|write_data[2]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \debug_inst|ALT_INV_write_data~0_combout\,
	datad => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	dataf => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	combout => \debug_inst|write_data~5_combout\);

-- Location: FF_X36_Y18_N2
\debug_inst|write_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|write_data~5_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|write_data\(0));

-- Location: FF_X42_Y20_N38
\register_interface_inst|speedReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|write_data\(0),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \register_interface_inst|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|speedReg\(0));

-- Location: MLABCELL_X42_Y20_N48
\motor_control_unit_inst|signal_generator_inst|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\ = ( !\register_interface_inst|speedReg\(2) & ( !\register_interface_inst|speedReg\(0) $ (!\register_interface_inst|speedReg\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_interface_inst|ALT_INV_speedReg\(0),
	datac => \register_interface_inst|ALT_INV_speedReg\(1),
	dataf => \register_interface_inst|ALT_INV_speedReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\);

-- Location: MLABCELL_X42_Y20_N15
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\ & ( (\CPU_RESET_n~input_o\) # (\motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\) ) 
-- ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux2~0_combout\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~9_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\);

-- Location: MLABCELL_X42_Y20_N24
\motor_control_unit_inst|signal_generator_inst|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Mux3~0_combout\ = (\register_interface_inst|speedReg\(1) & !\register_interface_inst|speedReg\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_speedReg\(1),
	datab => \register_interface_inst|ALT_INV_speedReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Mux3~0_combout\);

-- Location: LABCELL_X40_Y20_N39
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13_combout\ & ( (\CPU_RESET_n~input_o\) # (\motor_control_unit_inst|signal_generator_inst|Mux3~0_combout\) 
-- ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|Mux3~0_combout\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux3~0_combout\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~13_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13_combout\);

-- Location: MLABCELL_X42_Y20_N39
\motor_control_unit_inst|signal_generator_inst|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Mux4~0_combout\ = ( \register_interface_inst|speedReg\(2) & ( (\register_interface_inst|speedReg\(0)) # (\register_interface_inst|speedReg\(1)) ) ) # ( !\register_interface_inst|speedReg\(2) & ( 
-- (!\register_interface_inst|speedReg\(1)) # (!\register_interface_inst|speedReg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_speedReg\(1),
	datac => \register_interface_inst|ALT_INV_speedReg\(0),
	dataf => \register_interface_inst|ALT_INV_speedReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Mux4~0_combout\);

-- Location: LABCELL_X40_Y20_N15
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|Mux4~0_combout\) # (\CPU_RESET_n~input_o\) 
-- ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|Mux4~0_combout\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000101010100000000010101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux4~0_combout\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~17_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\);

-- Location: MLABCELL_X42_Y20_N0
\motor_control_unit_inst|signal_generator_inst|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Mux5~0_combout\ = ( \register_interface_inst|speedReg\(2) & ( (!\register_interface_inst|speedReg\(0)) # (\register_interface_inst|speedReg\(1)) ) ) # ( !\register_interface_inst|speedReg\(2) & ( 
-- (\register_interface_inst|speedReg\(0)) # (\register_interface_inst|speedReg\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011111011101110111011101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_speedReg\(1),
	datab => \register_interface_inst|ALT_INV_speedReg\(0),
	dataf => \register_interface_inst|ALT_INV_speedReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Mux5~0_combout\);

-- Location: LABCELL_X40_Y20_N30
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|Mux5~0_combout\) # (\CPU_RESET_n~input_o\) 
-- ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|Mux5~0_combout\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux5~0_combout\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~21_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21_combout\);

-- Location: MLABCELL_X42_Y20_N3
\motor_control_unit_inst|signal_generator_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Mux6~0_combout\ = (!\register_interface_inst|speedReg\(1) & ((!\register_interface_inst|speedReg\(2)))) # (\register_interface_inst|speedReg\(1) & (!\register_interface_inst|speedReg\(0) & 
-- \register_interface_inst|speedReg\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000100101010100100010010101010010001001010101001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_speedReg\(1),
	datab => \register_interface_inst|ALT_INV_speedReg\(0),
	datad => \register_interface_inst|ALT_INV_speedReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Mux6~0_combout\);

-- Location: MLABCELL_X42_Y20_N42
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25_combout\ & ( (\CPU_RESET_n~input_o\) # (\motor_control_unit_inst|signal_generator_inst|Mux6~0_combout\) 
-- ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|Mux6~0_combout\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux6~0_combout\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~25_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25_combout\);

-- Location: MLABCELL_X42_Y20_N36
\motor_control_unit_inst|signal_generator_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\ = (!\register_interface_inst|speedReg\(1) & ((!\register_interface_inst|speedReg\(2)) # (!\register_interface_inst|speedReg\(0)))) # (\register_interface_inst|speedReg\(1) & 
-- (!\register_interface_inst|speedReg\(2) & !\register_interface_inst|speedReg\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111010001000111011101000100011101110100010001110111010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_speedReg\(1),
	datab => \register_interface_inst|ALT_INV_speedReg\(2),
	datad => \register_interface_inst|ALT_INV_speedReg\(0),
	combout => \motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\);

-- Location: MLABCELL_X42_Y20_N30
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\) # (\CPU_RESET_n~input_o\) 
-- ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\ & ( (!\CPU_RESET_n~input_o\ & \motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux7~0_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~29_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\);

-- Location: MLABCELL_X42_Y20_N12
\motor_control_unit_inst|signal_generator_inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Mux8~0_combout\ = ( \register_interface_inst|speedReg\(0) ) # ( !\register_interface_inst|speedReg\(0) & ( (!\register_interface_inst|speedReg\(2)) # (!\register_interface_inst|speedReg\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111001100111111111100110011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_interface_inst|ALT_INV_speedReg\(2),
	datad => \register_interface_inst|ALT_INV_speedReg\(1),
	dataf => \register_interface_inst|ALT_INV_speedReg\(0),
	combout => \motor_control_unit_inst|signal_generator_inst|Mux8~0_combout\);

-- Location: LABCELL_X40_Y20_N51
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33_combout\ & ( (\CPU_RESET_n~input_o\) # (\motor_control_unit_inst|signal_generator_inst|Mux8~0_combout\) 
-- ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|Mux8~0_combout\ & !\CPU_RESET_n~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux8~0_combout\,
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~33_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33_combout\);

-- Location: LABCELL_X41_Y20_N30
\motor_control_unit_inst|signal_generator_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~34_combout\ ) + ( VCC ) + ( !VCC ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~14\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~34_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~34_combout\,
	cin => GND,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~14\);

-- Location: LABCELL_X40_Y20_N57
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~35_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33_combout\ $ 
-- (((!\motor_control_unit_inst|signal_generator_inst|Mux8~0_combout\ & \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\))) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Add0~13_sumout\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33_combout\ $ (((!\motor_control_unit_inst|signal_generator_inst|Mux8~0_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101100110010101010110011010101010011001101010101001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~33_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux8~0_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~13_sumout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~35_combout\);

-- Location: FF_X40_Y20_N58
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~35_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~_emulated_q\);

-- Location: LABCELL_X40_Y20_N54
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~34_combout\ = (!\CPU_RESET_n~input_o\ & (((\motor_control_unit_inst|signal_generator_inst|Mux8~0_combout\)))) # (\CPU_RESET_n~input_o\ & 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~33_combout\ $ (((!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~_emulated_q\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101011010001100110101101000110011010110100011001101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~33_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux8~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~_emulated_q\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~34_combout\);

-- Location: LABCELL_X41_Y20_N33
\motor_control_unit_inst|signal_generator_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~30_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~14\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~10\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~30_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~30_combout\,
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~14\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~10\);

-- Location: MLABCELL_X42_Y20_N9
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~31_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\ $ 
-- (((!\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ & !\motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\))) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\ $ (((!\motor_control_unit_inst|signal_generator_inst|Add0~9_sumout\) # (\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010101011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~29_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~9_sumout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux7~0_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~31_combout\);

-- Location: FF_X42_Y20_N11
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~31_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~_emulated_q\);

-- Location: MLABCELL_X42_Y20_N54
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~30_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\ & ( (!\CPU_RESET_n~input_o\ & 
-- ((\motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\))) # (\CPU_RESET_n~input_o\ & (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~_emulated_q\)) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~29_combout\ & ( (!\CPU_RESET_n~input_o\ & ((\motor_control_unit_inst|signal_generator_inst|Mux7~0_combout\))) # (\CPU_RESET_n~input_o\ & 
-- (\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~_emulated_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111110011000000111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~_emulated_q\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux7~0_combout\,
	datad => \ALT_INV_CPU_RESET_n~input_o\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~29_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~30_combout\);

-- Location: LABCELL_X41_Y20_N36
\motor_control_unit_inst|signal_generator_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~5_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~26_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~10\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~6\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~26_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~26_combout\,
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~10\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~5_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~6\);

-- Location: MLABCELL_X42_Y20_N45
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~27_combout\ = !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25_combout\ $ (((!\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ & 
-- ((!\motor_control_unit_inst|signal_generator_inst|Add0~5_sumout\))) # (\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ & (!\motor_control_unit_inst|signal_generator_inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001100110001111000110011000111100011001100011110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux6~0_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~25_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~5_sumout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~27_combout\);

-- Location: FF_X42_Y20_N47
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~27_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~_emulated_q\);

-- Location: MLABCELL_X42_Y20_N18
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~26_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25_combout\ & ( (!\CPU_RESET_n~input_o\ & (\motor_control_unit_inst|signal_generator_inst|Mux6~0_combout\)) 
-- # (\CPU_RESET_n~input_o\ & ((!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~_emulated_q\))) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~25_combout\ & ( (!\CPU_RESET_n~input_o\ & 
-- (\motor_control_unit_inst|signal_generator_inst|Mux6~0_combout\)) # (\CPU_RESET_n~input_o\ & ((\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111101011111000010100101111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux6~0_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~_emulated_q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~25_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~26_combout\);

-- Location: LABCELL_X41_Y20_N39
\motor_control_unit_inst|signal_generator_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~22_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~6\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~2\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~22_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~22_combout\,
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~6\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~2\);

-- Location: MLABCELL_X42_Y20_N33
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~23_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21_combout\ $ 
-- (((\motor_control_unit_inst|signal_generator_inst|Mux5~0_combout\ & \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\))) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Add0~1_sumout\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21_combout\ $ (((!\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\) # (\motor_control_unit_inst|signal_generator_inst|Mux5~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100101000011111010010111110000101001011111000010100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux5~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~21_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~1_sumout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~23_combout\);

-- Location: FF_X42_Y20_N35
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~23_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~_emulated_q\);

-- Location: MLABCELL_X42_Y20_N6
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~22_combout\ = ( \CPU_RESET_n~input_o\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~21_combout\ $ 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~_emulated_q\) ) ) # ( !\CPU_RESET_n~input_o\ & ( !\motor_control_unit_inst|signal_generator_inst|Mux5~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~21_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~_emulated_q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux5~0_combout\,
	dataf => \ALT_INV_CPU_RESET_n~input_o\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~22_combout\);

-- Location: LABCELL_X41_Y20_N42
\motor_control_unit_inst|signal_generator_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~33_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~18_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~2\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~34\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~18_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~18_combout\,
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~2\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~33_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~34\);

-- Location: LABCELL_X41_Y20_N24
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~19_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\ $ 
-- (\motor_control_unit_inst|signal_generator_inst|Mux4~0_combout\) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\ $ 
-- (!\motor_control_unit_inst|signal_generator_inst|Add0~33_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110011000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~17_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux4~0_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~33_sumout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~19_combout\);

-- Location: FF_X41_Y20_N26
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~19_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~_emulated_q\);

-- Location: LABCELL_X41_Y20_N15
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~18_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Mux4~0_combout\ & ( (\CPU_RESET_n~input_o\ & (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\ $ 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~_emulated_q\))) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Mux4~0_combout\ & ( (!\CPU_RESET_n~input_o\) # 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~17_combout\ $ (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~_emulated_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111111100110011111111110000000011001100000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~17_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~_emulated_q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux4~0_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~18_combout\);

-- Location: LABCELL_X41_Y20_N45
\motor_control_unit_inst|signal_generator_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~29_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~14_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~34\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~30\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~14_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~14_combout\,
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~34\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~29_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~30\);

-- Location: LABCELL_X40_Y20_N36
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~15_combout\ = !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13_combout\ $ (((!\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ & 
-- ((!\motor_control_unit_inst|signal_generator_inst|Add0~29_sumout\))) # (\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ & (!\motor_control_unit_inst|signal_generator_inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001100110001111000110011000111100011001100011110001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux3~0_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~13_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~29_sumout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~15_combout\);

-- Location: FF_X40_Y20_N37
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~15_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~_emulated_q\);

-- Location: LABCELL_X40_Y20_N45
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~14_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13_combout\ & ( (!\CPU_RESET_n~input_o\ & 
-- ((\motor_control_unit_inst|signal_generator_inst|Mux3~0_combout\))) # (\CPU_RESET_n~input_o\ & (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~_emulated_q\)) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~13_combout\ & ( (!\CPU_RESET_n~input_o\ & ((\motor_control_unit_inst|signal_generator_inst|Mux3~0_combout\))) # (\CPU_RESET_n~input_o\ & 
-- (\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~_emulated_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111101010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~_emulated_q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux3~0_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~13_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~14_combout\);

-- Location: LABCELL_X41_Y20_N48
\motor_control_unit_inst|signal_generator_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~10_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~30\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~26\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~10_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~10_combout\,
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~30\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~26\);

-- Location: MLABCELL_X42_Y20_N57
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~11_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\ $ 
-- (((!\motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\ & !\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\))) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\ $ (((!\motor_control_unit_inst|signal_generator_inst|Add0~25_sumout\) # (\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000001111010110100000111101011010111100000101101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~25_sumout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~9_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux2~0_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~11_combout\);

-- Location: FF_X42_Y20_N59
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~11_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~_emulated_q\);

-- Location: MLABCELL_X42_Y20_N21
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~10_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\ & ( (!\CPU_RESET_n~input_o\) # (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\ 
-- $ (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~_emulated_q\)) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Mux2~0_combout\ & ( (\CPU_RESET_n~input_o\ & 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~9_combout\ $ (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000010101111111110101010111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~9_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~_emulated_q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux2~0_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~10_combout\);

-- Location: LABCELL_X41_Y20_N51
\motor_control_unit_inst|signal_generator_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~6_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~26\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add0~22\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~6_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~6_combout\,
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~26\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add0~22\);

-- Location: LABCELL_X41_Y20_N9
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|Mux1~0_combout\) # (\CPU_RESET_n~input_o\) ) 
-- ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5_combout\ & ( (!\CPU_RESET_n~input_o\ & !\motor_control_unit_inst|signal_generator_inst|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_CPU_RESET_n~input_o\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux1~0_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~5_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5_combout\);

-- Location: LABCELL_X40_Y20_N33
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~7_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Mux1~0_combout\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5_combout\ $ 
-- (((!\motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\) # (\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\))) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Mux1~0_combout\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5_combout\ $ (((!\motor_control_unit_inst|signal_generator_inst|Add0~21_sumout\ & !\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011110000010110101111000001011010000011110101101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~21_sumout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~5_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux1~0_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~7_combout\);

-- Location: FF_X40_Y20_N34
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~7_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~_emulated_q\);

-- Location: LABCELL_X41_Y20_N27
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~6_combout\ = ( \CPU_RESET_n~input_o\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~_emulated_q\ $ 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~5_combout\) ) ) # ( !\CPU_RESET_n~input_o\ & ( !\motor_control_unit_inst|signal_generator_inst|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux1~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~_emulated_q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~5_combout\,
	dataf => \ALT_INV_CPU_RESET_n~input_o\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~6_combout\);

-- Location: MLABCELL_X42_Y20_N51
\motor_control_unit_inst|signal_generator_inst|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Mux0~0_combout\ = ( !\register_interface_inst|speedReg\(2) & ( (!\register_interface_inst|speedReg\(1) & !\register_interface_inst|speedReg\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_speedReg\(1),
	datab => \register_interface_inst|ALT_INV_speedReg\(0),
	dataf => \register_interface_inst|ALT_INV_speedReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Mux0~0_combout\);

-- Location: LABCELL_X41_Y20_N18
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|Mux0~0_combout\) # (\CPU_RESET_n~input_o\) ) 
-- ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\ & ( (!\CPU_RESET_n~input_o\ & \motor_control_unit_inst|signal_generator_inst|Mux0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux0~0_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~1_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\);

-- Location: LABCELL_X41_Y20_N54
\motor_control_unit_inst|signal_generator_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~2_combout\ ) + ( VCC ) + ( \motor_control_unit_inst|signal_generator_inst|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~2_combout\,
	cin => \motor_control_unit_inst|signal_generator_inst|Add0~22\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\);

-- Location: LABCELL_X41_Y20_N12
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~3_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\ $ 
-- (!\motor_control_unit_inst|signal_generator_inst|Mux0~0_combout\) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ & ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\ $ 
-- (!\motor_control_unit_inst|signal_generator_inst|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~1_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux0~0_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Add0~17_sumout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~1_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~3_combout\);

-- Location: FF_X41_Y20_N14
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~3_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~_emulated_q\);

-- Location: LABCELL_X41_Y20_N21
\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~2_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\ & ( (!\CPU_RESET_n~input_o\ & (\motor_control_unit_inst|signal_generator_inst|Mux0~0_combout\)) # 
-- (\CPU_RESET_n~input_o\ & ((!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~_emulated_q\))) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~1_combout\ & ( (!\CPU_RESET_n~input_o\ & 
-- (\motor_control_unit_inst|signal_generator_inst|Mux0~0_combout\)) # (\CPU_RESET_n~input_o\ & ((\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~_emulated_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101110100011101000111010001110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Mux0~0_combout\,
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~_emulated_q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~1_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~2_combout\);

-- Location: LABCELL_X41_Y20_N0
\motor_control_unit_inst|signal_generator_inst|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal8~0_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[8]~2_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[7]~6_combout\ & 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[4]~18_combout\ & (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[5]~14_combout\ & !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[6]~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[7]~6_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[4]~18_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[5]~14_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[6]~10_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[8]~2_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal8~0_combout\);

-- Location: LABCELL_X41_Y20_N6
\motor_control_unit_inst|signal_generator_inst|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[1]~30_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|Equal8~0_combout\ & 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[2]~26_combout\ & (!\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[0]~34_combout\ & !\motor_control_unit_inst|signal_generator_inst|pwm_5ms_counter[3]~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal8~0_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[2]~26_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[0]~34_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[3]~22_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_5ms_counter[1]~30_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\);

-- Location: FF_X36_Y21_N35
\motor_control_unit_inst|signal_generator_inst|steps_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|steps_counter[0]~0_combout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(0));

-- Location: LABCELL_X38_Y21_N0
\motor_control_unit_inst|signal_generator_inst|Add3~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~89_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(0) ) + ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(1) ) + ( !VCC ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~90\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(0) ) + ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(1) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(1),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(0),
	cin => GND,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~89_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~90\);

-- Location: FF_X37_Y21_N53
\motor_control_unit_inst|signal_generator_inst|steps_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~89_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(1));

-- Location: LABCELL_X38_Y21_N3
\motor_control_unit_inst|signal_generator_inst|Add3~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~61_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(2) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~90\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~62\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(2) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(2),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~90\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~61_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~62\);

-- Location: FF_X37_Y21_N29
\motor_control_unit_inst|signal_generator_inst|steps_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~61_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(2));

-- Location: LABCELL_X38_Y21_N6
\motor_control_unit_inst|signal_generator_inst|Add3~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~65_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(3) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~62\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~66\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(3) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(3),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~62\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~65_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~66\);

-- Location: FF_X37_Y21_N35
\motor_control_unit_inst|signal_generator_inst|steps_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~65_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(3));

-- Location: LABCELL_X38_Y21_N9
\motor_control_unit_inst|signal_generator_inst|Add3~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~101_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(4) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~66\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~102\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(4) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(4),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~66\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~101_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~102\);

-- Location: FF_X36_Y21_N47
\motor_control_unit_inst|signal_generator_inst|steps_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~101_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(4));

-- Location: LABCELL_X38_Y21_N12
\motor_control_unit_inst|signal_generator_inst|Add3~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~113_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(5) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~102\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~114\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(5) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(5),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~102\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~113_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~114\);

-- Location: FF_X37_Y21_N56
\motor_control_unit_inst|signal_generator_inst|steps_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~113_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(5));

-- Location: LABCELL_X38_Y21_N15
\motor_control_unit_inst|signal_generator_inst|Add3~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~93_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(6) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~114\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~94\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(6) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(6),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~114\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~93_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~94\);

-- Location: FF_X37_Y21_N59
\motor_control_unit_inst|signal_generator_inst|steps_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~93_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(6));

-- Location: LABCELL_X38_Y21_N18
\motor_control_unit_inst|signal_generator_inst|Add3~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~97_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(7) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~94\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~98\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(7) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~94\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~97_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~98\);

-- Location: FF_X36_Y21_N44
\motor_control_unit_inst|signal_generator_inst|steps_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~97_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(7));

-- Location: LABCELL_X38_Y21_N21
\motor_control_unit_inst|signal_generator_inst|Add3~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~69_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(8) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~98\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~70\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(8) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(8),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~98\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~69_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~70\);

-- Location: FF_X37_Y21_N26
\motor_control_unit_inst|signal_generator_inst|steps_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~69_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(8));

-- Location: LABCELL_X38_Y21_N24
\motor_control_unit_inst|signal_generator_inst|Add3~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~105_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(9) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~70\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~106\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(9) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(9),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~70\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~105_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~106\);

-- Location: FF_X36_Y21_N50
\motor_control_unit_inst|signal_generator_inst|steps_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~105_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(9));

-- Location: LABCELL_X38_Y21_N27
\motor_control_unit_inst|signal_generator_inst|Add3~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~109_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(10) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~106\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~110\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(10) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(10),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~106\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~109_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~110\);

-- Location: FF_X37_Y21_N2
\motor_control_unit_inst|signal_generator_inst|steps_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~109_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(10));

-- Location: LABCELL_X38_Y21_N30
\motor_control_unit_inst|signal_generator_inst|Add3~117\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~117_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(11) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~110\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~118\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(11) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(11),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~110\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~117_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~118\);

-- Location: FF_X37_Y21_N50
\motor_control_unit_inst|signal_generator_inst|steps_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~117_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(11));

-- Location: LABCELL_X38_Y21_N33
\motor_control_unit_inst|signal_generator_inst|Add3~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~121_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(12) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~118\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~122\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(12) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(12),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~118\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~121_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~122\);

-- Location: FF_X37_Y21_N14
\motor_control_unit_inst|signal_generator_inst|steps_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~121_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(12));

-- Location: LABCELL_X38_Y21_N36
\motor_control_unit_inst|signal_generator_inst|Add3~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~73_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(13) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~122\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~74\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(13) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(13),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~122\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~73_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~74\);

-- Location: FF_X37_Y21_N41
\motor_control_unit_inst|signal_generator_inst|steps_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~73_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(13));

-- Location: LABCELL_X38_Y21_N39
\motor_control_unit_inst|signal_generator_inst|Add3~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~77_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(14) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~74\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~78\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(14) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(14),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~74\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~77_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~78\);

-- Location: FF_X37_Y21_N17
\motor_control_unit_inst|signal_generator_inst|steps_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~77_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(14));

-- Location: LABCELL_X38_Y21_N42
\motor_control_unit_inst|signal_generator_inst|Add3~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~81_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(15) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~78\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~82\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(15) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(15),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~78\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~81_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~82\);

-- Location: FF_X37_Y21_N38
\motor_control_unit_inst|signal_generator_inst|steps_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~81_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(15));

-- Location: LABCELL_X38_Y21_N45
\motor_control_unit_inst|signal_generator_inst|Add3~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~85_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(16) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~82\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~86\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(16) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(16),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~82\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~85_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~86\);

-- Location: FF_X37_Y21_N20
\motor_control_unit_inst|signal_generator_inst|steps_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~85_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(16));

-- Location: LABCELL_X38_Y21_N48
\motor_control_unit_inst|signal_generator_inst|Add3~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~45_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(17) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~86\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~46\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(17) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(17),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~86\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~45_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~46\);

-- Location: FF_X37_Y21_N47
\motor_control_unit_inst|signal_generator_inst|steps_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~45_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(17));

-- Location: LABCELL_X38_Y21_N51
\motor_control_unit_inst|signal_generator_inst|Add3~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~49_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(18) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~46\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~50\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(18) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(18),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~46\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~49_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~50\);

-- Location: FF_X37_Y21_N23
\motor_control_unit_inst|signal_generator_inst|steps_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~49_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(18));

-- Location: LABCELL_X38_Y21_N54
\motor_control_unit_inst|signal_generator_inst|Add3~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~53_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(19) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~50\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~54\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(19) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(19),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~50\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~53_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~54\);

-- Location: FF_X37_Y21_N44
\motor_control_unit_inst|signal_generator_inst|steps_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~53_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(19));

-- Location: LABCELL_X38_Y21_N57
\motor_control_unit_inst|signal_generator_inst|Add3~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~57_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(20) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~54\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~58\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(20) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(20),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~54\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~57_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~58\);

-- Location: FF_X38_Y20_N44
\motor_control_unit_inst|signal_generator_inst|steps_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~57_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(20));

-- Location: LABCELL_X38_Y20_N0
\motor_control_unit_inst|signal_generator_inst|Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~29_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(21) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~58\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~30\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(21) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(21),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~58\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~29_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~30\);

-- Location: FF_X38_Y20_N53
\motor_control_unit_inst|signal_generator_inst|steps_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~29_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(21));

-- Location: LABCELL_X38_Y20_N3
\motor_control_unit_inst|signal_generator_inst|Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~33_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(22) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~30\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~34\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(22) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(22),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~30\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~33_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~34\);

-- Location: FF_X36_Y21_N32
\motor_control_unit_inst|signal_generator_inst|steps_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~33_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(22));

-- Location: LABCELL_X38_Y20_N6
\motor_control_unit_inst|signal_generator_inst|Add3~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~37_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(23) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~34\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~38\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(23) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(23),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~34\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~37_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~38\);

-- Location: FF_X38_Y20_N59
\motor_control_unit_inst|signal_generator_inst|steps_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~37_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(23));

-- Location: LABCELL_X38_Y20_N9
\motor_control_unit_inst|signal_generator_inst|Add3~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~41_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(24) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~38\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~42\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(24) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(24),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~38\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~41_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~42\);

-- Location: FF_X38_Y20_N56
\motor_control_unit_inst|signal_generator_inst|steps_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~41_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(24));

-- Location: FF_X35_Y21_N1
\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector1~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\);

-- Location: LABCELL_X38_Y20_N54
\motor_control_unit_inst|signal_generator_inst|Equal6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~7_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(24) & ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(22) & (\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(21) & 
-- \motor_control_unit_inst|signal_generator_inst|steps_counter\(23)))) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(24) & ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(22) & (!\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(21) & 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(23)))) ) ) ) # ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(24) & ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(22) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(21) & \motor_control_unit_inst|signal_generator_inst|steps_counter\(23))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010110000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(22),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(21),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(23),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(24),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~7_combout\);

-- Location: LABCELL_X35_Y21_N39
\motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\);

-- Location: MLABCELL_X37_Y21_N18
\motor_control_unit_inst|signal_generator_inst|Selector3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~1_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(16) & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(19) & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(15) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(17) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(18) & 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(15),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(17),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(18),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(14),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(16),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(19),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~1_combout\);

-- Location: MLABCELL_X37_Y21_N12
\motor_control_unit_inst|signal_generator_inst|Selector3~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~4_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(12) & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(11) & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(1) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(0) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(10) & 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(1),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(0),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(10),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(13),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(12),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(11),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~4_combout\);

-- Location: LABCELL_X38_Y20_N12
\motor_control_unit_inst|signal_generator_inst|Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~13_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(25) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~42\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~14\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(25) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(25),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~42\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~13_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~14\);

-- Location: FF_X38_Y20_N47
\motor_control_unit_inst|signal_generator_inst|steps_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~13_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(25));

-- Location: LABCELL_X38_Y20_N15
\motor_control_unit_inst|signal_generator_inst|Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~17_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(26) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~14\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~18\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(26) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(26),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~14\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~17_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~18\);

-- Location: FF_X37_Y21_N8
\motor_control_unit_inst|signal_generator_inst|steps_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~17_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(26));

-- Location: LABCELL_X38_Y20_N18
\motor_control_unit_inst|signal_generator_inst|Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~21_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(27) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~18\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~22\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(27) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(27),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~18\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~21_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~22\);

-- Location: FF_X38_Y20_N50
\motor_control_unit_inst|signal_generator_inst|steps_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~21_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(27));

-- Location: LABCELL_X38_Y20_N21
\motor_control_unit_inst|signal_generator_inst|Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~25_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(28) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~22\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~26\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(28) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(28),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~22\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~25_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~26\);

-- Location: FF_X38_Y20_N38
\motor_control_unit_inst|signal_generator_inst|steps_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~25_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(28));

-- Location: LABCELL_X38_Y20_N24
\motor_control_unit_inst|signal_generator_inst|Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~1_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(29) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~26\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~2\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(29) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(29),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~26\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~1_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~2\);

-- Location: FF_X38_Y20_N35
\motor_control_unit_inst|signal_generator_inst|steps_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~1_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(29));

-- Location: LABCELL_X38_Y20_N27
\motor_control_unit_inst|signal_generator_inst|Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~5_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(30) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~2\ ))
-- \motor_control_unit_inst|signal_generator_inst|Add3~6\ = CARRY(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(30) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(30),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~2\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~5_sumout\,
	cout => \motor_control_unit_inst|signal_generator_inst|Add3~6\);

-- Location: FF_X37_Y21_N5
\motor_control_unit_inst|signal_generator_inst|steps_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~5_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(30));

-- Location: LABCELL_X38_Y20_N30
\motor_control_unit_inst|signal_generator_inst|Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Add3~9_sumout\ = SUM(( \motor_control_unit_inst|signal_generator_inst|steps_counter\(31) ) + ( GND ) + ( \motor_control_unit_inst|signal_generator_inst|Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(31),
	cin => \motor_control_unit_inst|signal_generator_inst|Add3~6\,
	sumout => \motor_control_unit_inst|signal_generator_inst|Add3~9_sumout\);

-- Location: FF_X38_Y20_N41
\motor_control_unit_inst|signal_generator_inst|steps_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	asdata => \motor_control_unit_inst|signal_generator_inst|Add3~9_sumout\,
	clrn => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_output_wire[31]~0_combout\,
	sload => VCC,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|steps_counter\(31));

-- Location: LABCELL_X38_Y20_N36
\motor_control_unit_inst|signal_generator_inst|Selector3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~3_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(31) & ( (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(29) & 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(30) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(27) & !\motor_control_unit_inst|signal_generator_inst|steps_counter\(28)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(29),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(30),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(27),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(28),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(31),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~3_combout\);

-- Location: LABCELL_X38_Y20_N42
\motor_control_unit_inst|signal_generator_inst|Selector3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~2_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(20) & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(22) & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(24) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(23) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(21) & 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(24),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(23),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(21),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(25),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(20),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(22),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~2_combout\);

-- Location: MLABCELL_X37_Y21_N57
\motor_control_unit_inst|signal_generator_inst|Selector3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~5_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(4) & ( (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(3) & 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(8) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(9) & \motor_control_unit_inst|signal_generator_inst|steps_counter\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(3),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(8),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(9),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(6),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(4),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~5_combout\);

-- Location: MLABCELL_X37_Y21_N9
\motor_control_unit_inst|signal_generator_inst|Selector3~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~6_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(26) & ( \motor_control_unit_inst|signal_generator_inst|Selector3~5_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|Selector3~1_combout\ & (\motor_control_unit_inst|signal_generator_inst|Selector3~4_combout\ & (\motor_control_unit_inst|signal_generator_inst|Selector3~3_combout\ & 
-- \motor_control_unit_inst|signal_generator_inst|Selector3~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~1_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~4_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~3_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~2_combout\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(26),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~5_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~6_combout\);

-- Location: MLABCELL_X37_Y21_N27
\motor_control_unit_inst|signal_generator_inst|Selector3~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~7_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(5) & ( (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(7) & 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(2),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(5),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~7_combout\);

-- Location: LABCELL_X35_Y21_N54
\motor_control_unit_inst|signal_generator_inst|Selector3~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~8_combout\ = ( \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & ( \motor_control_unit_inst|signal_generator_inst|Selector3~7_combout\ & ( (!\register_interface_inst|ctrlReg\(3) 
-- & ((!\register_interface_inst|ctrlReg\(2) & (\motor_control_unit_inst|signal_generator_inst|Selector3~6_combout\)) # (\register_interface_inst|ctrlReg\(2) & ((\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))))) # 
-- (\register_interface_inst|ctrlReg\(3) & (((\register_interface_inst|ctrlReg\(2)) # (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\)))) ) ) ) # ( \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|Selector3~7_combout\ & ( (!\register_interface_inst|ctrlReg\(3) & (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & \register_interface_inst|ctrlReg\(2))) # 
-- (\register_interface_inst|ctrlReg\(3) & ((\register_interface_inst|ctrlReg\(2)) # (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000100011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~6_combout\,
	datab => \register_interface_inst|ALT_INV_ctrlReg\(3),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	datad => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~7_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~8_combout\);

-- Location: LABCELL_X36_Y18_N27
\debug_inst|write_data~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~15_combout\ = ( \debug_inst|write_data[2]~2_combout\ & ( (\debug_inst|write_data[2]~1_combout\ & (\debug_inst|write_data[2]~3_combout\ & (\SW[5]~input_o\ & \debug_inst|write_data[2]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	dataf => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	combout => \debug_inst|write_data~15_combout\);

-- Location: FF_X36_Y18_N28
\debug_inst|write_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|write_data~15_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|write_data\(5));

-- Location: FF_X35_Y21_N26
\register_interface_inst|ctrlReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|write_data\(5),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \register_interface_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(5));

-- Location: LABCELL_X36_Y18_N30
\debug_inst|write_data~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~14_combout\ = ( \debug_inst|write_data[2]~1_combout\ & ( (\debug_inst|write_data[2]~2_combout\ & (\debug_inst|write_data[2]~3_combout\ & (\SW[4]~input_o\ & \debug_inst|write_data[2]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
	datad => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	dataf => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	combout => \debug_inst|write_data~14_combout\);

-- Location: FF_X36_Y18_N31
\debug_inst|write_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|write_data~14_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|write_data\(4));

-- Location: FF_X35_Y21_N23
\register_interface_inst|ctrlReg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|write_data\(4),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \register_interface_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(4));

-- Location: LABCELL_X35_Y21_N18
\motor_control_unit_inst|signal_generator_inst|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\ = ( !\register_interface_inst|ctrlReg\(2) & ( (!\register_interface_inst|ctrlReg\(5) & (\register_interface_inst|ctrlReg\(3) & (!\register_interface_inst|ctrlReg\(4) & 
-- !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(5),
	datab => \register_interface_inst|ALT_INV_ctrlReg\(3),
	datac => \register_interface_inst|ALT_INV_ctrlReg\(4),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\);

-- Location: LABCELL_X35_Y21_N42
\motor_control_unit_inst|signal_generator_inst|Selector3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector3~9_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\) # 
-- ((!\motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\)) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Selector3~0_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|Selector3~8_combout\ & ((!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\) # ((!\motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\) # 
-- (!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~11_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_to_run[10]~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~8_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~15_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~0_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector3~9_combout\);

-- Location: FF_X35_Y21_N43
\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector3~9_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\);

-- Location: LABCELL_X36_Y21_N42
\motor_control_unit_inst|signal_generator_inst|Selector4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector4~1_combout\ = (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(5) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(2) & 
-- \motor_control_unit_inst|signal_generator_inst|steps_counter\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000011000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(5),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(2),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector4~1_combout\);

-- Location: LABCELL_X35_Y21_N57
\motor_control_unit_inst|signal_generator_inst|Selector4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector4~2_combout\ = ( \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ & ( \motor_control_unit_inst|signal_generator_inst|Selector4~1_combout\ & ( (!\register_interface_inst|ctrlReg\(3) 
-- & ((!\register_interface_inst|ctrlReg\(2) & (\motor_control_unit_inst|signal_generator_inst|Selector3~6_combout\)) # (\register_interface_inst|ctrlReg\(2) & ((\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))))) # 
-- (\register_interface_inst|ctrlReg\(3) & (((\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\) # (\register_interface_inst|ctrlReg\(2))))) ) ) ) # ( \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|Selector4~1_combout\ & ( (!\register_interface_inst|ctrlReg\(3) & (\register_interface_inst|ctrlReg\(2) & \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\)) # 
-- (\register_interface_inst|ctrlReg\(3) & ((\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\) # (\register_interface_inst|ctrlReg\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110011111100000000000000000100001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~6_combout\,
	datab => \register_interface_inst|ALT_INV_ctrlReg\(3),
	datac => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_2~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector4~1_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector4~2_combout\);

-- Location: LABCELL_X35_Y21_N21
\motor_control_unit_inst|signal_generator_inst|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\ = ( !\register_interface_inst|ctrlReg\(2) & ( (!\register_interface_inst|ctrlReg\(5) & (\register_interface_inst|ctrlReg\(3) & 
-- (!\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & \register_interface_inst|ctrlReg\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(5),
	datab => \register_interface_inst|ALT_INV_ctrlReg\(3),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\,
	datad => \register_interface_inst|ALT_INV_ctrlReg\(4),
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\);

-- Location: LABCELL_X35_Y21_N51
\motor_control_unit_inst|signal_generator_inst|Selector4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector4~3_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\) # 
-- ((!\motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\)) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Selector4~0_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|Selector4~2_combout\ & ((!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\) # ((!\motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\) # 
-- (!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~11_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_to_run[10]~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector4~2_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~15_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector4~0_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector4~3_combout\);

-- Location: FF_X35_Y21_N52
\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector4~3_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\);

-- Location: MLABCELL_X37_Y21_N24
\motor_control_unit_inst|signal_generator_inst|Equal6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~9_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(3) & ( (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & 
-- (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(2) & \motor_control_unit_inst|signal_generator_inst|steps_counter\(8)))) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(3) & ( (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(8) & ((!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_2~q\ & \motor_control_unit_inst|signal_generator_inst|steps_counter\(2))) # (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\ & 
-- ((!\motor_control_unit_inst|signal_generator_inst|steps_counter\(2)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001000000000010100100000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_2~q\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(2),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(8),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(3),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~9_combout\);

-- Location: MLABCELL_X37_Y21_N42
\motor_control_unit_inst|signal_generator_inst|Equal6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~8_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(19) & ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(18) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(17) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(20) & 
-- \motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\))) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(19) & ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(18) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(17) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(20) & 
-- !\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\))) ) ) ) # ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(19) & ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(18) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(17) & \motor_control_unit_inst|signal_generator_inst|steps_counter\(20))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000110000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(18),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(17),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(20),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(19),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~8_combout\);

-- Location: LABCELL_X38_Y20_N48
\motor_control_unit_inst|signal_generator_inst|Equal6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~6_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(27) & ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(26) & (\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(28) & 
-- \motor_control_unit_inst|signal_generator_inst|steps_counter\(25)))) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(27) & ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(26) & (!\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(28) & 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(25)))) ) ) ) # ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(27) & ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(26) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(28) & \motor_control_unit_inst|signal_generator_inst|steps_counter\(25))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010110000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(26),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(28),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(25),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(27),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~6_combout\);

-- Location: MLABCELL_X37_Y21_N36
\motor_control_unit_inst|signal_generator_inst|Equal6~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~10_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(15) & ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(14) & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(16) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(13) & ((!\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\) # 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\)))) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(15) & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(14) & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(16) & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(13) & (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & 
-- !\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000001000000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(16),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(13),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(15),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(14),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~10_combout\);

-- Location: LABCELL_X38_Y20_N39
\motor_control_unit_inst|signal_generator_inst|Equal6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~5_combout\ = ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(29) & 
-- (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(30) & (!\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & !\motor_control_unit_inst|signal_generator_inst|steps_counter\(31)))) # 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(29) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(30) & (\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & 
-- \motor_control_unit_inst|signal_generator_inst|steps_counter\(31)))) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( (\motor_control_unit_inst|signal_generator_inst|steps_counter\(29) & 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(30) & \motor_control_unit_inst|signal_generator_inst|steps_counter\(31))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000110000000000000011000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(29),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(30),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(31),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~5_combout\);

-- Location: LABCELL_X36_Y21_N6
\motor_control_unit_inst|signal_generator_inst|Equal6~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Equal6~10_combout\ & ( \motor_control_unit_inst|signal_generator_inst|Equal6~5_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|Equal6~7_combout\ & (\motor_control_unit_inst|signal_generator_inst|Equal6~9_combout\ & (\motor_control_unit_inst|signal_generator_inst|Equal6~8_combout\ & 
-- \motor_control_unit_inst|signal_generator_inst|Equal6~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~7_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~9_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~8_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~6_combout\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~10_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~5_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\);

-- Location: LABCELL_X35_Y21_N27
\motor_control_unit_inst|signal_generator_inst|Selector6~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector6~7_combout\ = ( \register_interface_inst|ctrlReg\(5) & ( (\register_interface_inst|ctrlReg\(4) & (!\register_interface_inst|ctrlReg\(2) & (\register_interface_inst|ctrlReg\(3) & 
-- !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(4),
	datab => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datac => \register_interface_inst|ALT_INV_ctrlReg\(3),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(5),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector6~7_combout\);

-- Location: LABCELL_X36_Y21_N45
\motor_control_unit_inst|signal_generator_inst|Selector6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector6~5_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(7) & ( (\motor_control_unit_inst|signal_generator_inst|steps_counter\(9) & 
-- \motor_control_unit_inst|signal_generator_inst|steps_counter\(4)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(9),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(4),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector6~5_combout\);

-- Location: MLABCELL_X37_Y21_N54
\motor_control_unit_inst|signal_generator_inst|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector5~0_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(6) & ( (\motor_control_unit_inst|signal_generator_inst|steps_counter\(3) & 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(8) & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(2) & !\motor_control_unit_inst|signal_generator_inst|steps_counter\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(3),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(8),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(2),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(5),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(6),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector5~0_combout\);

-- Location: MLABCELL_X37_Y21_N6
\motor_control_unit_inst|signal_generator_inst|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(26) & ( \motor_control_unit_inst|signal_generator_inst|Selector5~0_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|Selector3~1_combout\ & (\motor_control_unit_inst|signal_generator_inst|Selector3~4_combout\ & (\motor_control_unit_inst|signal_generator_inst|Selector3~2_combout\ & 
-- \motor_control_unit_inst|signal_generator_inst|Selector3~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~1_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~4_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~2_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector3~3_combout\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(26),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~0_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\);

-- Location: LABCELL_X35_Y21_N12
\motor_control_unit_inst|signal_generator_inst|Selector6~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector6~6_combout\ = ( \register_interface_inst|ctrlReg\(3) & ( \motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & 
-- ((\register_interface_inst|ctrlReg\(2)) # (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))) ) ) ) # ( !\register_interface_inst|ctrlReg\(3) & ( \motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & ((!\register_interface_inst|ctrlReg\(2) & (\motor_control_unit_inst|signal_generator_inst|Selector6~5_combout\)) # (\register_interface_inst|ctrlReg\(2) & 
-- ((\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))))) ) ) ) # ( \register_interface_inst|ctrlReg\(3) & ( !\motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & ((\register_interface_inst|ctrlReg\(2)) # (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))) ) ) ) # ( !\register_interface_inst|ctrlReg\(3) & ( 
-- !\motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & \register_interface_inst|ctrlReg\(2))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000110011001100010001000000110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector6~5_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_2~q\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	datad => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datae => \register_interface_inst|ALT_INV_ctrlReg\(3),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~1_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector6~6_combout\);

-- Location: LABCELL_X35_Y21_N48
\motor_control_unit_inst|signal_generator_inst|Selector6~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector6~8_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Selector6~6_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\) # 
-- ((!\motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\)) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Selector6~6_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|Selector6~7_combout\ & ((!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\) # ((!\motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\) # 
-- (!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~11_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_to_run[10]~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector6~7_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~15_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector6~6_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector6~8_combout\);

-- Location: FF_X35_Y21_N49
\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector6~8_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\);

-- Location: LABCELL_X36_Y21_N48
\motor_control_unit_inst|signal_generator_inst|Selector5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector5~3_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(9) & ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(7) & ( 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(4) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(4),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(9),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector5~3_combout\);

-- Location: LABCELL_X35_Y21_N6
\motor_control_unit_inst|signal_generator_inst|Selector5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector5~4_combout\ = ( \register_interface_inst|ctrlReg\(2) & ( \motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ & 
-- ((\register_interface_inst|ctrlReg\(3)) # (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))) ) ) ) # ( !\register_interface_inst|ctrlReg\(2) & ( \motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ & ((!\register_interface_inst|ctrlReg\(3) & ((\motor_control_unit_inst|signal_generator_inst|Selector5~3_combout\))) # (\register_interface_inst|ctrlReg\(3) & 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\)))) ) ) ) # ( \register_interface_inst|ctrlReg\(2) & ( !\motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ & ((\register_interface_inst|ctrlReg\(3)) # (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\))) ) ) ) # ( !\register_interface_inst|ctrlReg\(2) & ( 
-- !\motor_control_unit_inst|signal_generator_inst|Selector5~1_combout\ & ( (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & (\register_interface_inst|ctrlReg\(3) & \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000111011100000000000111010000000001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	datab => \register_interface_inst|ALT_INV_ctrlReg\(3),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~3_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1~q\,
	datae => \register_interface_inst|ALT_INV_ctrlReg\(2),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~1_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector5~4_combout\);

-- Location: LABCELL_X35_Y21_N24
\motor_control_unit_inst|signal_generator_inst|Selector5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector5~2_combout\ = ( \register_interface_inst|ctrlReg\(3) & ( (!\register_interface_inst|ctrlReg\(4) & (!\register_interface_inst|ctrlReg\(2) & 
-- (!\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & \register_interface_inst|ctrlReg\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(4),
	datab => \register_interface_inst|ALT_INV_ctrlReg\(2),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	datad => \register_interface_inst|ALT_INV_ctrlReg\(5),
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(3),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector5~2_combout\);

-- Location: LABCELL_X35_Y21_N45
\motor_control_unit_inst|signal_generator_inst|Selector5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector5~5_combout\ = ( \motor_control_unit_inst|signal_generator_inst|Selector5~2_combout\ & ( (!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\) # 
-- ((!\motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\)) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|Selector5~2_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|Selector5~4_combout\ & ((!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\) # ((!\motor_control_unit_inst|signal_generator_inst|steps_to_run[10]~0_combout\) # 
-- (!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001110000011110000111011111111111011101111111111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~11_combout\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_to_run[10]~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~4_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~15_combout\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Selector5~2_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector5~5_combout\);

-- Location: FF_X35_Y21_N47
\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector5~5_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\);

-- Location: MLABCELL_X37_Y21_N30
\motor_control_unit_inst|signal_generator_inst|Equal6~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~12_combout\ = ( !\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ & ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(6) & ( 
-- (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(7) $ (!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\))) ) ) ) # ( 
-- \motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(6) & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(7) $ 
-- (((!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & !\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\))) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1~q\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(6) & ( (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & !\motor_control_unit_inst|signal_generator_inst|steps_counter\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100011011000110110000101000001010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_2~q\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(7),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(6),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~12_combout\);

-- Location: MLABCELL_X37_Y21_N48
\motor_control_unit_inst|signal_generator_inst|Equal6~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~14_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(11) & ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(12) & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(5) & ((!\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\) # (\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\))) ) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(11) & ( !\motor_control_unit_inst|signal_generator_inst|steps_counter\(12) & ( (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & 
-- (!\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(5) $ (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_1_4~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000000000000000000000000000000000000100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(5),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_1_4~q\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(11),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(12),
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~14_combout\);

-- Location: MLABCELL_X37_Y21_N0
\motor_control_unit_inst|signal_generator_inst|Equal6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~13_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(10) & ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(4) & \motor_control_unit_inst|signal_generator_inst|steps_counter\(9))) ) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|steps_counter\(10) & ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( (!\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & 
-- ((!\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & (!\motor_control_unit_inst|signal_generator_inst|steps_counter\(4) & !\motor_control_unit_inst|signal_generator_inst|steps_counter\(9))) # 
-- (\motor_control_unit_inst|signal_generator_inst|mode_state.COS_2~q\ & (\motor_control_unit_inst|signal_generator_inst|steps_counter\(4) & \motor_control_unit_inst|signal_generator_inst|steps_counter\(9))))) ) ) ) # ( 
-- \motor_control_unit_inst|signal_generator_inst|steps_counter\(10) & ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~DUPLICATE_q\ & ( (\motor_control_unit_inst|signal_generator_inst|steps_counter\(4) & 
-- \motor_control_unit_inst|signal_generator_inst|steps_counter\(9)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111110000000000001000000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.COS_2~q\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(4),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(9),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(10),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~DUPLICATE_q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~13_combout\);

-- Location: LABCELL_X36_Y21_N33
\motor_control_unit_inst|signal_generator_inst|Equal6~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\ = ( \motor_control_unit_inst|signal_generator_inst|steps_counter\(0) & ( \motor_control_unit_inst|signal_generator_inst|Equal6~13_combout\ & ( 
-- (\motor_control_unit_inst|signal_generator_inst|steps_counter\(1) & (\motor_control_unit_inst|signal_generator_inst|Equal6~12_combout\ & \motor_control_unit_inst|signal_generator_inst|Equal6~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(1),
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~12_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~14_combout\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_steps_counter\(0),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~13_combout\,
	combout => \motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\);

-- Location: LABCELL_X35_Y21_N0
\motor_control_unit_inst|signal_generator_inst|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector1~0_combout\ = ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( \register_interface_inst|ctrlReg\(2) & ( ((!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\) # 
-- (!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\)) # (\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\) ) ) ) # ( !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( \register_interface_inst|ctrlReg\(2) 
-- & ( !\register_interface_inst|ctrlReg\(3) ) ) ) # ( \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( !\register_interface_inst|ctrlReg\(2) & ( (\register_interface_inst|ctrlReg\(3) & 
-- (((!\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\) # (!\motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\)) # (\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\))) ) ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & ( !\register_interface_inst|ctrlReg\(2) & ( \register_interface_inst|ctrlReg\(3) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111110111111111000000001111110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~15_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~11_combout\,
	datad => \register_interface_inst|ALT_INV_ctrlReg\(3),
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	dataf => \register_interface_inst|ALT_INV_ctrlReg\(2),
	combout => \motor_control_unit_inst|signal_generator_inst|Selector1~0_combout\);

-- Location: FF_X35_Y21_N2
\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector1~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\);

-- Location: LABCELL_X35_Y21_N30
\motor_control_unit_inst|signal_generator_inst|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|Selector0~0_combout\ = ( \motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & ( \motor_control_unit_inst|signal_generator_inst|ir_wire~q\ ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|mode_state.CR~q\ & ( (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & (((\motor_control_unit_inst|signal_generator_inst|Equal6~15_combout\ & 
-- \motor_control_unit_inst|signal_generator_inst|Equal6~11_combout\)) # (\motor_control_unit_inst|signal_generator_inst|ir_wire~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101010101000000010101010100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	datab => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~15_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_Equal6~11_combout\,
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_ir_wire~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.CR~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|Selector0~0_combout\);

-- Location: FF_X35_Y21_N32
\motor_control_unit_inst|signal_generator_inst|ir_wire\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|Selector0~0_combout\,
	ena => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|ir_wire~q\);

-- Location: LABCELL_X35_Y18_N0
\register_interface_inst|ctrlReg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_interface_inst|ctrlReg[0]~0_combout\ = ( \debug_inst|write_data\(0) & ( ((!\motor_control_unit_inst|signal_generator_inst|ir_wire~q\ & \register_interface_inst|ctrlReg\(0))) # (\register_interface_inst|process_0~0_combout\) ) ) # ( 
-- !\debug_inst|write_data\(0) & ( (!\register_interface_inst|process_0~0_combout\ & (!\motor_control_unit_inst|signal_generator_inst|ir_wire~q\ & \register_interface_inst|ctrlReg\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_interface_inst|ALT_INV_process_0~0_combout\,
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_ir_wire~q\,
	datad => \register_interface_inst|ALT_INV_ctrlReg\(0),
	dataf => \debug_inst|ALT_INV_write_data\(0),
	combout => \register_interface_inst|ctrlReg[0]~0_combout\);

-- Location: FF_X35_Y18_N2
\register_interface_inst|ctrlReg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \register_interface_inst|ctrlReg[0]~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(0));

-- Location: FF_X36_Y20_N37
\motor_control_unit_inst|prescaler_inst|counter[12]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(12));

-- Location: LABCELL_X36_Y20_N39
\motor_control_unit_inst|prescaler_inst|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~101_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(13) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~54\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~102\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(13) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(13),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~54\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~101_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~102\);

-- Location: FF_X36_Y20_N41
\motor_control_unit_inst|prescaler_inst|counter[13]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(13));

-- Location: LABCELL_X36_Y20_N42
\motor_control_unit_inst|prescaler_inst|Add0~105\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~105_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(14) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~102\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~106\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(14) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(14),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~102\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~105_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~106\);

-- Location: FF_X36_Y20_N44
\motor_control_unit_inst|prescaler_inst|counter[14]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(14));

-- Location: LABCELL_X36_Y20_N45
\motor_control_unit_inst|prescaler_inst|Add0~113\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~113_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(15) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~106\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~114\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(15) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~106\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(15),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~106\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~113_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~114\);

-- Location: FF_X36_Y20_N47
\motor_control_unit_inst|prescaler_inst|counter[15]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(15));

-- Location: LABCELL_X36_Y20_N48
\motor_control_unit_inst|prescaler_inst|Add0~109\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~109_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(16) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~114\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~110\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(16) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~114\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(16),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~114\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~109_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~110\);

-- Location: FF_X36_Y20_N50
\motor_control_unit_inst|prescaler_inst|counter[16]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(16));

-- Location: LABCELL_X36_Y20_N51
\motor_control_unit_inst|prescaler_inst|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~45_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(17) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~110\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~46\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(17) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~110\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(17),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~110\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~45_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~46\);

-- Location: FF_X36_Y20_N52
\motor_control_unit_inst|prescaler_inst|counter[17]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(17));

-- Location: LABCELL_X36_Y20_N54
\motor_control_unit_inst|prescaler_inst|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~65_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(18) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~46\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~66\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(18) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(18),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~46\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~65_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~66\);

-- Location: FF_X36_Y20_N56
\motor_control_unit_inst|prescaler_inst|counter[18]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(18));

-- Location: LABCELL_X36_Y20_N57
\motor_control_unit_inst|prescaler_inst|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~61_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(19) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~66\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~62\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(19) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(19),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~66\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~61_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~62\);

-- Location: FF_X36_Y20_N58
\motor_control_unit_inst|prescaler_inst|counter[19]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(19));

-- Location: LABCELL_X36_Y19_N0
\motor_control_unit_inst|prescaler_inst|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~57_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(20) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~62\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~58\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(20) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(20),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~62\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~57_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~58\);

-- Location: FF_X36_Y19_N1
\motor_control_unit_inst|prescaler_inst|counter[20]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(20));

-- Location: MLABCELL_X37_Y20_N18
\motor_control_unit_inst|prescaler_inst|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(19) & ( !\motor_control_unit_inst|prescaler_inst|counter\(12) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(10) & 
-- (!\motor_control_unit_inst|prescaler_inst|counter\(18) & (!\motor_control_unit_inst|prescaler_inst|counter\(17) & !\motor_control_unit_inst|prescaler_inst|counter\(20)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(10),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(18),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(17),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(20),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(19),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(12),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\);

-- Location: LABCELL_X36_Y19_N3
\motor_control_unit_inst|prescaler_inst|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~85_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(21) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~58\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~86\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(21) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(21),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~58\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~85_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~86\);

-- Location: FF_X36_Y19_N5
\motor_control_unit_inst|prescaler_inst|counter[21]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(21));

-- Location: LABCELL_X36_Y19_N6
\motor_control_unit_inst|prescaler_inst|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~89_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(22) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~86\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~90\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(22) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(22),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~86\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~89_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~90\);

-- Location: FF_X36_Y19_N8
\motor_control_unit_inst|prescaler_inst|counter[22]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(22));

-- Location: LABCELL_X36_Y19_N9
\motor_control_unit_inst|prescaler_inst|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~81_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(23) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~90\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~82\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(23) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(23),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~90\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~81_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~82\);

-- Location: FF_X36_Y19_N11
\motor_control_unit_inst|prescaler_inst|counter[23]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(23));

-- Location: LABCELL_X36_Y19_N12
\motor_control_unit_inst|prescaler_inst|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~77_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(24) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~82\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~78\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(24) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(24),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~82\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~77_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~78\);

-- Location: FF_X36_Y19_N14
\motor_control_unit_inst|prescaler_inst|counter[24]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(24));

-- Location: LABCELL_X36_Y19_N15
\motor_control_unit_inst|prescaler_inst|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~37_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(25) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~78\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~38\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(25) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(25),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~78\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~37_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~38\);

-- Location: FF_X36_Y19_N17
\motor_control_unit_inst|prescaler_inst|counter[25]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(25));

-- Location: LABCELL_X36_Y19_N18
\motor_control_unit_inst|prescaler_inst|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~13_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(26) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~38\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~14\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(26) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(26),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~38\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~13_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~14\);

-- Location: FF_X36_Y19_N19
\motor_control_unit_inst|prescaler_inst|counter[26]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(26));

-- Location: MLABCELL_X37_Y20_N12
\motor_control_unit_inst|prescaler_inst|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~0_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(5) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(4) & (!\motor_control_unit_inst|prescaler_inst|counter\(3) & 
-- (!\motor_control_unit_inst|prescaler_inst|counter\(26) & !\motor_control_unit_inst|prescaler_inst|counter\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(4),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(3),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(26),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(7),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(5),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~0_combout\);

-- Location: LABCELL_X36_Y19_N36
\motor_control_unit_inst|prescaler_inst|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(9) & ( !\motor_control_unit_inst|prescaler_inst|counter\(23) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(8) & 
-- (!\motor_control_unit_inst|prescaler_inst|counter\(24) & (!\motor_control_unit_inst|prescaler_inst|counter\(21) & !\motor_control_unit_inst|prescaler_inst|counter\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(8),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(24),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(21),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(22),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(9),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(23),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\);

-- Location: MLABCELL_X37_Y20_N24
\motor_control_unit_inst|prescaler_inst|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\ = ( \motor_control_unit_inst|prescaler_inst|counter\(11) & ( \motor_control_unit_inst|prescaler_inst|counter\(13) & ( (\motor_control_unit_inst|prescaler_inst|counter\(6) & 
-- (\motor_control_unit_inst|prescaler_inst|counter\(16) & (\motor_control_unit_inst|prescaler_inst|counter\(14) & \motor_control_unit_inst|prescaler_inst|counter\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(6),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(16),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(14),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(15),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(11),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(13),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\);

-- Location: LABCELL_X36_Y19_N21
\motor_control_unit_inst|prescaler_inst|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~41_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(27) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~14\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~42\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(27) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(27),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~14\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~41_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~42\);

-- Location: FF_X36_Y19_N23
\motor_control_unit_inst|prescaler_inst|counter[27]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(27));

-- Location: LABCELL_X36_Y19_N24
\motor_control_unit_inst|prescaler_inst|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~33_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(28) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~42\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~34\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(28) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(28),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~42\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~33_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~34\);

-- Location: FF_X36_Y19_N26
\motor_control_unit_inst|prescaler_inst|counter[28]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(28));

-- Location: LABCELL_X36_Y19_N27
\motor_control_unit_inst|prescaler_inst|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~29_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(29) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~34\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~30\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(29) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(29),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~34\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~29_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~30\);

-- Location: FF_X36_Y19_N29
\motor_control_unit_inst|prescaler_inst|counter[29]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(29));

-- Location: LABCELL_X36_Y19_N30
\motor_control_unit_inst|prescaler_inst|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~25_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(30) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~30\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~26\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(30) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(30),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~30\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~25_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~26\);

-- Location: FF_X36_Y19_N32
\motor_control_unit_inst|prescaler_inst|counter[30]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(30));

-- Location: LABCELL_X36_Y19_N33
\motor_control_unit_inst|prescaler_inst|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~21_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(31) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(31),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~26\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~21_sumout\);

-- Location: FF_X36_Y19_N35
\motor_control_unit_inst|prescaler_inst|counter[31]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(31));

-- Location: LABCELL_X36_Y19_N54
\motor_control_unit_inst|prescaler_inst|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~1_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(29) & ( !\motor_control_unit_inst|prescaler_inst|counter\(31) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(27) & 
-- (!\motor_control_unit_inst|prescaler_inst|counter\(30) & (!\motor_control_unit_inst|prescaler_inst|counter\(28) & !\motor_control_unit_inst|prescaler_inst|counter\(25)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(27),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(30),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(28),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(25),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(29),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(31),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~1_combout\);

-- Location: MLABCELL_X37_Y20_N15
\motor_control_unit_inst|prescaler_inst|Equal0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\ = ( \motor_control_unit_inst|prescaler_inst|counter\(0) & ( (\motor_control_unit_inst|prescaler_inst|counter\(1) & \motor_control_unit_inst|prescaler_inst|counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(1),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(2),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(0),
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\);

-- Location: MLABCELL_X37_Y20_N39
\motor_control_unit_inst|prescaler_inst|Equal0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\ = ( \motor_control_unit_inst|prescaler_inst|Equal0~1_combout\ & ( \motor_control_unit_inst|prescaler_inst|Equal0~5_combout\ & ( (\motor_control_unit_inst|prescaler_inst|Equal0~2_combout\ & 
-- (\motor_control_unit_inst|prescaler_inst|Equal0~0_combout\ & (\motor_control_unit_inst|prescaler_inst|Equal0~3_combout\ & \motor_control_unit_inst|prescaler_inst|Equal0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~2_combout\,
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~0_combout\,
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~3_combout\,
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~4_combout\,
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~1_combout\,
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~5_combout\,
	combout => \motor_control_unit_inst|prescaler_inst|Equal0~6_combout\);

-- Location: FF_X36_Y20_N2
\motor_control_unit_inst|prescaler_inst|counter[0]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(0));

-- Location: LABCELL_X36_Y20_N3
\motor_control_unit_inst|prescaler_inst|Add0~125\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~125_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(1) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~118\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~126\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(1) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~118\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(1),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~118\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~125_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~126\);

-- Location: FF_X36_Y20_N5
\motor_control_unit_inst|prescaler_inst|counter[1]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(1));

-- Location: LABCELL_X36_Y20_N6
\motor_control_unit_inst|prescaler_inst|Add0~121\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~121_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(2) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~126\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~122\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(2) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~126\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(2),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~126\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~121_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~122\);

-- Location: FF_X36_Y20_N8
\motor_control_unit_inst|prescaler_inst|counter[2]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(2));

-- Location: LABCELL_X36_Y20_N9
\motor_control_unit_inst|prescaler_inst|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~9_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(3) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~122\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~10\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(3) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~122\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(3),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~122\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~9_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~10\);

-- Location: FF_X36_Y20_N10
\motor_control_unit_inst|prescaler_inst|counter[3]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(3));

-- Location: LABCELL_X36_Y20_N12
\motor_control_unit_inst|prescaler_inst|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~5_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(4) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~10\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~6\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(4) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(4),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~10\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~5_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~6\);

-- Location: FF_X36_Y20_N13
\motor_control_unit_inst|prescaler_inst|counter[4]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(4));

-- Location: LABCELL_X36_Y20_N15
\motor_control_unit_inst|prescaler_inst|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~1_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(5) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~6\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~2\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(5) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(5),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~6\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~1_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~2\);

-- Location: FF_X36_Y20_N16
\motor_control_unit_inst|prescaler_inst|counter[5]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(5));

-- Location: LABCELL_X36_Y20_N18
\motor_control_unit_inst|prescaler_inst|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~93_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(6) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~2\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~94\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(6) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(6),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~2\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~93_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~94\);

-- Location: FF_X36_Y20_N20
\motor_control_unit_inst|prescaler_inst|counter[6]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(6));

-- Location: LABCELL_X36_Y20_N21
\motor_control_unit_inst|prescaler_inst|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~17_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(7) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~94\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~18\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(7) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(7),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~94\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~17_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~18\);

-- Location: FF_X36_Y20_N22
\motor_control_unit_inst|prescaler_inst|counter[7]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(7));

-- Location: LABCELL_X36_Y20_N24
\motor_control_unit_inst|prescaler_inst|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~69_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(8) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~18\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~70\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(8) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(8),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~18\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~69_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~70\);

-- Location: FF_X36_Y20_N25
\motor_control_unit_inst|prescaler_inst|counter[8]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(8));

-- Location: LABCELL_X36_Y20_N27
\motor_control_unit_inst|prescaler_inst|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~73_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(9) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~70\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~74\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(9) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(9),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~70\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~73_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~74\);

-- Location: FF_X36_Y20_N28
\motor_control_unit_inst|prescaler_inst|counter[9]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(9));

-- Location: LABCELL_X36_Y20_N30
\motor_control_unit_inst|prescaler_inst|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Add0~49_sumout\ = SUM(( \motor_control_unit_inst|prescaler_inst|counter\(10) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~74\ ))
-- \motor_control_unit_inst|prescaler_inst|Add0~50\ = CARRY(( \motor_control_unit_inst|prescaler_inst|counter\(10) ) + ( GND ) + ( \motor_control_unit_inst|prescaler_inst|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(10),
	cin => \motor_control_unit_inst|prescaler_inst|Add0~74\,
	sumout => \motor_control_unit_inst|prescaler_inst|Add0~49_sumout\,
	cout => \motor_control_unit_inst|prescaler_inst|Add0~50\);

-- Location: FF_X36_Y20_N31
\motor_control_unit_inst|prescaler_inst|counter[10]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(10));

-- Location: FF_X36_Y20_N35
\motor_control_unit_inst|prescaler_inst|counter[11]\ : dffeas
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
	q => \motor_control_unit_inst|prescaler_inst|counter\(11));

-- Location: MLABCELL_X37_Y20_N48
\motor_control_unit_inst|prescaler_inst|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal1~0_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(14) & ( !\motor_control_unit_inst|prescaler_inst|counter\(13) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(11) & 
-- (!\motor_control_unit_inst|prescaler_inst|counter\(15) & (!\motor_control_unit_inst|prescaler_inst|counter\(6) & !\motor_control_unit_inst|prescaler_inst|counter\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(11),
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(15),
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(6),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(16),
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(14),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(13),
	combout => \motor_control_unit_inst|prescaler_inst|Equal1~0_combout\);

-- Location: MLABCELL_X37_Y20_N42
\motor_control_unit_inst|prescaler_inst|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\ = ( !\motor_control_unit_inst|prescaler_inst|counter\(1) & ( (!\motor_control_unit_inst|prescaler_inst|counter\(0) & !\motor_control_unit_inst|prescaler_inst|counter\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(0),
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(2),
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_counter\(1),
	combout => \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\);

-- Location: MLABCELL_X37_Y20_N30
\motor_control_unit_inst|prescaler_inst|Equal1\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|prescaler_inst|Equal1~combout\ = LCELL(( \motor_control_unit_inst|prescaler_inst|Equal0~3_combout\ & ( \motor_control_unit_inst|prescaler_inst|Equal0~2_combout\ & ( (\motor_control_unit_inst|prescaler_inst|Equal1~0_combout\ & 
-- (\motor_control_unit_inst|prescaler_inst|Equal0~0_combout\ & (\motor_control_unit_inst|prescaler_inst|Equal0~1_combout\ & \motor_control_unit_inst|prescaler_inst|Equal1~1_combout\))) ) ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~0_combout\,
	datab => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~0_combout\,
	datac => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~1_combout\,
	datad => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal1~1_combout\,
	datae => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~3_combout\,
	dataf => \motor_control_unit_inst|prescaler_inst|ALT_INV_Equal0~2_combout\,
	combout => \motor_control_unit_inst|prescaler_inst|Equal1~combout\);

-- Location: FF_X35_Y18_N10
\register_interface_inst|ctrlReg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|write_data\(1),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \register_interface_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(1));

-- Location: LABCELL_X40_Y20_N6
\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0_combout\ = (!\register_interface_inst|ctrlReg\(1) & ((\motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\))) # (\register_interface_inst|ctrlReg\(1) & 
-- (!\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	datab => \register_interface_inst|ALT_INV_ctrlReg\(1),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.THREE~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0_combout\);

-- Location: FF_X40_Y20_N8
\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\);

-- Location: LABCELL_X40_Y20_N3
\motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ & ( (\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\) # (\register_interface_inst|ctrlReg\(1)) ) 
-- ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ & ( (!\register_interface_inst|ctrlReg\(1) & \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(1),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0_combout\);

-- Location: FF_X40_Y20_N5
\motor_control_unit_inst|signal_generator_inst|pwm_state.THREE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\);

-- Location: LABCELL_X40_Y20_N9
\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0_combout\ = (!\register_interface_inst|ctrlReg\(1) & (!\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\)) # (\register_interface_inst|ctrlReg\(1) & 
-- ((\motor_control_unit_inst|signal_generator_inst|pwm_state.THREE~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010111011100010001011101110001000101110111000100010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	datab => \register_interface_inst|ALT_INV_ctrlReg\(1),
	datad => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.THREE~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0_combout\);

-- Location: FF_X40_Y20_N11
\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\);

-- Location: LABCELL_X40_Y20_N0
\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0_combout\ = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ & ( (\register_interface_inst|ctrlReg\(1) & !\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\) ) ) 
-- # ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ & ( (!\register_interface_inst|ctrlReg\(1)) # (!\motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_interface_inst|ALT_INV_ctrlReg\(1),
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0_combout\);

-- Location: FF_X40_Y20_N2
\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \motor_control_unit_inst|prescaler_inst|Equal1~combout\,
	d => \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~0_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \motor_control_unit_inst|signal_generator_inst|Equal8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\);

-- Location: LABCELL_X40_Y20_N12
\motor_control_unit_inst|signal_generator_inst|motor_pwm[2]\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|motor_pwm\(2) = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ ) # ( !\motor_control_unit_inst|signal_generator_inst|pwm_state.TWO~q\ & ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.TWO~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|motor_pwm\(2));

-- Location: LABCELL_X40_Y20_N21
\motor_control_unit_inst|signal_generator_inst|motor_pwm[3]\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|motor_pwm\(3) = ( \motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ & ( \motor_control_unit_inst|signal_generator_inst|pwm_state.FOUR~q\ ) ) # ( 
-- !\motor_control_unit_inst|signal_generator_inst|pwm_state.ONE~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111010101010101010111111111111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.FOUR~q\,
	datae => \motor_control_unit_inst|signal_generator_inst|ALT_INV_pwm_state.ONE~q\,
	combout => \motor_control_unit_inst|signal_generator_inst|motor_pwm\(3));

-- Location: LABCELL_X35_Y21_N33
\motor_control_unit_inst|signal_generator_inst|motor_en_wire~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \motor_control_unit_inst|signal_generator_inst|motor_en_wire~0_combout\ = (\motor_control_unit_inst|signal_generator_inst|mode_state.IDLE~q\ & \register_interface_inst|ctrlReg\(0))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \motor_control_unit_inst|signal_generator_inst|ALT_INV_mode_state.IDLE~q\,
	datad => \register_interface_inst|ALT_INV_ctrlReg\(0),
	combout => \motor_control_unit_inst|signal_generator_inst|motor_en_wire~0_combout\);

-- Location: FF_X35_Y21_N35
\motor_control_unit_inst|signal_generator_inst|motor_en_wire[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \motor_control_unit_inst|signal_generator_inst|motor_en_wire~0_combout\,
	ena => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \motor_control_unit_inst|signal_generator_inst|motor_en_wire\(0));

-- Location: LABCELL_X36_Y18_N6
\debug_inst|write_data~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|write_data~16_combout\ = ( \debug_inst|write_data[2]~2_combout\ & ( (\debug_inst|write_data[2]~1_combout\ & (\debug_inst|write_data[2]~3_combout\ & (\debug_inst|write_data[2]~4_combout\ & \SW[6]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_write_data[2]~1_combout\,
	datab => \debug_inst|ALT_INV_write_data[2]~3_combout\,
	datac => \debug_inst|ALT_INV_write_data[2]~4_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \debug_inst|ALT_INV_write_data[2]~2_combout\,
	combout => \debug_inst|write_data~16_combout\);

-- Location: FF_X36_Y18_N8
\debug_inst|write_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|write_data~16_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|write_data[3]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|write_data\(6));

-- Location: FF_X35_Y18_N46
\register_interface_inst|ctrlReg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	asdata => \debug_inst|write_data\(6),
	clrn => \CPU_RESET_n~input_o\,
	sload => VCC,
	ena => \register_interface_inst|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(6));

-- Location: LABCELL_X35_Y18_N3
\register_interface_inst|ctrlReg~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_interface_inst|ctrlReg~1_combout\ = ( \motor_control_unit_inst|signal_generator_inst|ir_wire~q\ & ( !\register_interface_inst|process_0~0_combout\ ) ) # ( !\motor_control_unit_inst|signal_generator_inst|ir_wire~q\ & ( 
-- (!\register_interface_inst|process_0~0_combout\ & \register_interface_inst|ctrlReg\(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \register_interface_inst|ALT_INV_process_0~0_combout\,
	datad => \register_interface_inst|ALT_INV_ctrlReg\(7),
	dataf => \motor_control_unit_inst|signal_generator_inst|ALT_INV_ir_wire~q\,
	combout => \register_interface_inst|ctrlReg~1_combout\);

-- Location: FF_X35_Y18_N4
\register_interface_inst|ctrlReg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \register_interface_inst|ctrlReg~1_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(7));

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

-- Location: LABCELL_X67_Y25_N0
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


