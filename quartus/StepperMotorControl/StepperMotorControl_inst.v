	StepperMotorControl u0 (
		.reset_reset_n  (<connected-to-reset_reset_n>),  // reset.reset_n
		.clk_clk        (<connected-to-clk_clk>),        //   clk.clk
		.sram_SRAM_OE_N (<connected-to-sram_SRAM_OE_N>), //  sram.SRAM_OE_N
		.sram_SRAM_CE_N (<connected-to-sram_SRAM_CE_N>), //      .SRAM_CE_N
		.sram_SRAM_BE_N (<connected-to-sram_SRAM_BE_N>), //      .SRAM_BE_N
		.sram_SRAM_D    (<connected-to-sram_SRAM_D>),    //      .SRAM_D
		.sram_SRAM_A    (<connected-to-sram_SRAM_A>),    //      .SRAM_A
		.sram_SRAM_WE_N (<connected-to-sram_SRAM_WE_N>), //      .SRAM_WE_N
		.sw_export      (<connected-to-sw_export>),      //    sw.export
		.lcd_RS         (<connected-to-lcd_RS>),         //   lcd.RS
		.lcd_RW         (<connected-to-lcd_RW>),         //      .RW
		.lcd_data       (<connected-to-lcd_data>),       //      .data
		.lcd_E          (<connected-to-lcd_E>),          //      .E
		.key_export     (<connected-to-key_export>),     //   key.export
		.hex0_export    (<connected-to-hex0_export>),    //  hex0.export
		.hex1_export    (<connected-to-hex1_export>),    //  hex1.export
		.hex2_export    (<connected-to-hex2_export>),    //  hex2.export
		.hex3_export    (<connected-to-hex3_export>),    //  hex3.export
		.led9_export    (<connected-to-led9_export>),    //  led9.export
		.leds_redleds   (<connected-to-leds_redleds>),   //  leds.redleds
		.leds_greenleds (<connected-to-leds_greenleds>), //      .greenleds
		.leds_speed     (<connected-to-leds_speed>),     //      .speed
		.leds_steps     (<connected-to-leds_steps>),     //      .steps
		.leds_ir        (<connected-to-leds_ir>),        //      .ir
		.leds_run       (<connected-to-leds_run>),       //      .run
		.leds_direction (<connected-to-leds_direction>), //      .direction
		.leds_mode      (<connected-to-leds_mode>)       //      .mode
	);

