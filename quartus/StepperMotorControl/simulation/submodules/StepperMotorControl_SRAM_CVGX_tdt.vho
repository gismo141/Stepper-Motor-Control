--IP Functional Simulation Model
--VERSION_BEGIN 14.0 cbx_mgl 2014:06:17:18:10:38:SJ cbx_simgen 2014:06:17:18:06:03:SJ  VERSION_END


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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY sgate;
 USE sgate.sgate_pack.all;

--synthesis_resources = lut 2 mux21 4 oper_add 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  StepperMotorControl_SRAM_CVGX_tdt IS 
	 PORT 
	 ( 
		 c0_grant	:	IN  STD_LOGIC;
		 c0_request	:	OUT  STD_LOGIC;
		 c0_uav_write	:	OUT  STD_LOGIC;
		 clk	:	IN  STD_LOGIC;
		 m0_uav_address	:	OUT  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 m0_uav_burstcount	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 m0_uav_byteenable	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 m0_uav_debugaccess	:	OUT  STD_LOGIC;
		 m0_uav_lock	:	OUT  STD_LOGIC;
		 m0_uav_read	:	OUT  STD_LOGIC;
		 m0_uav_readdata	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 m0_uav_readdatavalid	:	IN  STD_LOGIC;
		 m0_uav_waitrequest	:	IN  STD_LOGIC;
		 m0_uav_write	:	OUT  STD_LOGIC;
		 m0_uav_writedata	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 reset	:	IN  STD_LOGIC;
		 s0_uav_address	:	IN  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 s0_uav_burstcount	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 s0_uav_byteenable	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 s0_uav_debugaccess	:	IN  STD_LOGIC;
		 s0_uav_lock	:	IN  STD_LOGIC;
		 s0_uav_read	:	IN  STD_LOGIC;
		 s0_uav_readdata	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 s0_uav_readdatavalid	:	OUT  STD_LOGIC;
		 s0_uav_waitrequest	:	OUT  STD_LOGIC;
		 s0_uav_write	:	IN  STD_LOGIC;
		 s0_uav_writedata	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0)
	 ); 
 END StepperMotorControl_SRAM_CVGX_tdt;

 ARCHITECTURE RTL OF StepperMotorControl_SRAM_CVGX_tdt IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_0_149q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_1_148q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nO_w193w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_nO_w192w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_143m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_144m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_145m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_146m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_a	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_b	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_gnd	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_o	:	STD_LOGIC_VECTOR (2 DOWNTO 0);
	 SIGNAL  wire_w_lg_m0_uav_waitrequest174w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_s0_uav_write4w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_c0_grant1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset191w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w3w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_m0_uav_waitrequest2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_s0_uav_read173w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_c0_uav_write_131_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_m0_uav_write_0_309_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_gnd <= '0';
	wire_w_lg_m0_uav_waitrequest174w(0) <= m0_uav_waitrequest AND wire_w_lg_s0_uav_read173w(0);
	wire_w_lg_s0_uav_write4w(0) <= s0_uav_write AND wire_w3w(0);
	wire_w_lg_c0_grant1w(0) <= NOT c0_grant;
	wire_w_lg_reset191w(0) <= NOT reset;
	wire_w3w(0) <= NOT s_wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_m0_uav_write_0_309_dataout;
	wire_w_lg_m0_uav_waitrequest2w(0) <= m0_uav_waitrequest OR wire_w_lg_c0_grant1w(0);
	wire_w_lg_s0_uav_read173w(0) <= s0_uav_read OR s0_uav_write;
	c0_request <= (wire_w_lg_m0_uav_waitrequest174w(0) OR wire_w3w(0));
	c0_uav_write <= s_wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_c0_uav_write_131_dataout;
	m0_uav_address <= ( s0_uav_address(18 DOWNTO 0));
	m0_uav_burstcount <= ( s0_uav_burstcount(1 DOWNTO 0));
	m0_uav_byteenable <= ( s0_uav_byteenable(1 DOWNTO 0));
	m0_uav_debugaccess <= '0';
	m0_uav_lock <= s0_uav_lock;
	m0_uav_read <= (s0_uav_read AND c0_grant);
	m0_uav_write <= (c0_grant AND s_wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_c0_uav_write_131_dataout);
	m0_uav_writedata <= ( s0_uav_writedata(15 DOWNTO 0));
	s0_uav_readdata <= ( m0_uav_readdata(15 DOWNTO 0));
	s0_uav_readdatavalid <= m0_uav_readdatavalid;
	s0_uav_waitrequest <= (wire_w_lg_m0_uav_waitrequest2w(0) OR wire_w_lg_s0_uav_write4w(0));
	s_wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_c0_uav_write_131_dataout <= (s0_uav_write AND s_wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_m0_uav_write_0_309_dataout);
	s_wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_m0_uav_write_0_309_dataout <= (wire_nO_w192w(0) AND wire_nO_w193w(0));
	s_wire_vcc <= '1';
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_0_149q <= '0';
				steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_1_148q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_0_149q <= wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_146m_dataout;
				steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_1_148q <= wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_145m_dataout;
		END IF;
	END PROCESS;
	wire_nO_w193w(0) <= NOT steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_0_149q;
	wire_nO_w192w(0) <= NOT steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_1_148q;
	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_143m_dataout <= wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_o(2) AND wire_w3w(0);
	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_144m_dataout <= wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_o(1) AND wire_w3w(0);
	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_145m_dataout <= wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_143m_dataout OR s0_uav_read;
	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_146m_dataout <= wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_144m_dataout OR s0_uav_read;
	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_a <= ( steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_1_148q & steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_turnaround_counter_0_149q & "1");
	wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_b <= ( "1" & "0" & "1");
	steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142 :  oper_add
	  GENERIC MAP (
		sgate_representation => 0,
		width_a => 3,
		width_b => 3,
		width_o => 3
	  )
	  PORT MAP ( 
		a => wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_a,
		b => wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_b,
		cin => wire_gnd,
		o => wire_steppermotorcontrol_sram_cvgx_tdt_altera_tristate_controller_translator_tdt_add0_142_o
	  );

 END RTL; --StepperMotorControl_SRAM_CVGX_tdt
--synopsys translate_on
--VALID FILE
