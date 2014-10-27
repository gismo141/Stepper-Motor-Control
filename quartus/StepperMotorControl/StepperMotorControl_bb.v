
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
	led9_export,
	key_export,
	hex0_export,
	hex1_export,
	hex2_export,
	hex3_export);	

	input		reset_reset_n;
	input		clk_clk;
	output	[0:0]	sram_SRAM_OE_N;
	output	[0:0]	sram_SRAM_CE_N;
	output	[1:0]	sram_SRAM_BE_N;
	inout	[15:0]	sram_SRAM_D;
	output	[18:0]	sram_SRAM_A;
	output	[0:0]	sram_SRAM_WE_N;
	input	[8:0]	sw_export;
	output		lcd_RS;
	output		lcd_RW;
	inout	[7:0]	lcd_data;
	output		lcd_E;
	output		led9_export;
	input	[2:0]	key_export;
	output	[6:0]	hex0_export;
	output	[6:0]	hex1_export;
	output	[6:0]	hex2_export;
	output	[6:0]	hex3_export;
endmodule
