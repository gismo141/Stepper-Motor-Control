	ContrlUnit u0 (
		.reset_reset_n              (<connected-to-reset_reset_n>),              //             reset.reset_n
		.clk_clk                    (<connected-to-clk_clk>),                    //               clk.clk
		.sram_conduit_out_SRAM_OE_N (<connected-to-sram_conduit_out_SRAM_OE_N>), //  sram_conduit_out.SRAM_OE_N
		.sram_conduit_out_SRAM_CE_N (<connected-to-sram_conduit_out_SRAM_CE_N>), //                  .SRAM_CE_N
		.sram_conduit_out_SRAM_BE_N (<connected-to-sram_conduit_out_SRAM_BE_N>), //                  .SRAM_BE_N
		.sram_conduit_out_SRAM_D    (<connected-to-sram_conduit_out_SRAM_D>),    //                  .SRAM_D
		.sram_conduit_out_SRAM_A    (<connected-to-sram_conduit_out_SRAM_A>),    //                  .SRAM_A
		.sram_conduit_out_SRAM_WE_N (<connected-to-sram_conduit_out_SRAM_WE_N>), //                  .SRAM_WE_N
		.pio_sw_external_export     (<connected-to-pio_sw_external_export>),     //   pio_sw_external.export
		.lcd_external_RS            (<connected-to-lcd_external_RS>),            //      lcd_external.RS
		.lcd_external_RW            (<connected-to-lcd_external_RW>),            //                  .RW
		.lcd_external_data          (<connected-to-lcd_external_data>),          //                  .data
		.lcd_external_E             (<connected-to-lcd_external_E>),             //                  .E
		.pio_led9_external_export   (<connected-to-pio_led9_external_export>),   // pio_led9_external.export
		.pio_key_external_export    (<connected-to-pio_key_external_export>),    //  pio_key_external.export
		.pio_hex0_externa_export    (<connected-to-pio_hex0_externa_export>),    //  pio_hex0_externa.export
		.pio_hex1_external_export   (<connected-to-pio_hex1_external_export>),   // pio_hex1_external.export
		.pio_hex2_external_export   (<connected-to-pio_hex2_external_export>),   // pio_hex2_external.export
		.pio_hex3_externa_export    (<connected-to-pio_hex3_externa_export>)     //  pio_hex3_externa.export
	);

