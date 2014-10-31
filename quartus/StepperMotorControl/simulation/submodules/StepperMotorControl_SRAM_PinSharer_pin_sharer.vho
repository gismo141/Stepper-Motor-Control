--IP Functional Simulation Model
--VERSION_BEGIN 14.0 cbx_mgl 2014:09:17:19:03:37:SJ cbx_simgen 2014:09:17:18:55:21:SJ  VERSION_END


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

--synthesis_resources = lut 2 mux21 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  StepperMotorControl_SRAM_PinSharer_pin_sharer IS 
	 PORT 
	 ( 
		 ack	:	OUT  STD_LOGIC;
		 arb_SRAM_CVGX_tcm	:	OUT  STD_LOGIC;
		 clk	:	IN  STD_LOGIC;
		 grant	:	IN  STD_LOGIC;
		 next_grant	:	IN  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 request	:	OUT  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 SRAM_A	:	OUT  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 SRAM_BE_N	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 SRAM_CE_N	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 SRAM_D	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 SRAM_D_in	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 SRAM_D_outen	:	OUT  STD_LOGIC;
		 SRAM_OE_N	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 SRAM_WE_N	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 tcs0_grant	:	OUT  STD_LOGIC;
		 tcs0_request	:	IN  STD_LOGIC;
		 tcs0_tcm_address_out	:	IN  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 tcs0_tcm_byteenable_n_out	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 tcs0_tcm_chipselect_n_out	:	IN  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 tcs0_tcm_data_in	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 tcs0_tcm_data_out	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 tcs0_tcm_data_outen	:	IN  STD_LOGIC;
		 tcs0_tcm_outputenable_n_out	:	IN  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 tcs0_tcm_write_n_out	:	IN  STD_LOGIC_VECTOR (0 DOWNTO 0)
	 ); 
 END StepperMotorControl_SRAM_PinSharer_pin_sharer;

 ARCHITECTURE RTL OF StepperMotorControl_SRAM_PinSharer_pin_sharer IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	steppermotorcontrol_sram_pinsharer_pin_sharer_selected_grant_0_8q	:	STD_LOGIC := '0';
	 SIGNAL  wire_nl_w2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL	steppermotorcontrol_sram_pinsharer_pin_sharer_ack_reg0_1q	:	STD_LOGIC := '0';
	 SIGNAL	wire_steppermotorcontrol_sram_pinsharer_pin_sharer_selected_grant_6m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_reset1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_tcs0_request3w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_steppermotorcontrol_sram_pinsharer_pin_sharer_always0_5_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_w_lg_reset1w(0) <= NOT reset;
	wire_w_lg_tcs0_request3w(0) <= NOT tcs0_request;
	ack <= steppermotorcontrol_sram_pinsharer_pin_sharer_ack_reg0_1q;
	arb_SRAM_CVGX_tcm <= tcs0_request;
	request <= tcs0_request;
	s_wire_steppermotorcontrol_sram_pinsharer_pin_sharer_always0_5_dataout <= ((wire_nl_w2w(0) OR wire_w_lg_tcs0_request3w(0)) AND grant);
	s_wire_vcc <= '1';
	SRAM_A <= ( tcs0_tcm_address_out(18 DOWNTO 0));
	SRAM_BE_N <= ( tcs0_tcm_byteenable_n_out(1 DOWNTO 0));
	SRAM_CE_N(0) <= ( tcs0_tcm_chipselect_n_out(0));
	SRAM_D <= ( tcs0_tcm_data_out(15 DOWNTO 0));
	SRAM_D_outen <= tcs0_tcm_data_outen;
	SRAM_OE_N(0) <= ( tcs0_tcm_outputenable_n_out(0));
	SRAM_WE_N(0) <= ( tcs0_tcm_write_n_out(0));
	tcs0_grant <= steppermotorcontrol_sram_pinsharer_pin_sharer_selected_grant_0_8q;
	tcs0_tcm_data_in <= ( SRAM_D_in(15 DOWNTO 0));
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				steppermotorcontrol_sram_pinsharer_pin_sharer_selected_grant_0_8q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (s_wire_steppermotorcontrol_sram_pinsharer_pin_sharer_always0_5_dataout = '1') THEN
				steppermotorcontrol_sram_pinsharer_pin_sharer_selected_grant_0_8q <= wire_steppermotorcontrol_sram_pinsharer_pin_sharer_selected_grant_6m_dataout;
			END IF;
		END IF;
	END PROCESS;
	wire_nl_w2w(0) <= NOT steppermotorcontrol_sram_pinsharer_pin_sharer_selected_grant_0_8q;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				steppermotorcontrol_sram_pinsharer_pin_sharer_ack_reg0_1q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				steppermotorcontrol_sram_pinsharer_pin_sharer_ack_reg0_1q <= s_wire_steppermotorcontrol_sram_pinsharer_pin_sharer_always0_5_dataout;
		END IF;
	END PROCESS;
	wire_steppermotorcontrol_sram_pinsharer_pin_sharer_selected_grant_6m_dataout <= next_grant(0) AND tcs0_request;

 END RTL; --StepperMotorControl_SRAM_PinSharer_pin_sharer
--synopsys translate_on
--VALID FILE
