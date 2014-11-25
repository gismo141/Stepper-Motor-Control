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
-- VERSION "Version 14.0.2 Build 209 09/17/2014 SJ Full Version"

-- DATE "11/25/2014 11:01:29"

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
-- CLOCK_50_B5B	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CPU_RESET_n	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey~10_combout\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey.start~q\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey~9_combout\ : std_logic;
SIGNAL \debug_inst|key0_inst|STkey.newpress~q\ : std_logic;
SIGNAL \debug_inst|key0_reg~0_combout\ : std_logic;
SIGNAL \debug_inst|key0_reg~feeder_combout\ : std_logic;
SIGNAL \debug_inst|key0_reg~q\ : std_logic;
SIGNAL \debug_inst|Mux12~0_combout\ : std_logic;
SIGNAL \debug_inst|addr[0]~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux11~0_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux10~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux9~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux8~0_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux7~0_combout\ : std_logic;
SIGNAL \register_interface_inst|ctrlReg[5]~feeder_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \debug_inst|Mux6~0_combout\ : std_logic;
SIGNAL \register_interface_inst|speedReg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \debug_inst|addr_counter\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \register_interface_inst|ctrlReg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \debug_inst|addr\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \debug_inst|data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_CPU_RESET_n~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \debug_inst|ALT_INV_key0_reg~0_combout\ : std_logic;
SIGNAL \debug_inst|key0_inst|ALT_INV_STkey.start~q\ : std_logic;
SIGNAL \debug_inst|key0_inst|ALT_INV_STkey.newpress~q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_key0_reg~q\ : std_logic;
SIGNAL \debug_inst|ALT_INV_addr_counter\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \debug_inst|ALT_INV_data\ : std_logic_vector(5 DOWNTO 5);
SIGNAL \debug_inst|ALT_INV_addr\ : std_logic_vector(0 DOWNTO 0);

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
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_CPU_RESET_n~input_o\ <= NOT \CPU_RESET_n~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\debug_inst|ALT_INV_key0_reg~0_combout\ <= NOT \debug_inst|key0_reg~0_combout\;
\debug_inst|key0_inst|ALT_INV_STkey.start~q\ <= NOT \debug_inst|key0_inst|STkey.start~q\;
\debug_inst|key0_inst|ALT_INV_STkey.newpress~q\ <= NOT \debug_inst|key0_inst|STkey.newpress~q\;
\debug_inst|ALT_INV_key0_reg~q\ <= NOT \debug_inst|key0_reg~q\;
\debug_inst|ALT_INV_addr_counter\(0) <= NOT \debug_inst|addr_counter\(0);
\debug_inst|ALT_INV_data\(5) <= NOT \debug_inst|data\(5);
\debug_inst|ALT_INV_addr\(0) <= NOT \debug_inst|addr\(0);

-- Location: IOOBUF_X42_Y61_N2
\HSMC_RX_P[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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

-- Location: MLABCELL_X55_Y17_N30
\debug_inst|addr_counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|addr_counter[0]~0_combout\ = !\debug_inst|addr_counter\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \debug_inst|ALT_INV_addr_counter\(0),
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

-- Location: FF_X55_Y17_N31
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

-- Location: MLABCELL_X55_Y17_N33
\debug_inst|key0_inst|STkey~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|key0_inst|STkey~10_combout\ = ( \KEY[0]~input_o\ & ( \debug_inst|key0_inst|STkey.newpress~q\ ) ) # ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \debug_inst|key0_inst|ALT_INV_STkey.newpress~q\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \debug_inst|key0_inst|STkey~10_combout\);

-- Location: FF_X55_Y17_N35
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

-- Location: LABCELL_X67_Y22_N54
\debug_inst|key0_inst|STkey~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|key0_inst|STkey~9_combout\ = ( !\debug_inst|key0_inst|STkey.start~q\ & ( !\KEY[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \debug_inst|key0_inst|ALT_INV_STkey.start~q\,
	combout => \debug_inst|key0_inst|STkey~9_combout\);

-- Location: FF_X67_Y22_N56
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

-- Location: MLABCELL_X14_Y48_N9
\debug_inst|key0_reg~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|key0_reg~0_combout\ = !\debug_inst|key0_reg~q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_key0_reg~q\,
	combout => \debug_inst|key0_reg~0_combout\);

-- Location: LABCELL_X67_Y22_N12
\debug_inst|key0_reg~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|key0_reg~feeder_combout\ = ( \debug_inst|key0_reg~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \debug_inst|ALT_INV_key0_reg~0_combout\,
	combout => \debug_inst|key0_reg~feeder_combout\);

-- Location: FF_X67_Y22_N13
\debug_inst|key0_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \debug_inst|key0_inst|STkey.newpress~q\,
	d => \debug_inst|key0_reg~feeder_combout\,
	clrn => \CPU_RESET_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|key0_reg~q\);

-- Location: MLABCELL_X14_Y48_N39
\debug_inst|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux12~0_combout\ = ( \debug_inst|key0_reg~q\ & ( (!\debug_inst|addr_counter\(0)) # (\SW[7]~input_o\) ) ) # ( !\debug_inst|key0_reg~q\ & ( (\debug_inst|addr_counter\(0) & \SW[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111101011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_addr_counter\(0),
	datac => \ALT_INV_SW[7]~input_o\,
	dataf => \debug_inst|ALT_INV_key0_reg~q\,
	combout => \debug_inst|Mux12~0_combout\);

-- Location: FF_X14_Y48_N41
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

-- Location: MLABCELL_X14_Y48_N36
\debug_inst|addr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|addr[0]~0_combout\ = (!\CPU_RESET_n~input_o\ & ((\debug_inst|addr\(0)))) # (\CPU_RESET_n~input_o\ & (\debug_inst|addr_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_addr_counter\(0),
	datab => \ALT_INV_CPU_RESET_n~input_o\,
	datad => \debug_inst|ALT_INV_addr\(0),
	combout => \debug_inst|addr[0]~0_combout\);

-- Location: FF_X14_Y48_N38
\debug_inst|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \debug_inst|addr[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debug_inst|addr\(0));

-- Location: FF_X14_Y48_N1
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

-- Location: MLABCELL_X14_Y48_N45
\debug_inst|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux11~0_combout\ = (!\debug_inst|addr_counter\(0) & ((\SW[1]~input_o\))) # (\debug_inst|addr_counter\(0) & (\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_addr_counter\(0),
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[1]~input_o\,
	combout => \debug_inst|Mux11~0_combout\);

-- Location: FF_X14_Y48_N47
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

-- Location: FF_X14_Y48_N4
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

-- Location: MLABCELL_X14_Y48_N42
\debug_inst|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux10~0_combout\ = ( \SW[9]~input_o\ & ( (\SW[2]~input_o\) # (\debug_inst|addr_counter\(0)) ) ) # ( !\SW[9]~input_o\ & ( (!\debug_inst|addr_counter\(0) & \SW[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_addr_counter\(0),
	datac => \ALT_INV_SW[2]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \debug_inst|Mux10~0_combout\);

-- Location: FF_X14_Y48_N44
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

-- Location: FF_X14_Y48_N7
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

-- Location: FF_X14_Y48_N13
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

-- Location: FF_X14_Y48_N16
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

-- Location: FF_X14_Y48_N49
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

-- Location: MLABCELL_X14_Y48_N21
\debug_inst|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux9~0_combout\ = ( \SW[3]~input_o\ & ( !\debug_inst|addr_counter\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_addr_counter\(0),
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \debug_inst|Mux9~0_combout\);

-- Location: FF_X14_Y48_N23
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

-- Location: FF_X14_Y48_N53
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

-- Location: MLABCELL_X14_Y48_N24
\debug_inst|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux8~0_combout\ = (!\debug_inst|addr_counter\(0) & \SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_addr_counter\(0),
	datac => \ALT_INV_SW[4]~input_o\,
	combout => \debug_inst|Mux8~0_combout\);

-- Location: FF_X14_Y48_N26
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

-- Location: FF_X14_Y48_N55
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

-- Location: MLABCELL_X14_Y48_N18
\debug_inst|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux7~0_combout\ = (!\debug_inst|addr_counter\(0) & \SW[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_addr_counter\(0),
	datac => \ALT_INV_SW[5]~input_o\,
	combout => \debug_inst|Mux7~0_combout\);

-- Location: FF_X14_Y48_N20
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

-- Location: MLABCELL_X14_Y48_N57
\register_interface_inst|ctrlReg[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_interface_inst|ctrlReg[5]~feeder_combout\ = \debug_inst|data\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_data\(5),
	combout => \register_interface_inst|ctrlReg[5]~feeder_combout\);

-- Location: FF_X14_Y48_N58
\register_interface_inst|ctrlReg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B5B~inputCLKENA0_outclk\,
	d => \register_interface_inst|ctrlReg[5]~feeder_combout\,
	clrn => \CPU_RESET_n~input_o\,
	ena => \debug_inst|ALT_INV_addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_interface_inst|ctrlReg\(5));

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

-- Location: MLABCELL_X14_Y48_N27
\debug_inst|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \debug_inst|Mux6~0_combout\ = ( \SW[6]~input_o\ & ( !\debug_inst|addr_counter\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \debug_inst|ALT_INV_addr_counter\(0),
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \debug_inst|Mux6~0_combout\);

-- Location: FF_X14_Y48_N29
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

-- Location: FF_X14_Y48_N31
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

-- Location: MLABCELL_X60_Y30_N0
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


