	StepperMotorControl u0 (
		.reset_reset_n                    (<connected-to-reset_reset_n>),                    //                  reset.reset_n
		.clk_clk                          (<connected-to-clk_clk>),                          //                    clk.clk
		.sram_SRAM_OE_N                   (<connected-to-sram_SRAM_OE_N>),                   //                   sram.SRAM_OE_N
		.sram_SRAM_CE_N                   (<connected-to-sram_SRAM_CE_N>),                   //                       .SRAM_CE_N
		.sram_SRAM_BE_N                   (<connected-to-sram_SRAM_BE_N>),                   //                       .SRAM_BE_N
		.sram_SRAM_D                      (<connected-to-sram_SRAM_D>),                      //                       .SRAM_D
		.sram_SRAM_A                      (<connected-to-sram_SRAM_A>),                      //                       .SRAM_A
		.sram_SRAM_WE_N                   (<connected-to-sram_SRAM_WE_N>),                   //                       .SRAM_WE_N
		.sw_export                        (<connected-to-sw_export>),                        //                     sw.export
		.lcd_RS                           (<connected-to-lcd_RS>),                           //                    lcd.RS
		.lcd_RW                           (<connected-to-lcd_RW>),                           //                       .RW
		.lcd_data                         (<connected-to-lcd_data>),                         //                       .data
		.lcd_E                            (<connected-to-lcd_E>),                            //                       .E
		.key_export                       (<connected-to-key_export>),                       //                    key.export
		.hex0_export                      (<connected-to-hex0_export>),                      //                   hex0.export
		.hex1_export                      (<connected-to-hex1_export>),                      //                   hex1.export
		.hex2_export                      (<connected-to-hex2_export>),                      //                   hex2.export
		.hex3_export                      (<connected-to-hex3_export>),                      //                   hex3.export
		.led9_export                      (<connected-to-led9_export>),                      //                   led9.export
		.registers_conduit_nios_redleds   (<connected-to-registers_conduit_nios_redleds>),   // registers_conduit_nios.redleds
		.registers_conduit_nios_greenleds (<connected-to-registers_conduit_nios_greenleds>), //                       .greenleds
		.mcu_conduit_motor_motor_pwm      (<connected-to-mcu_conduit_motor_motor_pwm>),      //      mcu_conduit_motor.motor_pwm
		.mcu_conduit_motor_motor_en       (<connected-to-mcu_conduit_motor_motor_en>)        //                       .motor_en
	);

