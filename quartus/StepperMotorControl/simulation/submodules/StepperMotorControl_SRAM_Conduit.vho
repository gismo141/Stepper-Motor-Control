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

--synthesis_resources = io_buf_tri 40 lut 63 mux21 1 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  StepperMotorControl_SRAM_Conduit IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 grant	:	OUT  STD_LOGIC;
		 request	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 SRAM_A	:	OUT  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 SRAM_BE_N	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 SRAM_CE_N	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 SRAM_D	:	INOUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 SRAM_OE_N	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 SRAM_WE_N	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 tcs_SRAM_A	:	IN  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 tcs_SRAM_BE_N	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 tcs_SRAM_CE_N	:	IN  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 tcs_SRAM_D	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 tcs_SRAM_D_in	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 tcs_SRAM_D_outen	:	IN  STD_LOGIC;
		 tcs_SRAM_OE_N	:	IN  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 tcs_SRAM_WE_N	:	IN  STD_LOGIC_VECTOR (0 DOWNTO 0)
	 ); 
 END StepperMotorControl_SRAM_Conduit;

 ARCHITECTURE RTL OF StepperMotorControl_SRAM_Conduit IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	steppermotorcontrol_sram_conduit_grant_reg_2q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_0_33q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_10_43q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_11_44q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_12_45q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_13_46q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_14_47q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_15_48q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_16_49q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_17_50q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_18_51q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_1_34q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_2_35q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_3_36q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_4_37q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_5_38q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_6_39q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_7_40q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_8_41q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_a_reg_9_42q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_aen_reg_10q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_be_n_reg_0_101q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_be_n_reg_1_102q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_be_nen_reg_6q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_ce_n_reg_0_104q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_ce_nen_reg_5q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_0_9q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_10_61q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_11_62q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_12_63q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_13_64q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_14_65q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_15_66q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_1_52q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_2_53q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_3_54q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_4_55q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_5_56q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_6_57q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_7_58q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_8_59q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_in_reg_9_60q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_0_83q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_10_93q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_11_94q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_12_95q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_13_96q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_14_97q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_15_98q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_1_84q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_2_85q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_3_86q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_4_87q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_5_88q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_6_89q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_7_90q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_8_91q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_d_reg_9_92q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_oe_n_reg_0_4q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_oe_nen_reg_3q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_we_n_reg_0_13q	:	STD_LOGIC := '0';
	 SIGNAL	steppermotorcontrol_sram_conduit_sram_we_nen_reg_11q	:	STD_LOGIC := '0';
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_0_14w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_10_24w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_11_25w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_12_26w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_13_27w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_14_28w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_15_29w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_16_30w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_17_31w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_18_32w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_1_15w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_2_16w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_3_17w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_4_18w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_5_19w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_6_20w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_7_21w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_8_22w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_a_9_23w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_be_n_0_99w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_be_n_1_100w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_ce_n_0_103w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_0_67w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_10_77w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_11_78w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_12_79w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_13_80w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_14_81w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_15_82w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_1_68w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_2_69w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_3_70w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_4_71w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_5_72w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_6_73w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_7_74w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_8_75w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_d_9_76w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_oe_n_0_105w_dataout	:	STD_LOGIC;
	 SIGNAL  wire_steppermotorcontrol_sram_conduit_sram_we_n_0_12w_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_sram_conduit_grant_reg_1m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_reset1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
 BEGIN

	wire_w_lg_reset1w(0) <= NOT reset;
	grant <= steppermotorcontrol_sram_conduit_grant_reg_2q;
	s_wire_vcc <= '1';
	SRAM_A <= ( wire_steppermotorcontrol_sram_conduit_sram_a_18_32w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_17_31w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_16_30w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_15_29w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_14_28w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_13_27w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_12_26w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_11_25w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_10_24w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_9_23w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_8_22w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_7_21w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_6_20w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_5_19w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_4_18w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_3_17w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_2_16w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_1_15w_dataout & wire_steppermotorcontrol_sram_conduit_sram_a_0_14w_dataout);
	SRAM_BE_N <= ( wire_steppermotorcontrol_sram_conduit_sram_be_n_1_100w_dataout & wire_steppermotorcontrol_sram_conduit_sram_be_n_0_99w_dataout);
	SRAM_CE_N(0) <= ( wire_steppermotorcontrol_sram_conduit_sram_ce_n_0_103w_dataout);
	SRAM_D <= ( wire_steppermotorcontrol_sram_conduit_sram_d_15_82w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_14_81w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_13_80w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_12_79w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_11_78w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_10_77w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_9_76w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_8_75w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_7_74w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_6_73w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_5_72w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_4_71w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_3_70w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_2_69w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_1_68w_dataout & wire_steppermotorcontrol_sram_conduit_sram_d_0_67w_dataout);
	SRAM_OE_N(0) <= ( wire_steppermotorcontrol_sram_conduit_sram_oe_n_0_105w_dataout);
	SRAM_WE_N(0) <= ( wire_steppermotorcontrol_sram_conduit_sram_we_n_0_12w_dataout);
	tcs_SRAM_D_in <= ( steppermotorcontrol_sram_conduit_sram_d_in_reg_15_66q & steppermotorcontrol_sram_conduit_sram_d_in_reg_14_65q & steppermotorcontrol_sram_conduit_sram_d_in_reg_13_64q & steppermotorcontrol_sram_conduit_sram_d_in_reg_12_63q & steppermotorcontrol_sram_conduit_sram_d_in_reg_11_62q & steppermotorcontrol_sram_conduit_sram_d_in_reg_10_61q & steppermotorcontrol_sram_conduit_sram_d_in_reg_9_60q & steppermotorcontrol_sram_conduit_sram_d_in_reg_8_59q & steppermotorcontrol_sram_conduit_sram_d_in_reg_7_58q & steppermotorcontrol_sram_conduit_sram_d_in_reg_6_57q & steppermotorcontrol_sram_conduit_sram_d_in_reg_5_56q & steppermotorcontrol_sram_conduit_sram_d_in_reg_4_55q & steppermotorcontrol_sram_conduit_sram_d_in_reg_3_54q & steppermotorcontrol_sram_conduit_sram_d_in_reg_2_53q & steppermotorcontrol_sram_conduit_sram_d_in_reg_1_52q & steppermotorcontrol_sram_conduit_sram_d_in_reg_0_9q);
	PROCESS (clk)
	BEGIN
		IF (clk = '1' AND clk'event) THEN
				steppermotorcontrol_sram_conduit_grant_reg_2q <= wire_steppermotorcontrol_sram_conduit_grant_reg_1m_dataout;
				steppermotorcontrol_sram_conduit_sram_a_reg_0_33q <= tcs_SRAM_A(0);
				steppermotorcontrol_sram_conduit_sram_a_reg_10_43q <= tcs_SRAM_A(10);
				steppermotorcontrol_sram_conduit_sram_a_reg_11_44q <= tcs_SRAM_A(11);
				steppermotorcontrol_sram_conduit_sram_a_reg_12_45q <= tcs_SRAM_A(12);
				steppermotorcontrol_sram_conduit_sram_a_reg_13_46q <= tcs_SRAM_A(13);
				steppermotorcontrol_sram_conduit_sram_a_reg_14_47q <= tcs_SRAM_A(14);
				steppermotorcontrol_sram_conduit_sram_a_reg_15_48q <= tcs_SRAM_A(15);
				steppermotorcontrol_sram_conduit_sram_a_reg_16_49q <= tcs_SRAM_A(16);
				steppermotorcontrol_sram_conduit_sram_a_reg_17_50q <= tcs_SRAM_A(17);
				steppermotorcontrol_sram_conduit_sram_a_reg_18_51q <= tcs_SRAM_A(18);
				steppermotorcontrol_sram_conduit_sram_a_reg_1_34q <= tcs_SRAM_A(1);
				steppermotorcontrol_sram_conduit_sram_a_reg_2_35q <= tcs_SRAM_A(2);
				steppermotorcontrol_sram_conduit_sram_a_reg_3_36q <= tcs_SRAM_A(3);
				steppermotorcontrol_sram_conduit_sram_a_reg_4_37q <= tcs_SRAM_A(4);
				steppermotorcontrol_sram_conduit_sram_a_reg_5_38q <= tcs_SRAM_A(5);
				steppermotorcontrol_sram_conduit_sram_a_reg_6_39q <= tcs_SRAM_A(6);
				steppermotorcontrol_sram_conduit_sram_a_reg_7_40q <= tcs_SRAM_A(7);
				steppermotorcontrol_sram_conduit_sram_a_reg_8_41q <= tcs_SRAM_A(8);
				steppermotorcontrol_sram_conduit_sram_a_reg_9_42q <= tcs_SRAM_A(9);
				steppermotorcontrol_sram_conduit_sram_aen_reg_10q <= wire_w_lg_reset1w(0);
				steppermotorcontrol_sram_conduit_sram_be_n_reg_0_101q <= tcs_SRAM_BE_N(0);
				steppermotorcontrol_sram_conduit_sram_be_n_reg_1_102q <= tcs_SRAM_BE_N(1);
				steppermotorcontrol_sram_conduit_sram_be_nen_reg_6q <= wire_w_lg_reset1w(0);
				steppermotorcontrol_sram_conduit_sram_ce_n_reg_0_104q <= tcs_SRAM_CE_N(0);
				steppermotorcontrol_sram_conduit_sram_ce_nen_reg_5q <= wire_w_lg_reset1w(0);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_0_9q <= SRAM_D(0);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_10_61q <= SRAM_D(10);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_11_62q <= SRAM_D(11);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_12_63q <= SRAM_D(12);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_13_64q <= SRAM_D(13);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_14_65q <= SRAM_D(14);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_15_66q <= SRAM_D(15);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_1_52q <= SRAM_D(1);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_2_53q <= SRAM_D(2);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_3_54q <= SRAM_D(3);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_4_55q <= SRAM_D(4);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_5_56q <= SRAM_D(5);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_6_57q <= SRAM_D(6);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_7_58q <= SRAM_D(7);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_8_59q <= SRAM_D(8);
				steppermotorcontrol_sram_conduit_sram_d_in_reg_9_60q <= SRAM_D(9);
				steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q <= tcs_SRAM_D_outen;
				steppermotorcontrol_sram_conduit_sram_d_reg_0_83q <= tcs_SRAM_D(0);
				steppermotorcontrol_sram_conduit_sram_d_reg_10_93q <= tcs_SRAM_D(10);
				steppermotorcontrol_sram_conduit_sram_d_reg_11_94q <= tcs_SRAM_D(11);
				steppermotorcontrol_sram_conduit_sram_d_reg_12_95q <= tcs_SRAM_D(12);
				steppermotorcontrol_sram_conduit_sram_d_reg_13_96q <= tcs_SRAM_D(13);
				steppermotorcontrol_sram_conduit_sram_d_reg_14_97q <= tcs_SRAM_D(14);
				steppermotorcontrol_sram_conduit_sram_d_reg_15_98q <= tcs_SRAM_D(15);
				steppermotorcontrol_sram_conduit_sram_d_reg_1_84q <= tcs_SRAM_D(1);
				steppermotorcontrol_sram_conduit_sram_d_reg_2_85q <= tcs_SRAM_D(2);
				steppermotorcontrol_sram_conduit_sram_d_reg_3_86q <= tcs_SRAM_D(3);
				steppermotorcontrol_sram_conduit_sram_d_reg_4_87q <= tcs_SRAM_D(4);
				steppermotorcontrol_sram_conduit_sram_d_reg_5_88q <= tcs_SRAM_D(5);
				steppermotorcontrol_sram_conduit_sram_d_reg_6_89q <= tcs_SRAM_D(6);
				steppermotorcontrol_sram_conduit_sram_d_reg_7_90q <= tcs_SRAM_D(7);
				steppermotorcontrol_sram_conduit_sram_d_reg_8_91q <= tcs_SRAM_D(8);
				steppermotorcontrol_sram_conduit_sram_d_reg_9_92q <= tcs_SRAM_D(9);
				steppermotorcontrol_sram_conduit_sram_oe_n_reg_0_4q <= tcs_SRAM_OE_N(0);
				steppermotorcontrol_sram_conduit_sram_oe_nen_reg_3q <= wire_w_lg_reset1w(0);
				steppermotorcontrol_sram_conduit_sram_we_n_reg_0_13q <= tcs_SRAM_WE_N(0);
				steppermotorcontrol_sram_conduit_sram_we_nen_reg_11q <= wire_w_lg_reset1w(0);
		END IF;
	END PROCESS;
	steppermotorcontrol_sram_conduit_sram_a_0_14w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_0_33q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_0_14w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_10_24w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_10_43q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_10_24w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_11_25w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_11_44q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_11_25w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_12_26w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_12_45q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_12_26w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_13_27w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_13_46q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_13_27w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_14_28w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_14_47q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_14_28w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_15_29w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_15_48q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_15_29w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_16_30w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_16_49q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_16_30w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_17_31w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_17_50q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_17_31w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_18_32w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_18_51q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_18_32w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_1_15w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_1_34q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_1_15w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_2_16w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_2_35q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_2_16w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_3_17w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_3_36q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_3_17w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_4_18w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_4_37q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_4_18w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_5_19w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_5_38q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_5_19w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_6_20w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_6_39q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_6_20w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_7_21w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_7_40q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_7_21w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_8_22w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_8_41q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_8_22w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_a_9_23w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_a_reg_9_42q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_a_9_23w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_aen_reg_10q
	  );
	steppermotorcontrol_sram_conduit_sram_be_n_0_99w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_be_n_reg_0_101q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_be_n_0_99w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_be_nen_reg_6q
	  );
	steppermotorcontrol_sram_conduit_sram_be_n_1_100w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_be_n_reg_1_102q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_be_n_1_100w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_be_nen_reg_6q
	  );
	steppermotorcontrol_sram_conduit_sram_ce_n_0_103w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_ce_n_reg_0_104q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_ce_n_0_103w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_ce_nen_reg_5q
	  );
	steppermotorcontrol_sram_conduit_sram_d_0_67w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_0_83q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_0_67w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_10_77w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_10_93q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_10_77w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_11_78w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_11_94q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_11_78w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_12_79w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_12_95q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_12_79w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_13_80w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_13_96q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_13_80w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_14_81w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_14_97q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_14_81w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_15_82w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_15_98q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_15_82w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_1_68w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_1_84q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_1_68w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_2_69w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_2_85q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_2_69w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_3_70w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_3_86q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_3_70w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_4_71w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_4_87q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_4_71w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_5_72w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_5_88q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_5_72w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_6_73w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_6_89q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_6_73w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_7_74w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_7_90q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_7_74w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_8_75w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_8_91q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_8_75w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_d_9_76w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_d_reg_9_92q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_d_9_76w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_d_outen_reg_7q
	  );
	steppermotorcontrol_sram_conduit_sram_oe_n_0_105w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_oe_n_reg_0_4q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_oe_n_0_105w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_oe_nen_reg_3q
	  );
	steppermotorcontrol_sram_conduit_sram_we_n_0_12w :  io_buf_tri
	  PORT MAP ( 
		datain => steppermotorcontrol_sram_conduit_sram_we_n_reg_0_13q,
		dataout => wire_steppermotorcontrol_sram_conduit_sram_we_n_0_12w_dataout,
		oe => steppermotorcontrol_sram_conduit_sram_we_nen_reg_11q
	  );
	wire_steppermotorcontrol_sram_conduit_grant_reg_1m_dataout <= request AND NOT(reset);

 END RTL; --StepperMotorControl_SRAM_Conduit
--synopsys translate_on
--VALID FILE
