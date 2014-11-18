# Legal Notice: (C)2014 Altera Corporation. All rights reserved.  Your
# use of Altera Corporation's design tools, logic functions and other
# software and tools, and its AMPP partner logic functions, and any
# output files any of the foregoing (including device programming or
# simulation files), and any associated documentation or information are
# expressly subject to the terms and conditions of the Altera Program
# License Subscription Agreement or other applicable license agreement,
# including, without limitation, that your use is for the sole purpose
# of programming logic devices manufactured by Altera and sold by Altera
# or its authorized distributors.  Please refer to the applicable
# agreement for further details.

#**************************************************************
# Timequest JTAG clock definition
#   Uncommenting the following lines will define the JTAG
#   clock in TimeQuest Timing Analyzer
#**************************************************************

#create_clock -period 10MHz {altera_reserved_tck}
#set_clock_groups -asynchronous -group {altera_reserved_tck}

#**************************************************************
# Set TCL Path Variables 
#**************************************************************

set 	StepperMotorControl_CPU 	StepperMotorControl_CPU:*
set 	StepperMotorControl_CPU_oci 	StepperMotorControl_CPU_nios2_oci:the_StepperMotorControl_CPU_nios2_oci
set 	StepperMotorControl_CPU_oci_break 	StepperMotorControl_CPU_nios2_oci_break:the_StepperMotorControl_CPU_nios2_oci_break
set 	StepperMotorControl_CPU_ocimem 	StepperMotorControl_CPU_nios2_ocimem:the_StepperMotorControl_CPU_nios2_ocimem
set 	StepperMotorControl_CPU_oci_debug 	StepperMotorControl_CPU_nios2_oci_debug:the_StepperMotorControl_CPU_nios2_oci_debug
set 	StepperMotorControl_CPU_wrapper 	StepperMotorControl_CPU_jtag_debug_module_wrapper:the_StepperMotorControl_CPU_jtag_debug_module_wrapper
set 	StepperMotorControl_CPU_jtag_tck 	StepperMotorControl_CPU_jtag_debug_module_tck:the_StepperMotorControl_CPU_jtag_debug_module_tck
set 	StepperMotorControl_CPU_jtag_sysclk 	StepperMotorControl_CPU_jtag_debug_module_sysclk:the_StepperMotorControl_CPU_jtag_debug_module_sysclk
set 	StepperMotorControl_CPU_oci_path 	 [format "%s|%s" $StepperMotorControl_CPU $StepperMotorControl_CPU_oci]
set 	StepperMotorControl_CPU_oci_break_path 	 [format "%s|%s" $StepperMotorControl_CPU_oci_path $StepperMotorControl_CPU_oci_break]
set 	StepperMotorControl_CPU_ocimem_path 	 [format "%s|%s" $StepperMotorControl_CPU_oci_path $StepperMotorControl_CPU_ocimem]
set 	StepperMotorControl_CPU_oci_debug_path 	 [format "%s|%s" $StepperMotorControl_CPU_oci_path $StepperMotorControl_CPU_oci_debug]
set 	StepperMotorControl_CPU_jtag_tck_path 	 [format "%s|%s|%s" $StepperMotorControl_CPU_oci_path $StepperMotorControl_CPU_wrapper $StepperMotorControl_CPU_jtag_tck]
set 	StepperMotorControl_CPU_jtag_sysclk_path 	 [format "%s|%s|%s" $StepperMotorControl_CPU_oci_path $StepperMotorControl_CPU_wrapper $StepperMotorControl_CPU_jtag_sysclk]
set 	StepperMotorControl_CPU_jtag_sr 	 [format "%s|*sr" $StepperMotorControl_CPU_jtag_tck_path]

#**************************************************************
# Set False Paths
#**************************************************************

set_false_path -from [get_keepers *$StepperMotorControl_CPU_oci_break_path|break_readreg*] -to [get_keepers *$StepperMotorControl_CPU_jtag_sr*]
set_false_path -from [get_keepers *$StepperMotorControl_CPU_oci_debug_path|*resetlatch]     -to [get_keepers *$StepperMotorControl_CPU_jtag_sr[33]]
set_false_path -from [get_keepers *$StepperMotorControl_CPU_oci_debug_path|monitor_ready]  -to [get_keepers *$StepperMotorControl_CPU_jtag_sr[0]]
set_false_path -from [get_keepers *$StepperMotorControl_CPU_oci_debug_path|monitor_error]  -to [get_keepers *$StepperMotorControl_CPU_jtag_sr[34]]
set_false_path -from [get_keepers *$StepperMotorControl_CPU_ocimem_path|*MonDReg*] -to [get_keepers *$StepperMotorControl_CPU_jtag_sr*]
set_false_path -from *$StepperMotorControl_CPU_jtag_sr*    -to *$StepperMotorControl_CPU_jtag_sysclk_path|*jdo*
set_false_path -from sld_hub:*|irf_reg* -to *$StepperMotorControl_CPU_jtag_sysclk_path|ir*
set_false_path -from sld_hub:*|sld_shadow_jsm:shadow_jsm|state[1] -to *$StepperMotorControl_CPU_oci_debug_path|monitor_go
set_false_path -from [get_keepers *$StepperMotorControl_CPU_oci_break_path|dbrk_hit?_latch] -to [get_keepers *$StepperMotorControl_CPU_jtag_sr*]
set_false_path -from [get_keepers *$StepperMotorControl_CPU_oci_break_path|trigbrktype] -to [get_keepers *$StepperMotorControl_CPU_jtag_sr*]
set_false_path -from [get_keepers *$StepperMotorControl_CPU_oci_break_path|trigger_state] -to [get_keepers *$StepperMotorControl_CPU_jtag_sr*]
