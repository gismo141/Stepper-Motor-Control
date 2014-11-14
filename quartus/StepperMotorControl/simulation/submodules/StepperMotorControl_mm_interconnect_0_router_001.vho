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

--synthesis_resources = mux21 133 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  StepperMotorControl_mm_interconnect_0_router_001 IS 
	 PORT 
	 ( 
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 sink_data	:	IN  STD_LOGIC_VECTOR (98 DOWNTO 0);
		 sink_endofpacket	:	IN  STD_LOGIC;
		 sink_ready	:	OUT  STD_LOGIC;
		 sink_startofpacket	:	IN  STD_LOGIC;
		 sink_valid	:	IN  STD_LOGIC;
		 src_channel	:	OUT  STD_LOGIC_VECTOR (13 DOWNTO 0);
		 src_data	:	OUT  STD_LOGIC_VECTOR (98 DOWNTO 0);
		 src_endofpacket	:	OUT  STD_LOGIC;
		 src_ready	:	IN  STD_LOGIC;
		 src_startofpacket	:	OUT  STD_LOGIC;
		 src_valid	:	OUT  STD_LOGIC
	 ); 
 END StepperMotorControl_mm_interconnect_0_router_001;

 ARCHITECTURE RTL OF StepperMotorControl_mm_interconnect_0_router_001 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_100m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_101m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_110m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_111m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_117m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_119m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_120m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_121m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_129m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_130m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_136m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_138m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_139m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_140m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_141m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_148m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_149m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_155m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_157m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_158m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_159m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_160m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_162m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_167m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_168m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_174m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_176m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_177m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_178m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_179m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_181m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_184m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_186m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_187m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_193m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_194m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_195m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_196m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_197m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_198m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_200m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_203m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_205m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_206m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_212m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_213m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_214m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_215m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_216m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_217m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_218m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_219m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_222m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_224m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_225m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_232m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_233m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_234m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_235m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_236m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_237m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_238m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_239m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_240m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_242m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_244m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_245m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_251m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_252m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_253m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_254m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_255m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_256m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_257m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_258m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_259m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_260m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_261m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_263m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_264m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_53m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_54m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_60m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_72m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_73m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_79m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_81m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_91m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_92m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_98m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_112m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_113m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_114m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_115m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_131m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_132m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_133m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_134m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_150m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_151m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_152m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_153m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_169m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_170m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_171m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_172m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_188m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_189m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_190m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_191m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_207m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_208m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_209m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_210m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_226m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_227m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_228m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_229m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_246m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_247m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_248m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_249m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_265m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_266m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_267m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_268m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_57m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_74m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_75m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_76m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_93m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_94m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_95m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range127w345w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range145w307w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range130w324w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range148w306w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_0_794_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_1_552_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_574_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_596_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range127w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range130w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range145w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range127w345w(0) <= wire_w_sink_data_range127w(0) AND wire_w_lg_w_sink_data_range130w324w(0);
	wire_w_lg_w_sink_data_range145w307w(0) <= wire_w_sink_data_range145w(0) AND wire_w_lg_w_sink_data_range148w306w(0);
	wire_w1w(0) <= NOT s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_1_552_dataout;
	wire_w_lg_w_sink_data_range130w324w(0) <= NOT wire_w_sink_data_range130w(0);
	wire_w_lg_w_sink_data_range148w306w(0) <= NOT wire_w_sink_data_range148w(0);
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_0_794_dataout <= ((((((((((((((((((NOT sink_data(39)) AND sink_data(40)) AND (NOT sink_data(41))) AND wire_w_lg_w_sink_data_range130w324w(0)) AND (NOT sink_data(43))) AND sink_data(44)) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout <= (sink_data(60) AND s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_0_794_dataout);
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout <= ((((((((((((((((sink_data(40) AND sink_data(41)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout <= (((((((((((((((((NOT sink_data(40)) AND (NOT sink_data(41))) AND wire_w_lg_w_sink_data_range130w324w(0)) AND (NOT sink_data(43))) AND sink_data(44)) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout <= (((((((((((((((((sink_data(39) AND sink_data(40)) AND (NOT sink_data(41))) AND wire_w_lg_w_sink_data_range130w324w(0)) AND (NOT sink_data(43))) AND sink_data(44)) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_1_552_dataout <= ((((((((wire_w_lg_w_sink_data_range145w307w(0) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_574_dataout <= ((((((((((((((((NOT sink_data(41)) AND wire_w_lg_w_sink_data_range130w324w(0)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_596_dataout <= ((((((((((((((wire_w_lg_w_sink_data_range127w345w(0) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout <= ((((((((((((((((NOT sink_data(41)) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout <= (((((((((((((((sink_data(41) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout <= ((((((((((((((((NOT sink_data(41)) AND wire_w_lg_w_sink_data_range130w324w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout <= ((((((((((((((wire_w_lg_w_sink_data_range127w345w(0) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout <= ((((((((((((((((NOT sink_data(41)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout <= (((((((((((((((((NOT sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	sink_ready <= src_ready;
	src_channel <= ( wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_251m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_252m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_253m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_254m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_255m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_256m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_257m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_258m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_259m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_260m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_261m_dataout & s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_263m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_264m_dataout);
	src_data <= ( sink_data(98 DOWNTO 86) & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_265m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_266m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_267m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_268m_dataout & sink_data(81 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range127w(0) <= sink_data(41);
	wire_w_sink_data_range130w(0) <= sink_data(42);
	wire_w_sink_data_range145w(0) <= sink_data(47);
	wire_w_sink_data_range148w(0) <= sink_data(48);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_100m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_81m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_101m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_110m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_91m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_111m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_92m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_117m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_98m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_119m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_100m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_120m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_101m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_121m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_129m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_110m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_130m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_111m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_136m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_117m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_138m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_119m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_139m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_120m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_140m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_121m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_141m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_148m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_129m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_149m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_130m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_155m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_136m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_157m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_138m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_158m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_139m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_159m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_140m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_160m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_141m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_162m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_167m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_148m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_168m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_149m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_174m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_155m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_176m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_157m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_177m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_158m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_178m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_159m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_179m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_160m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_181m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_162m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_184m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_186m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_167m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_187m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_168m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_193m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_174m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_194m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_195m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_176m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_196m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_177m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_197m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_178m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_198m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_179m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_200m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_181m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_203m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_184m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_205m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_186m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_206m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_187m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_212m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_193m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_213m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_194m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_214m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_195m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_215m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_196m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_216m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_197m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_217m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_198m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_218m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_219m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_200m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_222m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_203m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_224m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_205m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_225m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_206m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_232m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_212m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_233m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_213m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_234m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_214m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_235m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_215m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_236m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_216m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_237m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_217m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_238m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_218m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_239m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_219m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_240m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_242m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_222m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_244m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_224m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_245m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_225m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_251m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_232m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_252m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_233m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_253m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_234m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_254m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_235m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_255m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_236m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_256m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_237m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_257m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_238m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_258m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_239m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_259m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_240m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_260m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_261m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_242m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_263m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_244m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_264m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_245m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_53m_dataout <= wire_w1w(0) AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_574_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_54m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_1_552_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_574_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_60m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_574_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_596_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_72m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_53m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_596_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_73m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_54m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_596_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_79m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_60m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_81m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_596_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_91m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_72m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_92m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_73m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_98m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_79m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_112m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_93m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_113m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_94m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_114m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_95m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_115m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_640_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_131m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_112m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_132m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_113m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_133m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_114m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_134m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_115m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_662_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_150m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_131m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_151m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_132m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_152m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_133m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_153m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_134m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_684_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_169m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_150m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_170m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_151m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_171m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_152m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_172m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_153m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_706_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_188m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_169m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_189m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_170m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_190m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_171m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_191m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_172m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_728_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_207m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_188m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_208m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_189m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_209m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_190m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_210m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_191m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_750_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_226m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_207m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_227m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_208m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_228m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_209m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_229m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_210m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_772_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_246m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_226m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_247m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_227m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_248m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_228m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_249m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_229m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_231_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_265m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_246m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_266m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_247m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_267m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_248m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_268m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_249m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_12_816_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_57m_dataout <= wire_w1w(0) AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_574_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_74m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_574_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_596_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_75m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_574_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_596_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_76m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_57m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_596_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_93m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_74m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_94m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_75m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_95m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_76m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_618_dataout;

 END RTL; --StepperMotorControl_mm_interconnect_0_router_001
--synopsys translate_on
--VALID FILE
