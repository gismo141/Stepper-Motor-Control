package require -exact qsys 14.0

# module properties
set_module_property NAME {StepperMotorControl_export}
set_module_property DISPLAY_NAME {StepperMotorControl_export_display}

# default module properties
set_module_property VERSION {1.0}
set_module_property GROUP {default group}
set_module_property DESCRIPTION {default description}
set_module_property AUTHOR {author}

set_module_property COMPOSITION_CALLBACK compose
set_module_property opaque_address_map false

proc compose { } {
    # Instances and instance parameters
    # (disabled instances are intentionally culled)
    add_instance clk_50MHz clock_source 14.0
    set_instance_parameter_value clk_50MHz {clockFrequency} {50000000.0}
    set_instance_parameter_value clk_50MHz {clockFrequencyKnown} {1}
    set_instance_parameter_value clk_50MHz {resetSynchronousEdges} {NONE}

    add_instance CPU altera_nios2_qsys 14.0
    set_instance_parameter_value CPU {setting_showUnpublishedSettings} {0}
    set_instance_parameter_value CPU {setting_showInternalSettings} {0}
    set_instance_parameter_value CPU {setting_preciseSlaveAccessErrorException} {0}
    set_instance_parameter_value CPU {setting_preciseIllegalMemAccessException} {0}
    set_instance_parameter_value CPU {setting_preciseDivisionErrorException} {0}
    set_instance_parameter_value CPU {setting_performanceCounter} {0}
    set_instance_parameter_value CPU {setting_illegalMemAccessDetection} {0}
    set_instance_parameter_value CPU {setting_illegalInstructionsTrap} {0}
    set_instance_parameter_value CPU {setting_fullWaveformSignals} {0}
    set_instance_parameter_value CPU {setting_extraExceptionInfo} {0}
    set_instance_parameter_value CPU {setting_exportPCB} {0}
    set_instance_parameter_value CPU {setting_debugSimGen} {0}
    set_instance_parameter_value CPU {setting_clearXBitsLDNonBypass} {1}
    set_instance_parameter_value CPU {setting_bit31BypassDCache} {1}
    set_instance_parameter_value CPU {setting_bigEndian} {0}
    set_instance_parameter_value CPU {setting_export_large_RAMs} {0}
    set_instance_parameter_value CPU {setting_asic_enabled} {0}
    set_instance_parameter_value CPU {setting_asic_synopsys_translate_on_off} {0}
    set_instance_parameter_value CPU {setting_oci_export_jtag_signals} {0}
    set_instance_parameter_value CPU {setting_bhtIndexPcOnly} {0}
    set_instance_parameter_value CPU {setting_avalonDebugPortPresent} {0}
    set_instance_parameter_value CPU {setting_alwaysEncrypt} {1}
    set_instance_parameter_value CPU {setting_allowFullAddressRange} {0}
    set_instance_parameter_value CPU {setting_activateTrace} {1}
    set_instance_parameter_value CPU {setting_activateTrace_user} {0}
    set_instance_parameter_value CPU {setting_activateTestEndChecker} {0}
    set_instance_parameter_value CPU {setting_ecc_sim_test_ports} {0}
    set_instance_parameter_value CPU {setting_activateMonitors} {1}
    set_instance_parameter_value CPU {setting_activateModelChecker} {0}
    set_instance_parameter_value CPU {setting_HDLSimCachesCleared} {1}
    set_instance_parameter_value CPU {setting_HBreakTest} {0}
    set_instance_parameter_value CPU {setting_breakslaveoveride} {0}
    set_instance_parameter_value CPU {muldiv_divider} {0}
    set_instance_parameter_value CPU {mpu_useLimit} {0}
    set_instance_parameter_value CPU {mpu_enabled} {0}
    set_instance_parameter_value CPU {mmu_enabled} {0}
    set_instance_parameter_value CPU {mmu_autoAssignTlbPtrSz} {1}
    set_instance_parameter_value CPU {manuallyAssignCpuID} {1}
    set_instance_parameter_value CPU {debug_triggerArming} {1}
    set_instance_parameter_value CPU {debug_embeddedPLL} {1}
    set_instance_parameter_value CPU {debug_debugReqSignals} {0}
    set_instance_parameter_value CPU {debug_assignJtagInstanceID} {0}
    set_instance_parameter_value CPU {dcache_omitDataMaster} {0}
    set_instance_parameter_value CPU {cpuReset} {0}
    set_instance_parameter_value CPU {resetrequest_enabled} {1}
    set_instance_parameter_value CPU {setting_removeRAMinit} {0}
    set_instance_parameter_value CPU {setting_shadowRegisterSets} {0}
    set_instance_parameter_value CPU {mpu_numOfInstRegion} {8}
    set_instance_parameter_value CPU {mpu_numOfDataRegion} {8}
    set_instance_parameter_value CPU {mmu_TLBMissExcOffset} {0}
    set_instance_parameter_value CPU {debug_jtagInstanceID} {0}
    set_instance_parameter_value CPU {resetOffset} {0}
    set_instance_parameter_value CPU {exceptionOffset} {32}
    set_instance_parameter_value CPU {cpuID} {0}
    set_instance_parameter_value CPU {cpuID_stored} {0}
    set_instance_parameter_value CPU {breakOffset} {32}
    set_instance_parameter_value CPU {userDefinedSettings} {}
    set_instance_parameter_value CPU {resetSlave} {SRAM_CVGX.uas}
    set_instance_parameter_value CPU {mmu_TLBMissExcSlave} {None}
    set_instance_parameter_value CPU {exceptionSlave} {SRAM_CVGX.uas}
    set_instance_parameter_value CPU {breakSlave} {CPU.jtag_debug_module}
    set_instance_parameter_value CPU {setting_perfCounterWidth} {32}
    set_instance_parameter_value CPU {setting_interruptControllerType} {Internal}
    set_instance_parameter_value CPU {setting_branchPredictionType} {Automatic}
    set_instance_parameter_value CPU {setting_bhtPtrSz} {8}
    set_instance_parameter_value CPU {muldiv_multiplierType} {EmbeddedMulFast}
    set_instance_parameter_value CPU {mpu_minInstRegionSize} {12}
    set_instance_parameter_value CPU {mpu_minDataRegionSize} {12}
    set_instance_parameter_value CPU {mmu_uitlbNumEntries} {4}
    set_instance_parameter_value CPU {mmu_udtlbNumEntries} {6}
    set_instance_parameter_value CPU {mmu_tlbPtrSz} {7}
    set_instance_parameter_value CPU {mmu_tlbNumWays} {16}
    set_instance_parameter_value CPU {mmu_processIDNumBits} {8}
    set_instance_parameter_value CPU {impl} {Tiny}
    set_instance_parameter_value CPU {icache_size} {4096}
    set_instance_parameter_value CPU {icache_tagramBlockType} {Automatic}
    set_instance_parameter_value CPU {icache_ramBlockType} {Automatic}
    set_instance_parameter_value CPU {icache_numTCIM} {0}
    set_instance_parameter_value CPU {icache_burstType} {None}
    set_instance_parameter_value CPU {dcache_bursts} {false}
    set_instance_parameter_value CPU {dcache_victim_buf_impl} {ram}
    set_instance_parameter_value CPU {debug_level} {Level1}
    set_instance_parameter_value CPU {debug_OCIOnchipTrace} {_128}
    set_instance_parameter_value CPU {dcache_size} {2048}
    set_instance_parameter_value CPU {dcache_tagramBlockType} {Automatic}
    set_instance_parameter_value CPU {dcache_ramBlockType} {Automatic}
    set_instance_parameter_value CPU {dcache_numTCDM} {0}
    set_instance_parameter_value CPU {dcache_lineSize} {32}
    set_instance_parameter_value CPU {setting_exportvectors} {0}
    set_instance_parameter_value CPU {setting_ecc_present} {0}
    set_instance_parameter_value CPU {setting_ic_ecc_present} {1}
    set_instance_parameter_value CPU {setting_rf_ecc_present} {1}
    set_instance_parameter_value CPU {setting_mmu_ecc_present} {1}
    set_instance_parameter_value CPU {setting_dc_ecc_present} {0}
    set_instance_parameter_value CPU {setting_itcm_ecc_present} {0}
    set_instance_parameter_value CPU {setting_dtcm_ecc_present} {0}
    set_instance_parameter_value CPU {regfile_ramBlockType} {Automatic}
    set_instance_parameter_value CPU {ocimem_ramBlockType} {Automatic}
    set_instance_parameter_value CPU {mmu_ramBlockType} {Automatic}
    set_instance_parameter_value CPU {bht_ramBlockType} {Automatic}

    add_instance sysid_qsys_0 altera_avalon_sysid_qsys 14.0
    set_instance_parameter_value sysid_qsys_0 {id} {67108864}

    add_instance jtag_uart altera_avalon_jtag_uart 14.0
    set_instance_parameter_value jtag_uart {allowMultipleConnections} {0}
    set_instance_parameter_value jtag_uart {hubInstanceID} {0}
    set_instance_parameter_value jtag_uart {readBufferDepth} {64}
    set_instance_parameter_value jtag_uart {readIRQThreshold} {8}
    set_instance_parameter_value jtag_uart {simInputCharacterStream} {}
    set_instance_parameter_value jtag_uart {simInteractiveOptions} {NO_INTERACTIVE_WINDOWS}
    set_instance_parameter_value jtag_uart {useRegistersForReadBuffer} {0}
    set_instance_parameter_value jtag_uart {useRegistersForWriteBuffer} {0}
    set_instance_parameter_value jtag_uart {useRelativePathForSimFile} {0}
    set_instance_parameter_value jtag_uart {writeBufferDepth} {64}
    set_instance_parameter_value jtag_uart {writeIRQThreshold} {8}

    add_instance RTX_Timer altera_avalon_timer 14.0
    set_instance_parameter_value RTX_Timer {alwaysRun} {0}
    set_instance_parameter_value RTX_Timer {counterSize} {32}
    set_instance_parameter_value RTX_Timer {fixedPeriod} {0}
    set_instance_parameter_value RTX_Timer {period} {10}
    set_instance_parameter_value RTX_Timer {periodUnits} {MSEC}
    set_instance_parameter_value RTX_Timer {resetOutput} {0}
    set_instance_parameter_value RTX_Timer {snapshot} {1}
    set_instance_parameter_value RTX_Timer {timeoutPulseOutput} {0}

    add_instance SRAM_CVGX altera_generic_tristate_controller 14.0
    set_instance_parameter_value SRAM_CVGX {TCM_ADDRESS_W} {19}
    set_instance_parameter_value SRAM_CVGX {TCM_DATA_W} {16}
    set_instance_parameter_value SRAM_CVGX {TCM_BYTEENABLE_W} {2}
    set_instance_parameter_value SRAM_CVGX {TCM_READ_WAIT} {10}
    set_instance_parameter_value SRAM_CVGX {TCM_WRITE_WAIT} {10}
    set_instance_parameter_value SRAM_CVGX {TCM_SETUP_WAIT} {10}
    set_instance_parameter_value SRAM_CVGX {TCM_DATA_HOLD} {10}
    set_instance_parameter_value SRAM_CVGX {TCM_MAX_PENDING_READ_TRANSACTIONS} {3}
    set_instance_parameter_value SRAM_CVGX {TCM_TURNAROUND_TIME} {2}
    set_instance_parameter_value SRAM_CVGX {TCM_TIMING_UNITS} {0}
    set_instance_parameter_value SRAM_CVGX {TCM_READLATENCY} {2}
    set_instance_parameter_value SRAM_CVGX {TCM_SYMBOLS_PER_WORD} {2}
    set_instance_parameter_value SRAM_CVGX {USE_READDATA} {1}
    set_instance_parameter_value SRAM_CVGX {USE_WRITEDATA} {1}
    set_instance_parameter_value SRAM_CVGX {USE_READ} {0}
    set_instance_parameter_value SRAM_CVGX {USE_WRITE} {1}
    set_instance_parameter_value SRAM_CVGX {USE_BEGINTRANSFER} {0}
    set_instance_parameter_value SRAM_CVGX {USE_BYTEENABLE} {1}
    set_instance_parameter_value SRAM_CVGX {USE_CHIPSELECT} {1}
    set_instance_parameter_value SRAM_CVGX {USE_LOCK} {0}
    set_instance_parameter_value SRAM_CVGX {USE_ADDRESS} {1}
    set_instance_parameter_value SRAM_CVGX {USE_WAITREQUEST} {0}
    set_instance_parameter_value SRAM_CVGX {USE_WRITEBYTEENABLE} {0}
    set_instance_parameter_value SRAM_CVGX {USE_OUTPUTENABLE} {1}
    set_instance_parameter_value SRAM_CVGX {USE_RESETREQUEST} {0}
    set_instance_parameter_value SRAM_CVGX {USE_IRQ} {0}
    set_instance_parameter_value SRAM_CVGX {USE_RESET_OUTPUT} {0}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_READ} {0}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_LOCK} {0}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_WRITE} {1}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_CHIPSELECT} {1}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_BYTEENABLE} {1}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_OUTPUTENABLE} {1}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_WRITEBYTEENABLE} {0}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_WAITREQUEST} {0}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_BEGINTRANSFER} {0}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_RESETREQUEST} {0}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_IRQ} {0}
    set_instance_parameter_value SRAM_CVGX {ACTIVE_LOW_RESET_OUTPUT} {0}
    set_instance_parameter_value SRAM_CVGX {CHIPSELECT_THROUGH_READLATENCY} {0}
    set_instance_parameter_value SRAM_CVGX {IS_MEMORY_DEVICE} {1}
    set_instance_parameter_value SRAM_CVGX {MODULE_ASSIGNMENT_KEYS} {embeddedsw.configuration.hwClassnameDriverSupportList embeddedsw.CMacro.SRAM_MEMORY_SIZE embeddedsw.CMacro.SRAM_MEMORY_UNITS embeddedsw.CMacro.SRAM_DATA_WIDTH embeddedsw.memoryInfo.MEM_INIT_DATA_WIDTH embeddedsw.memoryInfo.HAS_BYTE_LANE embeddedsw.memoryInfo.GENERATE_DAT_SYM embeddedsw.memoryInfo.DAT_SYM_INSTALL_DIR}
    set_instance_parameter_value SRAM_CVGX {MODULE_ASSIGNMENT_VALUES} {altera_avalon_lan91c111:altera_avalon_cfi_flash 524288 1 16 16 1 1 SIM_DIR}
    set_instance_parameter_value SRAM_CVGX {INTERFACE_ASSIGNMENT_KEYS} {embeddedsw.configuration.isMemoryDevice}
    set_instance_parameter_value SRAM_CVGX {INTERFACE_ASSIGNMENT_VALUES} {1}

    add_instance SRAM_Conduit altera_tristate_conduit_bridge 14.0

    add_instance pll_100MHz altera_pll 14.0
    set_instance_parameter_value pll_100MHz {debug_print_output} {0}
    set_instance_parameter_value pll_100MHz {debug_use_rbc_taf_method} {0}
    set_instance_parameter_value pll_100MHz {gui_device_speed_grade} {1}
    set_instance_parameter_value pll_100MHz {gui_pll_mode} {Integer-N PLL}
    set_instance_parameter_value pll_100MHz {gui_reference_clock_frequency} {50.0}
    set_instance_parameter_value pll_100MHz {gui_channel_spacing} {0.0}
    set_instance_parameter_value pll_100MHz {gui_operation_mode} {direct}
    set_instance_parameter_value pll_100MHz {gui_feedback_clock} {Global Clock}
    set_instance_parameter_value pll_100MHz {gui_fractional_cout} {32}
    set_instance_parameter_value pll_100MHz {gui_dsm_out_sel} {1st_order}
    set_instance_parameter_value pll_100MHz {gui_use_locked} {0}
    set_instance_parameter_value pll_100MHz {gui_en_adv_params} {0}
    set_instance_parameter_value pll_100MHz {gui_number_of_clocks} {1}
    set_instance_parameter_value pll_100MHz {gui_multiply_factor} {1}
    set_instance_parameter_value pll_100MHz {gui_frac_multiply_factor} {1.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_n} {1}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter0} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency0} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c0} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency0} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units0} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift0} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg0} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift0} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle0} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter1} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency1} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c1} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency1} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units1} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift1} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg1} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift1} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle1} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter2} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency2} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c2} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency2} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units2} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift2} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg2} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift2} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle2} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter3} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency3} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c3} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency3} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units3} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift3} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg3} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift3} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle3} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter4} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency4} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c4} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency4} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units4} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift4} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg4} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift4} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle4} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter5} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency5} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c5} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency5} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units5} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift5} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg5} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift5} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle5} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter6} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency6} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c6} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency6} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units6} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift6} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg6} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift6} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle6} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter7} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency7} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c7} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency7} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units7} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift7} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg7} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift7} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle7} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter8} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency8} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c8} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency8} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units8} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift8} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg8} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift8} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle8} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter9} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency9} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c9} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency9} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units9} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift9} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg9} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift9} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle9} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter10} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency10} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c10} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency10} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units10} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift10} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg10} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift10} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle10} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter11} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency11} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c11} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency11} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units11} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift11} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg11} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift11} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle11} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter12} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency12} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c12} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency12} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units12} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift12} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg12} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift12} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle12} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter13} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency13} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c13} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency13} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units13} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift13} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg13} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift13} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle13} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter14} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency14} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c14} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency14} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units14} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift14} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg14} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift14} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle14} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter15} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency15} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c15} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency15} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units15} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift15} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg15} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift15} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle15} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter16} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency16} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c16} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency16} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units16} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift16} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg16} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift16} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle16} {50}
    set_instance_parameter_value pll_100MHz {gui_cascade_counter17} {0}
    set_instance_parameter_value pll_100MHz {gui_output_clock_frequency17} {100.0}
    set_instance_parameter_value pll_100MHz {gui_divide_factor_c17} {1}
    set_instance_parameter_value pll_100MHz {gui_actual_output_clock_frequency17} {0 MHz}
    set_instance_parameter_value pll_100MHz {gui_ps_units17} {ps}
    set_instance_parameter_value pll_100MHz {gui_phase_shift17} {0}
    set_instance_parameter_value pll_100MHz {gui_phase_shift_deg17} {0.0}
    set_instance_parameter_value pll_100MHz {gui_actual_phase_shift17} {0}
    set_instance_parameter_value pll_100MHz {gui_duty_cycle17} {50}
    set_instance_parameter_value pll_100MHz {gui_pll_auto_reset} {Off}
    set_instance_parameter_value pll_100MHz {gui_pll_bandwidth_preset} {Auto}
    set_instance_parameter_value pll_100MHz {gui_en_reconf} {0}
    set_instance_parameter_value pll_100MHz {gui_en_dps_ports} {0}
    set_instance_parameter_value pll_100MHz {gui_en_phout_ports} {0}
    set_instance_parameter_value pll_100MHz {gui_phout_division} {1}
    set_instance_parameter_value pll_100MHz {gui_en_lvds_ports} {0}
    set_instance_parameter_value pll_100MHz {gui_mif_generate} {0}
    set_instance_parameter_value pll_100MHz {gui_enable_mif_dps} {0}
    set_instance_parameter_value pll_100MHz {gui_dps_cntr} {C0}
    set_instance_parameter_value pll_100MHz {gui_dps_num} {1}
    set_instance_parameter_value pll_100MHz {gui_dps_dir} {Positive}
    set_instance_parameter_value pll_100MHz {gui_refclk_switch} {0}
    set_instance_parameter_value pll_100MHz {gui_refclk1_frequency} {100.0}
    set_instance_parameter_value pll_100MHz {gui_switchover_mode} {Automatic Switchover}
    set_instance_parameter_value pll_100MHz {gui_switchover_delay} {0}
    set_instance_parameter_value pll_100MHz {gui_active_clk} {0}
    set_instance_parameter_value pll_100MHz {gui_clk_bad} {0}
    set_instance_parameter_value pll_100MHz {gui_enable_cascade_out} {0}
    set_instance_parameter_value pll_100MHz {gui_cascade_outclk_index} {0}
    set_instance_parameter_value pll_100MHz {gui_enable_cascade_in} {0}
    set_instance_parameter_value pll_100MHz {gui_pll_cascading_mode} {Create an adjpllin signal to connect with an upstream PLL}

    add_instance SRAM_PinSharer altera_tristate_conduit_pin_sharer 14.0
    set_instance_parameter_value SRAM_PinSharer {NUM_INTERFACES} {1}
    set_instance_parameter_value SRAM_PinSharer {MODULE_ORIGIN_LIST} {SRAM_CVGX.tcm SRAM_CVGX.tcm SRAM_CVGX.tcm SRAM_CVGX.tcm SRAM_CVGX.tcm SRAM_CVGX.tcm}
    set_instance_parameter_value SRAM_PinSharer {SIGNAL_ORIGIN_LIST} {address outputenable_n byteenable_n write_n data chipselect_n}
    set_instance_parameter_value SRAM_PinSharer {SHARED_SIGNAL_LIST} {SRAM_A SRAM_OE_N SRAM_BE_N SRAM_WE_N SRAM_D SRAM_CE_N}

    add_instance lcd altera_avalon_lcd_16207 14.0

    add_instance pio_sw altera_avalon_pio 14.0
    set_instance_parameter_value pio_sw {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value pio_sw {bitModifyingOutReg} {1}
    set_instance_parameter_value pio_sw {captureEdge} {1}
    set_instance_parameter_value pio_sw {direction} {Input}
    set_instance_parameter_value pio_sw {edgeType} {ANY}
    set_instance_parameter_value pio_sw {generateIRQ} {1}
    set_instance_parameter_value pio_sw {irqType} {EDGE}
    set_instance_parameter_value pio_sw {resetValue} {0.0}
    set_instance_parameter_value pio_sw {simDoTestBenchWiring} {0}
    set_instance_parameter_value pio_sw {simDrivenValue} {0.0}
    set_instance_parameter_value pio_sw {width} {9}

    add_instance pio_led9 altera_avalon_pio 14.0
    set_instance_parameter_value pio_led9 {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value pio_led9 {bitModifyingOutReg} {0}
    set_instance_parameter_value pio_led9 {captureEdge} {0}
    set_instance_parameter_value pio_led9 {direction} {Output}
    set_instance_parameter_value pio_led9 {edgeType} {RISING}
    set_instance_parameter_value pio_led9 {generateIRQ} {0}
    set_instance_parameter_value pio_led9 {irqType} {LEVEL}
    set_instance_parameter_value pio_led9 {resetValue} {0.0}
    set_instance_parameter_value pio_led9 {simDoTestBenchWiring} {0}
    set_instance_parameter_value pio_led9 {simDrivenValue} {0.0}
    set_instance_parameter_value pio_led9 {width} {1}

    add_instance pio_key altera_avalon_pio 14.0
    set_instance_parameter_value pio_key {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value pio_key {bitModifyingOutReg} {0}
    set_instance_parameter_value pio_key {captureEdge} {1}
    set_instance_parameter_value pio_key {direction} {Input}
    set_instance_parameter_value pio_key {edgeType} {FALLING}
    set_instance_parameter_value pio_key {generateIRQ} {1}
    set_instance_parameter_value pio_key {irqType} {EDGE}
    set_instance_parameter_value pio_key {resetValue} {0.0}
    set_instance_parameter_value pio_key {simDoTestBenchWiring} {0}
    set_instance_parameter_value pio_key {simDrivenValue} {0.0}
    set_instance_parameter_value pio_key {width} {3}

    add_instance pio_hex0 altera_avalon_pio 14.0
    set_instance_parameter_value pio_hex0 {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value pio_hex0 {bitModifyingOutReg} {1}
    set_instance_parameter_value pio_hex0 {captureEdge} {0}
    set_instance_parameter_value pio_hex0 {direction} {Output}
    set_instance_parameter_value pio_hex0 {edgeType} {RISING}
    set_instance_parameter_value pio_hex0 {generateIRQ} {0}
    set_instance_parameter_value pio_hex0 {irqType} {LEVEL}
    set_instance_parameter_value pio_hex0 {resetValue} {0.0}
    set_instance_parameter_value pio_hex0 {simDoTestBenchWiring} {0}
    set_instance_parameter_value pio_hex0 {simDrivenValue} {0.0}
    set_instance_parameter_value pio_hex0 {width} {7}

    add_instance pio_hex1 altera_avalon_pio 14.0
    set_instance_parameter_value pio_hex1 {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value pio_hex1 {bitModifyingOutReg} {1}
    set_instance_parameter_value pio_hex1 {captureEdge} {0}
    set_instance_parameter_value pio_hex1 {direction} {Output}
    set_instance_parameter_value pio_hex1 {edgeType} {RISING}
    set_instance_parameter_value pio_hex1 {generateIRQ} {0}
    set_instance_parameter_value pio_hex1 {irqType} {LEVEL}
    set_instance_parameter_value pio_hex1 {resetValue} {0.0}
    set_instance_parameter_value pio_hex1 {simDoTestBenchWiring} {0}
    set_instance_parameter_value pio_hex1 {simDrivenValue} {0.0}
    set_instance_parameter_value pio_hex1 {width} {7}

    add_instance pio_hex2 altera_avalon_pio 14.0
    set_instance_parameter_value pio_hex2 {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value pio_hex2 {bitModifyingOutReg} {1}
    set_instance_parameter_value pio_hex2 {captureEdge} {0}
    set_instance_parameter_value pio_hex2 {direction} {Output}
    set_instance_parameter_value pio_hex2 {edgeType} {RISING}
    set_instance_parameter_value pio_hex2 {generateIRQ} {0}
    set_instance_parameter_value pio_hex2 {irqType} {LEVEL}
    set_instance_parameter_value pio_hex2 {resetValue} {0.0}
    set_instance_parameter_value pio_hex2 {simDoTestBenchWiring} {0}
    set_instance_parameter_value pio_hex2 {simDrivenValue} {0.0}
    set_instance_parameter_value pio_hex2 {width} {7}

    add_instance pio_hex3 altera_avalon_pio 14.0
    set_instance_parameter_value pio_hex3 {bitClearingEdgeCapReg} {0}
    set_instance_parameter_value pio_hex3 {bitModifyingOutReg} {1}
    set_instance_parameter_value pio_hex3 {captureEdge} {0}
    set_instance_parameter_value pio_hex3 {direction} {Output}
    set_instance_parameter_value pio_hex3 {edgeType} {RISING}
    set_instance_parameter_value pio_hex3 {generateIRQ} {0}
    set_instance_parameter_value pio_hex3 {irqType} {LEVEL}
    set_instance_parameter_value pio_hex3 {resetValue} {0.0}
    set_instance_parameter_value pio_hex3 {simDoTestBenchWiring} {0}
    set_instance_parameter_value pio_hex3 {simDrivenValue} {0.0}
    set_instance_parameter_value pio_hex3 {width} {7}

    # connections and connection parameters
    add_connection CPU.instruction_master CPU.jtag_debug_module avalon
    set_connection_parameter_value CPU.instruction_master/CPU.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value CPU.instruction_master/CPU.jtag_debug_module baseAddress {0x00100800}
    set_connection_parameter_value CPU.instruction_master/CPU.jtag_debug_module defaultConnection {0}

    add_connection CPU.data_master CPU.jtag_debug_module avalon
    set_connection_parameter_value CPU.data_master/CPU.jtag_debug_module arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/CPU.jtag_debug_module baseAddress {0x00100800}
    set_connection_parameter_value CPU.data_master/CPU.jtag_debug_module defaultConnection {0}

    add_connection clk_50MHz.clk_reset pll_100MHz.reset reset

    add_connection clk_50MHz.clk_reset CPU.reset_n reset

    add_connection clk_50MHz.clk_reset sysid_qsys_0.reset reset

    add_connection clk_50MHz.clk_reset jtag_uart.reset reset

    add_connection clk_50MHz.clk_reset RTX_Timer.reset reset

    add_connection clk_50MHz.clk_reset SRAM_CVGX.reset reset

    add_connection clk_50MHz.clk_reset SRAM_Conduit.reset reset

    add_connection CPU.data_master jtag_uart.avalon_jtag_slave avalon
    set_connection_parameter_value CPU.data_master/jtag_uart.avalon_jtag_slave arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/jtag_uart.avalon_jtag_slave baseAddress {0x001010f8}
    set_connection_parameter_value CPU.data_master/jtag_uart.avalon_jtag_slave defaultConnection {0}

    add_connection CPU.d_irq jtag_uart.irq interrupt
    set_connection_parameter_value CPU.d_irq/jtag_uart.irq irqNumber {2}

    add_connection CPU.data_master RTX_Timer.s1 avalon
    set_connection_parameter_value CPU.data_master/RTX_Timer.s1 arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/RTX_Timer.s1 baseAddress {0x001010a0}
    set_connection_parameter_value CPU.data_master/RTX_Timer.s1 defaultConnection {0}

    add_connection CPU.d_irq RTX_Timer.irq interrupt
    set_connection_parameter_value CPU.d_irq/RTX_Timer.irq irqNumber {31}

    add_connection clk_50MHz.clk_reset SRAM_PinSharer.reset reset

    add_connection SRAM_CVGX.tcm SRAM_PinSharer.tcs0 tristate_conduit

    add_connection SRAM_PinSharer.tcm SRAM_Conduit.tcs tristate_conduit

    add_connection CPU.data_master SRAM_CVGX.uas avalon
    set_connection_parameter_value CPU.data_master/SRAM_CVGX.uas arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/SRAM_CVGX.uas baseAddress {0x00080000}
    set_connection_parameter_value CPU.data_master/SRAM_CVGX.uas defaultConnection {0}

    add_connection CPU.instruction_master SRAM_CVGX.uas avalon
    set_connection_parameter_value CPU.instruction_master/SRAM_CVGX.uas arbitrationPriority {1}
    set_connection_parameter_value CPU.instruction_master/SRAM_CVGX.uas baseAddress {0x00080000}
    set_connection_parameter_value CPU.instruction_master/SRAM_CVGX.uas defaultConnection {0}

    add_connection pll_100MHz.outclk0 CPU.clk clock

    add_connection pll_100MHz.outclk0 sysid_qsys_0.clk clock

    add_connection pll_100MHz.outclk0 jtag_uart.clk clock

    add_connection pll_100MHz.outclk0 RTX_Timer.clk clock

    add_connection pll_100MHz.outclk0 SRAM_CVGX.clk clock

    add_connection pll_100MHz.outclk0 SRAM_PinSharer.clk clock

    add_connection pll_100MHz.outclk0 SRAM_Conduit.clk clock

    add_connection clk_50MHz.clk pll_100MHz.refclk clock

    add_connection CPU.data_master sysid_qsys_0.control_slave avalon
    set_connection_parameter_value CPU.data_master/sysid_qsys_0.control_slave arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/sysid_qsys_0.control_slave baseAddress {0x001010f0}
    set_connection_parameter_value CPU.data_master/sysid_qsys_0.control_slave defaultConnection {0}

    add_connection CPU.jtag_debug_module_reset pll_100MHz.reset reset

    add_connection CPU.jtag_debug_module_reset CPU.reset_n reset

    add_connection CPU.jtag_debug_module_reset sysid_qsys_0.reset reset

    add_connection CPU.jtag_debug_module_reset jtag_uart.reset reset

    add_connection CPU.jtag_debug_module_reset RTX_Timer.reset reset

    add_connection CPU.jtag_debug_module_reset SRAM_CVGX.reset reset

    add_connection CPU.jtag_debug_module_reset SRAM_PinSharer.reset reset

    add_connection CPU.jtag_debug_module_reset SRAM_Conduit.reset reset

    add_connection CPU.jtag_debug_module_reset lcd.reset reset

    add_connection clk_50MHz.clk_reset lcd.reset reset

    add_connection pll_100MHz.outclk0 lcd.clk clock

    add_connection CPU.data_master lcd.control_slave avalon
    set_connection_parameter_value CPU.data_master/lcd.control_slave arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/lcd.control_slave baseAddress {0x001010e0}
    set_connection_parameter_value CPU.data_master/lcd.control_slave defaultConnection {0}

    add_connection CPU.data_master pio_sw.s1 avalon
    set_connection_parameter_value CPU.data_master/pio_sw.s1 arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/pio_sw.s1 baseAddress {0x00101080}
    set_connection_parameter_value CPU.data_master/pio_sw.s1 defaultConnection {0}

    add_connection CPU.jtag_debug_module_reset pio_sw.reset reset

    add_connection clk_50MHz.clk_reset pio_sw.reset reset

    add_connection pll_100MHz.outclk0 pio_sw.clk clock

    add_connection CPU.d_irq pio_sw.irq interrupt
    set_connection_parameter_value CPU.d_irq/pio_sw.irq irqNumber {1}

    add_connection CPU.data_master pio_led9.s1 avalon
    set_connection_parameter_value CPU.data_master/pio_led9.s1 arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/pio_led9.s1 baseAddress {0x001010d0}
    set_connection_parameter_value CPU.data_master/pio_led9.s1 defaultConnection {0}

    add_connection CPU.jtag_debug_module_reset pio_led9.reset reset

    add_connection clk_50MHz.clk_reset pio_led9.reset reset

    add_connection pll_100MHz.outclk0 pio_led9.clk clock

    add_connection CPU.data_master pio_key.s1 avalon
    set_connection_parameter_value CPU.data_master/pio_key.s1 arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/pio_key.s1 baseAddress {0x001010c0}
    set_connection_parameter_value CPU.data_master/pio_key.s1 defaultConnection {0}

    add_connection CPU.jtag_debug_module_reset pio_key.reset reset

    add_connection clk_50MHz.clk_reset pio_key.reset reset

    add_connection pll_100MHz.outclk0 pio_key.clk clock

    add_connection CPU.d_irq pio_key.irq interrupt
    set_connection_parameter_value CPU.d_irq/pio_key.irq irqNumber {0}

    add_connection CPU.jtag_debug_module_reset pio_hex0.reset reset

    add_connection CPU.jtag_debug_module_reset pio_hex1.reset reset

    add_connection CPU.jtag_debug_module_reset pio_hex2.reset reset

    add_connection CPU.jtag_debug_module_reset pio_hex3.reset reset

    add_connection clk_50MHz.clk_reset pio_hex3.reset reset

    add_connection clk_50MHz.clk_reset pio_hex2.reset reset

    add_connection clk_50MHz.clk_reset pio_hex1.reset reset

    add_connection clk_50MHz.clk_reset pio_hex0.reset reset

    add_connection CPU.data_master pio_hex0.s1 avalon
    set_connection_parameter_value CPU.data_master/pio_hex0.s1 arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/pio_hex0.s1 baseAddress {0x00101060}
    set_connection_parameter_value CPU.data_master/pio_hex0.s1 defaultConnection {0}

    add_connection CPU.data_master pio_hex1.s1 avalon
    set_connection_parameter_value CPU.data_master/pio_hex1.s1 arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/pio_hex1.s1 baseAddress {0x00101040}
    set_connection_parameter_value CPU.data_master/pio_hex1.s1 defaultConnection {0}

    add_connection CPU.data_master pio_hex2.s1 avalon
    set_connection_parameter_value CPU.data_master/pio_hex2.s1 arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/pio_hex2.s1 baseAddress {0x00101020}
    set_connection_parameter_value CPU.data_master/pio_hex2.s1 defaultConnection {0}

    add_connection CPU.data_master pio_hex3.s1 avalon
    set_connection_parameter_value CPU.data_master/pio_hex3.s1 arbitrationPriority {1}
    set_connection_parameter_value CPU.data_master/pio_hex3.s1 baseAddress {0x00101000}
    set_connection_parameter_value CPU.data_master/pio_hex3.s1 defaultConnection {0}

    add_connection pll_100MHz.outclk0 pio_hex2.clk clock

    add_connection pll_100MHz.outclk0 pio_hex1.clk clock

    add_connection pll_100MHz.outclk0 pio_hex0.clk clock

    add_connection pll_100MHz.outclk0 pio_hex3.clk clock

    # exported interfaces
    add_interface reset reset sink
    set_interface_property reset EXPORT_OF clk_50MHz.clk_in_reset
    add_interface clk clock sink
    set_interface_property clk EXPORT_OF clk_50MHz.clk_in
    add_interface sram_conduit_out conduit end
    set_interface_property sram_conduit_out EXPORT_OF SRAM_Conduit.out
    add_interface pio_sw_external conduit end
    set_interface_property pio_sw_external EXPORT_OF pio_sw.external_connection
    add_interface lcd_external conduit end
    set_interface_property lcd_external EXPORT_OF lcd.external
    add_interface pio_led9_external conduit end
    set_interface_property pio_led9_external EXPORT_OF pio_led9.external_connection
    add_interface pio_key_external conduit end
    set_interface_property pio_key_external EXPORT_OF pio_key.external_connection
    add_interface pio_hex0_externa conduit end
    set_interface_property pio_hex0_externa EXPORT_OF pio_hex0.external_connection
    add_interface pio_hex1_external conduit end
    set_interface_property pio_hex1_external EXPORT_OF pio_hex1.external_connection
    add_interface pio_hex2_external conduit end
    set_interface_property pio_hex2_external EXPORT_OF pio_hex2.external_connection
    add_interface pio_hex3_externa conduit end
    set_interface_property pio_hex3_externa EXPORT_OF pio_hex3.external_connection

    # interconnect requirements
    set_interconnect_requirement {$system} {qsys_mm.clockCrossingAdapter} {HANDSHAKE}
    set_interconnect_requirement {$system} {qsys_mm.maxAdditionalLatency} {1}
    set_interconnect_requirement {$system} {qsys_mm.insertDefaultSlave} {FALSE}
}
