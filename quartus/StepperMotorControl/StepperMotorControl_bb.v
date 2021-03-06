
module StepperMotorControl (
	reset_reset_n,
	clk_clk,
	sram_SRAM_OE_N,
	sram_SRAM_CE_N,
	sram_SRAM_BE_N,
	sram_SRAM_D,
	sram_SRAM_A,
	sram_SRAM_WE_N,
	sw_export,
	lcd_RS,
	lcd_RW,
	lcd_data,
	lcd_E,
	key_export,
	hex0_export,
	hex1_export,
	hex2_export,
	hex3_export,
	led9_export,
	registers_conduit_nios_redleds,
	registers_conduit_nios_greenleds,
	mcu_conduit_motor_motor_pwm,
	mcu_conduit_motor_motor_en);	

	input		reset_reset_n;
	input		clk_clk;
	output	[0:0]	sram_SRAM_OE_N;
	output	[0:0]	sram_SRAM_CE_N;
	output	[1:0]	sram_SRAM_BE_N;
	inout	[15:0]	sram_SRAM_D;
	output	[18:0]	sram_SRAM_A;
	output	[0:0]	sram_SRAM_WE_N;
	input	[9:0]	sw_export;
	output		lcd_RS;
	output		lcd_RW;
	inout	[7:0]	lcd_data;
	output		lcd_E;
	input	[3:0]	key_export;
	output	[6:0]	hex0_export;
	output	[6:0]	hex1_export;
	output	[6:0]	hex2_export;
	output	[6:0]	hex3_export;
	output		led9_export;
	output	[7:0]	registers_conduit_nios_redleds;
	output	[7:0]	registers_conduit_nios_greenleds;
	output	[3:0]	mcu_conduit_motor_motor_pwm;
	output	[1:0]	mcu_conduit_motor_motor_en;
endmodule
