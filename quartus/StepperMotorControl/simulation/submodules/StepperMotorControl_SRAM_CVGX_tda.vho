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

--synthesis_resources = 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  StepperMotorControl_SRAM_CVGX_tda IS 
	 PORT 
	 ( 
		 av_address	:	IN  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 av_byteenable	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 av_chipselect	:	IN  STD_LOGIC;
		 av_outputenable	:	IN  STD_LOGIC;
		 av_readdata	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 av_write	:	IN  STD_LOGIC;
		 av_writedata	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 c0_grant	:	OUT  STD_LOGIC;
		 c0_request	:	IN  STD_LOGIC;
		 c0_uav_write	:	IN  STD_LOGIC;
		 clk	:	IN  STD_LOGIC;
		 reset	:	IN  STD_LOGIC;
		 tcm0_address	:	OUT  STD_LOGIC_VECTOR (18 DOWNTO 0);
		 tcm0_byteenable_n	:	OUT  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 tcm0_chipselect_n	:	OUT  STD_LOGIC;
		 tcm0_data_outen	:	OUT  STD_LOGIC;
		 tcm0_grant	:	IN  STD_LOGIC;
		 tcm0_outputenable_n	:	OUT  STD_LOGIC;
		 tcm0_readdata	:	IN  STD_LOGIC_VECTOR (15 DOWNTO 0);
		 tcm0_request	:	OUT  STD_LOGIC;
		 tcm0_write_n	:	OUT  STD_LOGIC;
		 tcm0_writedata	:	OUT  STD_LOGIC_VECTOR (15 DOWNTO 0)
	 ); 
 END StepperMotorControl_SRAM_CVGX_tda;

 ARCHITECTURE RTL OF StepperMotorControl_SRAM_CVGX_tda IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_w_lg_av_chipselect2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_av_outputenable3w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_av_write1w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_av_byteenable_range61w62w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_av_byteenable_range65w66w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_av_byteenable_range61w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_av_byteenable_range65w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_av_chipselect2w(0) <= NOT av_chipselect;
	wire_w_lg_av_outputenable3w(0) <= NOT av_outputenable;
	wire_w_lg_av_write1w(0) <= NOT av_write;
	wire_w_lg_w_av_byteenable_range61w62w(0) <= NOT wire_w_av_byteenable_range61w(0);
	wire_w_lg_w_av_byteenable_range65w66w(0) <= NOT wire_w_av_byteenable_range65w(0);
	av_readdata <= ( tcm0_readdata(15 DOWNTO 0));
	c0_grant <= tcm0_grant;
	tcm0_address <= ( av_address(18 DOWNTO 0));
	tcm0_byteenable_n <= ( wire_w_lg_w_av_byteenable_range65w66w & wire_w_lg_w_av_byteenable_range61w62w);
	tcm0_chipselect_n <= wire_w_lg_av_chipselect2w(0);
	tcm0_data_outen <= c0_uav_write;
	tcm0_outputenable_n <= wire_w_lg_av_outputenable3w(0);
	tcm0_request <= c0_request;
	tcm0_write_n <= wire_w_lg_av_write1w(0);
	tcm0_writedata <= ( av_writedata(15 DOWNTO 0));
	wire_w_av_byteenable_range61w(0) <= av_byteenable(0);
	wire_w_av_byteenable_range65w(0) <= av_byteenable(1);

 END RTL; --StepperMotorControl_SRAM_CVGX_tda
--synopsys translate_on
--VALID FILE
