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

 ENTITY  StepperMotorControl_SRAM_PinSharer_arbiter IS 
	 PORT 
	 ( 
		 ack	:	IN  STD_LOGIC;
		 clk	:	IN  STD_LOGIC;
		 next_grant	:	OUT  STD_LOGIC_VECTOR (0 DOWNTO 0);
		 reset	:	IN  STD_LOGIC;
		 sink0_valid	:	IN  STD_LOGIC
	 ); 
 END StepperMotorControl_SRAM_PinSharer_arbiter;

 ARCHITECTURE RTL OF StepperMotorControl_SRAM_PinSharer_arbiter IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
 BEGIN

	next_grant(0) <= ( sink0_valid);

 END RTL; --StepperMotorControl_SRAM_PinSharer_arbiter
--synopsys translate_on
--VALID FILE
