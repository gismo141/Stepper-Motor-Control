	smc_soc u0 (
		.reset_reset_n              (<connected-to-reset_reset_n>),              //            reset.reset_n
		.clk_clk                    (<connected-to-clk_clk>),                    //              clk.clk
		.sram_conduit_out_SRAM_OE_N (<connected-to-sram_conduit_out_SRAM_OE_N>), // sram_conduit_out.SRAM_OE_N
		.sram_conduit_out_SRAM_CE_N (<connected-to-sram_conduit_out_SRAM_CE_N>), //                 .SRAM_CE_N
		.sram_conduit_out_SRAM_BE_N (<connected-to-sram_conduit_out_SRAM_BE_N>), //                 .SRAM_BE_N
		.sram_conduit_out_SRAM_D    (<connected-to-sram_conduit_out_SRAM_D>),    //                 .SRAM_D
		.sram_conduit_out_SRAM_A    (<connected-to-sram_conduit_out_SRAM_A>),    //                 .SRAM_A
		.sram_conduit_out_SRAM_WE_N (<connected-to-sram_conduit_out_SRAM_WE_N>)  //                 .SRAM_WE_N
	);

