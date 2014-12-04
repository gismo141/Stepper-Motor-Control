
# (C) 2001-2014 Altera Corporation. All rights reserved.
# Your use of Altera Corporation's design tools, logic functions and 
# other software and tools, and its AMPP partner logic functions, and 
# any output files any of the foregoing (including device programming 
# or simulation files), and any associated documentation or information 
# are expressly subject to the terms and conditions of the Altera 
# Program License Subscription Agreement, Altera MegaCore Function 
# License Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by Altera 
# or its authorized distributors. Please refer to the applicable 
# agreement for further details.

# ACDS 14.0 200 win32 2014.12.04.19:35:42

# ----------------------------------------
# vcsmx - auto-generated simulation script

# ----------------------------------------
# initialize variables
TOP_LEVEL_NAME="StepperMotorControl"
QSYS_SIMDIR="./../../"
QUARTUS_INSTALL_DIR="C:/altera/14.0/quartus/"
SKIP_FILE_COPY=0
SKIP_DEV_COM=0
SKIP_COM=0
SKIP_ELAB=0
SKIP_SIM=0
USER_DEFINED_ELAB_OPTIONS=""
USER_DEFINED_SIM_OPTIONS="+vcs+finish+100"

# ----------------------------------------
# overwrite variables - DO NOT MODIFY!
# This block evaluates each command line argument, typically used for 
# overwriting variables. An example usage:
#   sh <simulator>_setup.sh SKIP_ELAB=1 SKIP_SIM=1
for expression in "$@"; do
  eval $expression
  if [ $? -ne 0 ]; then
    echo "Error: This command line argument, \"$expression\", is/has an invalid expression." >&2
    exit $?
  fi
done

# ----------------------------------------
# initialize simulation properties - DO NOT MODIFY!
ELAB_OPTIONS=""
SIM_OPTIONS=""
if [[ `vcs -platform` != *"amd64"* ]]; then
  :
else
  :
fi

# ----------------------------------------
# create compilation libraries
mkdir -p ./libraries/work/
mkdir -p ./libraries/rsp_mux_001/
mkdir -p ./libraries/rsp_mux/
mkdir -p ./libraries/rsp_demux_002/
mkdir -p ./libraries/rsp_demux/
mkdir -p ./libraries/cmd_mux_002/
mkdir -p ./libraries/cmd_mux/
mkdir -p ./libraries/cmd_demux_001/
mkdir -p ./libraries/cmd_demux/
mkdir -p ./libraries/router_004/
mkdir -p ./libraries/router_003/
mkdir -p ./libraries/router_002/
mkdir -p ./libraries/router_001/
mkdir -p ./libraries/router/
mkdir -p ./libraries/SRAM_CVGX_uas_agent_rdata_fifo/
mkdir -p ./libraries/SRAM_CVGX_uas_agent_rsp_fifo/
mkdir -p ./libraries/CPU_jtag_debug_module_agent_rsp_fifo/
mkdir -p ./libraries/arbiter/
mkdir -p ./libraries/pin_sharer/
mkdir -p ./libraries/tda/
mkdir -p ./libraries/tdt/
mkdir -p ./libraries/irq_mapper/
mkdir -p ./libraries/mm_interconnect_0/
mkdir -p ./libraries/motor_control_unit_0/
mkdir -p ./libraries/registers/
mkdir -p ./libraries/pio_led9/
mkdir -p ./libraries/pio_hex0/
mkdir -p ./libraries/pio_key/
mkdir -p ./libraries/pio_sw/
mkdir -p ./libraries/lcd/
mkdir -p ./libraries/SRAM_PinSharer/
mkdir -p ./libraries/pll_100MHz/
mkdir -p ./libraries/SRAM_Conduit/
mkdir -p ./libraries/SRAM_CVGX/
mkdir -p ./libraries/RTX_Timer/
mkdir -p ./libraries/jtag_uart/
mkdir -p ./libraries/sysid_qsys_0/
mkdir -p ./libraries/CPU/
mkdir -p ./libraries/altera/
mkdir -p ./libraries/lpm/
mkdir -p ./libraries/sgate/
mkdir -p ./libraries/altera_mf/
mkdir -p ./libraries/altera_lnsim/
mkdir -p ./libraries/cyclonev/

# ----------------------------------------
# copy RAM/ROM files to simulation directory
if [ $SKIP_FILE_COPY -eq 0 ]; then
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ic_tag_ram.dat ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ic_tag_ram.hex ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ic_tag_ram.mif ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ociram_default_contents.dat ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ociram_default_contents.hex ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ociram_default_contents.mif ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_a.dat ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_a.hex ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_a.mif ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_b.dat ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_b.hex ./
  cp -f $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_b.mif ./
fi

# ----------------------------------------
# compile device library files
if [ $SKIP_DEV_COM -eq 0 ]; then
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"        -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"    -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"       -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"    -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd" -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"            -work altera      
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                      -work lpm         
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                     -work lpm         
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                   -work sgate       
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                        -work sgate       
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"         -work altera_mf   
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                    -work altera_mf   
  vlogan +v2k -sverilog "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim.sv"                  -work altera_lnsim
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"      -work altera_lnsim
  vlogan +v2k           "$QUARTUS_INSTALL_DIR/eda/sim_lib/synopsys/cyclonev_atoms_ncrypt.v" -work cyclonev    
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"               -work cyclonev    
  vhdlan                "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"          -work cyclonev    
fi

# ----------------------------------------
# compile design files in correct order
if [ $SKIP_COM -eq 0 ]; then
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_rsp_mux_001.vho"                            -work rsp_mux_001                         
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_rsp_mux.vho"                                -work rsp_mux                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_rsp_demux_002.vho"                          -work rsp_demux_002                       
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_rsp_demux.vho"                              -work rsp_demux                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_cmd_mux_002.vho"                            -work cmd_mux_002                         
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_cmd_mux.vho"                                -work cmd_mux                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_cmd_demux_001.vho"                          -work cmd_demux_001                       
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_cmd_demux.vho"                              -work cmd_demux                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router_004.vho"                             -work router_004                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router_003.vho"                             -work router_003                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router_002.vho"                             -work router_002                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router_001.vho"                             -work router_001                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router.vho"                                 -work router                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_SRAM_CVGX_uas_agent_rdata_fifo.vho"         -work SRAM_CVGX_uas_agent_rdata_fifo      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_SRAM_CVGX_uas_agent_rsp_fifo.vho"           -work SRAM_CVGX_uas_agent_rsp_fifo        
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_CPU_jtag_debug_module_agent_rsp_fifo.vho"   -work CPU_jtag_debug_module_agent_rsp_fifo
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_PinSharer_arbiter.vho"                                   -work arbiter                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_PinSharer_pin_sharer.vho"                                -work pin_sharer                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_CVGX_tda.vho"                                            -work tda                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_CVGX_tdt.vho"                                            -work tdt                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_irq_mapper.vho"                                               -work irq_mapper                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0.vhd"                                        -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_cpu_jtag_debug_module_translator.vhd"       -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sram_cvgx_uas_translator.vhd"               -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_jtag_uart_avalon_jtag_slave_translator.vhd" -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_rtx_timer_s1_translator.vhd"                -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sysid_qsys_0_control_slave_translator.vhd"  -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_lcd_control_slave_translator.vhd"           -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_pio_sw_s1_translator.vhd"                   -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_pio_key_s1_translator.vhd"                  -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_registers_register_slave_translator.vhd"    -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_cpu_jtag_debug_module_agent.vhd"            -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sram_cvgx_uas_agent.vhd"                    -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sram_cvgx_uas_rsp_width_adapter.vhd"        -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sram_cvgx_uas_cmd_width_adapter.vhd"        -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_cpu_instruction_master_translator.vhd"      -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_cpu_data_master_translator.vhd"             -work mm_interconnect_0                   
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/motor_control_unit.vhd"                                                           -work motor_control_unit_0                
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/signal_generator.vhd"                                                             -work motor_control_unit_0                
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/register_interface.vhd"                                                           -work registers                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_pio_led9.vhd"                                                 -work pio_led9                            
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_pio_hex0.vhd"                                                 -work pio_hex0                            
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_pio_key.vhd"                                                  -work pio_key                             
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_pio_sw.vhd"                                                   -work pio_sw                              
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_lcd.vhd"                                                      -work lcd                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_PinSharer.vhd"                                           -work SRAM_PinSharer                      
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_pll_100MHz.vho"                                               -work pll_100MHz                          
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_Conduit.vho"                                             -work SRAM_Conduit                        
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_CVGX.vhd"                                                -work SRAM_CVGX                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_RTX_Timer.vhd"                                                -work RTX_Timer                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_jtag_uart.vhd"                                                -work jtag_uart                           
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_sysid_qsys_0.vho"                                             -work sysid_qsys_0                        
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU.vho"                                                      -work CPU                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_jtag_debug_module_sysclk.vhd"                             -work CPU                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_jtag_debug_module_tck.vhd"                                -work CPU                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_jtag_debug_module_wrapper.vhd"                            -work CPU                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_mult_cell.vhd"                                            -work CPU                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_oci_test_bench.vhd"                                       -work CPU                                 
  vhdlan -xlrm "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_test_bench.vhd"                                           -work CPU                                 
  vhdlan -xlrm "$QSYS_SIMDIR/StepperMotorControl.vhd"                                                                                                               
  vhdlan -xlrm "$QSYS_SIMDIR/steppermotorcontrol_rst_controller.vhd"                                                                                                
  vhdlan -xlrm "$QSYS_SIMDIR/steppermotorcontrol_rst_controller_001.vhd"                                                                                            
fi

# ----------------------------------------
# elaborate top level design
if [ $SKIP_ELAB -eq 0 ]; then
  vcs -lca -t ps $ELAB_OPTIONS $USER_DEFINED_ELAB_OPTIONS $TOP_LEVEL_NAME
fi

# ----------------------------------------
# simulate
if [ $SKIP_SIM -eq 0 ]; then
  ./simv $SIM_OPTIONS $USER_DEFINED_SIM_OPTIONS
fi
