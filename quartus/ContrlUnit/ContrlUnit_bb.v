
module ContrlUnit (
	reset_reset_n,
	clk_clk,
	sram_conduit_out_SRAM_OE_N,
	sram_conduit_out_SRAM_CE_N,
	sram_conduit_out_SRAM_BE_N,
	sram_conduit_out_SRAM_D,
	sram_conduit_out_SRAM_A,
	sram_conduit_out_SRAM_WE_N,
	pio_sw_external_export,
	lcd_external_RS,
	lcd_external_RW,
	lcd_external_data,
	lcd_external_E,
	pio_led9_external_export,
	pio_key_external_export,
	pio_hex0_externa_export,
	pio_hex1_external_export,
	pio_hex2_external_export,
	pio_hex3_externa_export);	

	input		reset_reset_n;
	input		clk_clk;
	output	[0:0]	sram_conduit_out_SRAM_OE_N;
	output	[0:0]	sram_conduit_out_SRAM_CE_N;
	output	[1:0]	sram_conduit_out_SRAM_BE_N;
	inout	[15:0]	sram_conduit_out_SRAM_D;
	output	[18:0]	sram_conduit_out_SRAM_A;
	output	[0:0]	sram_conduit_out_SRAM_WE_N;
	input	[8:0]	pio_sw_external_export;
	output		lcd_external_RS;
	output		lcd_external_RW;
	inout	[7:0]	lcd_external_data;
	output		lcd_external_E;
	output		pio_led9_external_export;
	input	[2:0]	pio_key_external_export;
	output	[6:0]	pio_hex0_externa_export;
	output	[6:0]	pio_hex1_external_export;
	output	[6:0]	pio_hex2_external_export;
	output	[6:0]	pio_hex3_externa_export;
endmodule
