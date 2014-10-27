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

--synthesis_resources = mux21 116 
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
		 src_channel	:	OUT  STD_LOGIC_VECTOR (12 DOWNTO 0);
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
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_104m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_105m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_111m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_112m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_113m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_114m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_122m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_123m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_129m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_130m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_131m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_132m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_135m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_140m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_141m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_147m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_148m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_149m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_150m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_153m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_156m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_158m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_159m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_165m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_166m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_167m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_168m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_169m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_171m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_174m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_176m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_177m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_183m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_184m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_185m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_186m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_187m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_188m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_189m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_192m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_194m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_195m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_202m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_203m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_204m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_205m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_206m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_207m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_208m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_209m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_211m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_213m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_214m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_220m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_221m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_222m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_223m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_224m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_225m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_226m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_227m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_228m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_229m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_231m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_232m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_50m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_51m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_57m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_68m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_69m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_75m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_76m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_86m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_87m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_93m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_94m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_95m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_106m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_107m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_108m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_109m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_124m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_125m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_126m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_127m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_142m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_143m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_144m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_145m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_160m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_161m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_162m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_163m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_178m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_179m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_180m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_181m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_196m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_197m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_198m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_199m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_215m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_216m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_217m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_218m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_233m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_234m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_235m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_236m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_54m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_70m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_72m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_88m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_89m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_90m_dataout	:	STD_LOGIC;
	 SIGNAL	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_91m_dataout	:	STD_LOGIC;
	 SIGNAL  wire_w_lg_w_sink_data_range124w434w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range127w344w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range145w306w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range127w322w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range130w323w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_sink_data_range148w305w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_0_738_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_1_518_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_540_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout :	STD_LOGIC;
	 SIGNAL  wire_w_sink_data_range124w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range127w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range130w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range145w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_sink_data_range148w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_sink_data_range124w434w(0) <= wire_w_sink_data_range124w(0) AND wire_w_lg_w_sink_data_range127w322w(0);
	wire_w_lg_w_sink_data_range127w344w(0) <= wire_w_sink_data_range127w(0) AND wire_w_lg_w_sink_data_range130w323w(0);
	wire_w_lg_w_sink_data_range145w306w(0) <= wire_w_sink_data_range145w(0) AND wire_w_lg_w_sink_data_range148w305w(0);
	wire_w1w(0) <= NOT s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_1_518_dataout;
	wire_w_lg_w_sink_data_range127w322w(0) <= NOT wire_w_sink_data_range127w(0);
	wire_w_lg_w_sink_data_range130w323w(0) <= NOT wire_w_sink_data_range130w(0);
	wire_w_lg_w_sink_data_range148w305w(0) <= NOT wire_w_sink_data_range148w(0);
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_0_738_dataout <= ((((((((((((((((((NOT sink_data(39)) AND sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout <= (sink_data(60) AND s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_0_738_dataout);
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout <= (((((((((((((((((NOT sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout <= (((((((((((((((((sink_data(39) AND sink_data(40)) AND sink_data(41)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_1_518_dataout <= ((((((((wire_w_lg_w_sink_data_range145w306w(0) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_540_dataout <= (((((((((((((((wire_w_lg_w_sink_data_range127w322w(0) AND wire_w_lg_w_sink_data_range130w323w(0)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout <= ((((((((((((((wire_w_lg_w_sink_data_range127w344w(0) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout <= (((((((((((((((wire_w_lg_w_sink_data_range127w322w(0) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout <= (((((((((((((((sink_data(41) AND sink_data(42)) AND (NOT sink_data(43))) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout <= (((((((((((((((wire_w_lg_w_sink_data_range127w322w(0) AND wire_w_lg_w_sink_data_range130w323w(0)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout <= ((((((((((((((wire_w_lg_w_sink_data_range127w344w(0) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout <= (((((((((((((((((NOT sink_data(40)) AND wire_w_lg_w_sink_data_range127w322w(0)) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout <= (((((((((((((((wire_w_lg_w_sink_data_range124w434w(0) AND sink_data(42)) AND sink_data(43)) AND (NOT sink_data(44))) AND (NOT sink_data(45))) AND (NOT sink_data(46))) AND (NOT sink_data(47))) AND sink_data(48)) AND (NOT sink_data(49))) AND (NOT sink_data(50))) AND (NOT sink_data(51))) AND (NOT sink_data(52))) AND (NOT sink_data(53))) AND (NOT sink_data(54))) AND (NOT sink_data(55))) AND sink_data(56));
	sink_ready <= src_ready;
	src_channel <= ( wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_220m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_221m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_222m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_223m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_224m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_225m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_226m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_227m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_228m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_229m_dataout & s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_231m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_232m_dataout);
	src_data <= ( sink_data(98 DOWNTO 86) & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_233m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_234m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_235m_dataout & wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_236m_dataout & sink_data(81 DOWNTO 0));
	src_endofpacket <= sink_endofpacket;
	src_startofpacket <= sink_startofpacket;
	src_valid <= sink_valid;
	wire_w_sink_data_range124w(0) <= sink_data(40);
	wire_w_sink_data_range127w(0) <= sink_data(41);
	wire_w_sink_data_range130w(0) <= sink_data(42);
	wire_w_sink_data_range145w(0) <= sink_data(47);
	wire_w_sink_data_range148w(0) <= sink_data(48);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_104m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_86m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_105m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_87m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_111m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_93m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_112m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_94m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_113m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_95m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_114m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_122m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_104m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_123m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_105m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_129m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_111m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_130m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_112m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_131m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_113m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_132m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_114m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_135m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_140m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_122m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_141m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_123m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_147m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_129m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_148m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_130m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_149m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_131m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_150m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_132m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_153m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_135m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_156m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_158m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_140m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_159m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_141m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_165m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_147m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_166m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_148m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_167m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_149m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_168m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_150m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_169m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_171m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_153m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_174m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_156m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_176m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_158m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_177m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_159m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_183m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_165m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_184m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_166m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_185m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_167m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_186m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_168m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_187m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_169m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_188m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_189m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_171m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_192m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_174m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_194m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_176m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_195m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_177m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_202m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_183m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_203m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_184m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_204m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_185m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_205m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_186m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_206m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_187m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_207m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_188m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_208m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_189m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_209m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_211m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_192m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_213m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_194m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_214m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_195m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_220m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_202m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_221m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_203m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_222m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_204m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_223m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_205m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_224m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_206m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_225m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_207m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_226m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_208m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_227m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_209m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_228m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_229m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_211m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_231m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_213m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_232m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_214m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_50m_dataout <= wire_w1w(0) AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_540_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_51m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_1_518_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_540_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_57m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_540_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_68m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_50m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_69m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_51m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_75m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_57m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_76m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_86m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_68m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_87m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_69m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_93m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_75m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_94m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_76m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_95m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_106m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_88m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_107m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_89m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_108m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_90m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_109m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_91m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_5_606_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_124m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_106m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_125m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_107m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_126m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_108m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_127m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_109m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_6_628_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_142m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_124m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_143m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_125m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_144m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_126m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_145m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_127m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_7_650_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_160m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_142m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_161m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_143m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_162m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_144m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_163m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_145m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_8_672_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_178m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_160m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_179m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_161m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_180m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_162m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_181m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_163m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_9_694_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_196m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_178m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_197m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_179m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_198m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_180m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_199m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_181m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_10_716_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_215m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_196m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_216m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_197m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_217m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_198m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_218m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_199m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_always1_201_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_233m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_215m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_234m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_216m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_235m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_217m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_236m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_218m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_11_760_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_54m_dataout <= wire_w1w(0) AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_540_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_70m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_2_540_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_72m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_54m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_88m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_70m_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout);
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_89m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_90m_dataout <= wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_72m_dataout OR s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout;
	wire_steppermotorcontrol_mm_interconnect_0_router_001_src_data_91m_dataout <= s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_3_562_dataout AND NOT(s_wire_steppermotorcontrol_mm_interconnect_0_router_001_src_channel_4_584_dataout);

 END RTL; --StepperMotorControl_mm_interconnect_0_router_001
--synopsys translate_on
--VALID FILE
