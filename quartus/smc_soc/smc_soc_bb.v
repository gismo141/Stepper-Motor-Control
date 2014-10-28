
module smc_soc (
	reset_reset_n,
	clk_clk,
	sram_conduit_out_SRAM_OE_N,
	sram_conduit_out_SRAM_CE_N,
	sram_conduit_out_SRAM_BE_N,
	sram_conduit_out_SRAM_D,
	sram_conduit_out_SRAM_A,
	sram_conduit_out_SRAM_WE_N);	

	input		reset_reset_n;
	input		clk_clk;
	output	[0:0]	sram_conduit_out_SRAM_OE_N;
	output	[0:0]	sram_conduit_out_SRAM_CE_N;
	output	[1:0]	sram_conduit_out_SRAM_BE_N;
	inout	[15:0]	sram_conduit_out_SRAM_D;
	output	[18:0]	sram_conduit_out_SRAM_A;
	output	[0:0]	sram_conduit_out_SRAM_WE_N;
endmodule
