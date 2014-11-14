
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

# ACDS 14.0 209 win32 2014.11.14.10:59:02

# ----------------------------------------
# Auto-generated simulation script

# ----------------------------------------
# Initialize variables
if ![info exists SYSTEM_INSTANCE_NAME] { 
  set SYSTEM_INSTANCE_NAME ""
} elseif { ![ string match "" $SYSTEM_INSTANCE_NAME ] } { 
  set SYSTEM_INSTANCE_NAME "/$SYSTEM_INSTANCE_NAME"
}

if ![info exists TOP_LEVEL_NAME] { 
  set TOP_LEVEL_NAME "StepperMotorControl"
}

if ![info exists QSYS_SIMDIR] { 
  set QSYS_SIMDIR "./../"
}

if ![info exists QUARTUS_INSTALL_DIR] { 
  set QUARTUS_INSTALL_DIR "C:/altera/14.0/quartus/"
}

# ----------------------------------------
# Initialize simulation properties - DO NOT MODIFY!
set ELAB_OPTIONS ""
set SIM_OPTIONS ""
if ![ string match "*-64 vsim*" [ vsim -version ] ] {
} else {
}

# ----------------------------------------
# Copy ROM/RAM files to simulation directory
alias file_copy {
  echo "\[exec\] file_copy"
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ic_tag_ram.dat ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ic_tag_ram.hex ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ic_tag_ram.mif ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ociram_default_contents.dat ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ociram_default_contents.hex ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_ociram_default_contents.mif ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_a.dat ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_a.hex ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_a.mif ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_b.dat ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_b.hex ./
  file copy -force $QSYS_SIMDIR/submodules/StepperMotorControl_CPU_rf_ram_b.mif ./
}

# ----------------------------------------
# Create compilation libraries
proc ensure_lib { lib } { if ![file isdirectory $lib] { vlib $lib } }
ensure_lib          ./libraries/     
ensure_lib          ./libraries/work/
vmap       work     ./libraries/work/
vmap       work_lib ./libraries/work/
if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
  ensure_lib                       ./libraries/altera_ver/           
  vmap       altera_ver            ./libraries/altera_ver/           
  ensure_lib                       ./libraries/lpm_ver/              
  vmap       lpm_ver               ./libraries/lpm_ver/              
  ensure_lib                       ./libraries/sgate_ver/            
  vmap       sgate_ver             ./libraries/sgate_ver/            
  ensure_lib                       ./libraries/altera_mf_ver/        
  vmap       altera_mf_ver         ./libraries/altera_mf_ver/        
  ensure_lib                       ./libraries/altera_lnsim_ver/     
  vmap       altera_lnsim_ver      ./libraries/altera_lnsim_ver/     
  ensure_lib                       ./libraries/cyclonev_ver/         
  vmap       cyclonev_ver          ./libraries/cyclonev_ver/         
  ensure_lib                       ./libraries/cyclonev_hssi_ver/    
  vmap       cyclonev_hssi_ver     ./libraries/cyclonev_hssi_ver/    
  ensure_lib                       ./libraries/cyclonev_pcie_hip_ver/
  vmap       cyclonev_pcie_hip_ver ./libraries/cyclonev_pcie_hip_ver/
  ensure_lib                       ./libraries/altera/               
  vmap       altera                ./libraries/altera/               
  ensure_lib                       ./libraries/lpm/                  
  vmap       lpm                   ./libraries/lpm/                  
  ensure_lib                       ./libraries/sgate/                
  vmap       sgate                 ./libraries/sgate/                
  ensure_lib                       ./libraries/altera_mf/            
  vmap       altera_mf             ./libraries/altera_mf/            
  ensure_lib                       ./libraries/altera_lnsim/         
  vmap       altera_lnsim          ./libraries/altera_lnsim/         
  ensure_lib                       ./libraries/cyclonev/             
  vmap       cyclonev              ./libraries/cyclonev/             
}
ensure_lib                                      ./libraries/SRAM_CVGX_uas_rsp_width_adapter/     
vmap       SRAM_CVGX_uas_rsp_width_adapter      ./libraries/SRAM_CVGX_uas_rsp_width_adapter/     
ensure_lib                                      ./libraries/rsp_mux_001/                         
vmap       rsp_mux_001                          ./libraries/rsp_mux_001/                         
ensure_lib                                      ./libraries/rsp_mux/                             
vmap       rsp_mux                              ./libraries/rsp_mux/                             
ensure_lib                                      ./libraries/rsp_demux_002/                       
vmap       rsp_demux_002                        ./libraries/rsp_demux_002/                       
ensure_lib                                      ./libraries/rsp_demux/                           
vmap       rsp_demux                            ./libraries/rsp_demux/                           
ensure_lib                                      ./libraries/cmd_mux_002/                         
vmap       cmd_mux_002                          ./libraries/cmd_mux_002/                         
ensure_lib                                      ./libraries/cmd_mux/                             
vmap       cmd_mux                              ./libraries/cmd_mux/                             
ensure_lib                                      ./libraries/cmd_demux_001/                       
vmap       cmd_demux_001                        ./libraries/cmd_demux_001/                       
ensure_lib                                      ./libraries/cmd_demux/                           
vmap       cmd_demux                            ./libraries/cmd_demux/                           
ensure_lib                                      ./libraries/SRAM_CVGX_uas_burst_adapter/         
vmap       SRAM_CVGX_uas_burst_adapter          ./libraries/SRAM_CVGX_uas_burst_adapter/         
ensure_lib                                      ./libraries/CPU_instruction_master_limiter/      
vmap       CPU_instruction_master_limiter       ./libraries/CPU_instruction_master_limiter/      
ensure_lib                                      ./libraries/router_004/                          
vmap       router_004                           ./libraries/router_004/                          
ensure_lib                                      ./libraries/router_003/                          
vmap       router_003                           ./libraries/router_003/                          
ensure_lib                                      ./libraries/router_002/                          
vmap       router_002                           ./libraries/router_002/                          
ensure_lib                                      ./libraries/router_001/                          
vmap       router_001                           ./libraries/router_001/                          
ensure_lib                                      ./libraries/router/                              
vmap       router                               ./libraries/router/                              
ensure_lib                                      ./libraries/SRAM_CVGX_uas_agent_rdata_fifo/      
vmap       SRAM_CVGX_uas_agent_rdata_fifo       ./libraries/SRAM_CVGX_uas_agent_rdata_fifo/      
ensure_lib                                      ./libraries/SRAM_CVGX_uas_agent_rsp_fifo/        
vmap       SRAM_CVGX_uas_agent_rsp_fifo         ./libraries/SRAM_CVGX_uas_agent_rsp_fifo/        
ensure_lib                                      ./libraries/CPU_jtag_debug_module_agent_rsp_fifo/
vmap       CPU_jtag_debug_module_agent_rsp_fifo ./libraries/CPU_jtag_debug_module_agent_rsp_fifo/
ensure_lib                                      ./libraries/CPU_jtag_debug_module_agent/         
vmap       CPU_jtag_debug_module_agent          ./libraries/CPU_jtag_debug_module_agent/         
ensure_lib                                      ./libraries/CPU_instruction_master_agent/        
vmap       CPU_instruction_master_agent         ./libraries/CPU_instruction_master_agent/        
ensure_lib                                      ./libraries/CPU_instruction_master_translator/   
vmap       CPU_instruction_master_translator    ./libraries/CPU_instruction_master_translator/   
ensure_lib                                      ./libraries/arbiter/                             
vmap       arbiter                              ./libraries/arbiter/                             
ensure_lib                                      ./libraries/pin_sharer/                          
vmap       pin_sharer                           ./libraries/pin_sharer/                          
ensure_lib                                      ./libraries/tda/                                 
vmap       tda                                  ./libraries/tda/                                 
ensure_lib                                      ./libraries/slave_translator/                    
vmap       slave_translator                     ./libraries/slave_translator/                    
ensure_lib                                      ./libraries/tdt/                                 
vmap       tdt                                  ./libraries/tdt/                                 
ensure_lib                                      ./libraries/rst_controller/                      
vmap       rst_controller                       ./libraries/rst_controller/                      
ensure_lib                                      ./libraries/irq_mapper/                          
vmap       irq_mapper                           ./libraries/irq_mapper/                          
ensure_lib                                      ./libraries/mm_interconnect_0/                   
vmap       mm_interconnect_0                    ./libraries/mm_interconnect_0/                   
ensure_lib                                      ./libraries/pio_led9/                            
vmap       pio_led9                             ./libraries/pio_led9/                            
ensure_lib                                      ./libraries/pio_hex0/                            
vmap       pio_hex0                             ./libraries/pio_hex0/                            
ensure_lib                                      ./libraries/pio_key/                             
vmap       pio_key                              ./libraries/pio_key/                             
ensure_lib                                      ./libraries/pio_sw/                              
vmap       pio_sw                               ./libraries/pio_sw/                              
ensure_lib                                      ./libraries/lcd/                                 
vmap       lcd                                  ./libraries/lcd/                                 
ensure_lib                                      ./libraries/SRAM_PinSharer/                      
vmap       SRAM_PinSharer                       ./libraries/SRAM_PinSharer/                      
ensure_lib                                      ./libraries/pll_100MHz/                          
vmap       pll_100MHz                           ./libraries/pll_100MHz/                          
ensure_lib                                      ./libraries/SRAM_Conduit/                        
vmap       SRAM_Conduit                         ./libraries/SRAM_Conduit/                        
ensure_lib                                      ./libraries/SRAM_CVGX/                           
vmap       SRAM_CVGX                            ./libraries/SRAM_CVGX/                           
ensure_lib                                      ./libraries/RTX_Timer/                           
vmap       RTX_Timer                            ./libraries/RTX_Timer/                           
ensure_lib                                      ./libraries/jtag_uart/                           
vmap       jtag_uart                            ./libraries/jtag_uart/                           
ensure_lib                                      ./libraries/sysid_qsys_0/                        
vmap       sysid_qsys_0                         ./libraries/sysid_qsys_0/                        
ensure_lib                                      ./libraries/CPU/                                 
vmap       CPU                                  ./libraries/CPU/                                 

# ----------------------------------------
# Compile device library files
alias dev_com {
  echo "\[exec\] dev_com"
  if ![ string match "*ModelSim ALTERA*" [ vsim -version ] ] {
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.v"                       -work altera_ver           
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.v"                                -work lpm_ver              
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.v"                                   -work sgate_ver            
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.v"                               -work altera_mf_ver        
    vlog -sv "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/altera_lnsim_for_vhdl.sv"           -work altera_lnsim_ver     
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_ncrypt.v"            -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hmi_atoms_ncrypt.v"        -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_atoms_for_vhdl.v"          -work cyclonev_ver         
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_ncrypt.v"       -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_hssi_atoms_for_vhdl.v"     -work cyclonev_hssi_ver    
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_ncrypt.v"   -work cyclonev_pcie_hip_ver
    vlog     "$QUARTUS_INSTALL_DIR/eda/sim_lib/mentor/cyclonev_pcie_hip_atoms_for_vhdl.v" -work cyclonev_pcie_hip_ver
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_syn_attributes.vhd"                 -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_standard_functions.vhd"             -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/alt_dspbuilder_package.vhd"                -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_europa_support_lib.vhd"             -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives_components.vhd"          -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_primitives.vhd"                     -work altera               
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220pack.vhd"                               -work lpm                  
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/220model.vhd"                              -work lpm                  
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate_pack.vhd"                            -work sgate                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/sgate.vhd"                                 -work sgate                
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf_components.vhd"                  -work altera_mf            
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_mf.vhd"                             -work altera_mf            
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/altera_lnsim_components.vhd"               -work altera_lnsim         
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_atoms.vhd"                        -work cyclonev             
    vcom     "$QUARTUS_INSTALL_DIR/eda/sim_lib/cyclonev_components.vhd"                   -work cyclonev             
  }
}

# ----------------------------------------
# Compile the design files in correct order
alias com {
  echo "\[exec\] com"
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_width_adapter.sv"                                            -work SRAM_CVGX_uas_rsp_width_adapter     
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_address_alignment.sv"                                        -work SRAM_CVGX_uas_rsp_width_adapter     
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_burst_uncompressor.sv"                                       -work SRAM_CVGX_uas_rsp_width_adapter     
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_rsp_mux_001.vho"                            -work rsp_mux_001                         
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_rsp_mux.vho"                                -work rsp_mux                             
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_rsp_demux_002.vho"                          -work rsp_demux_002                       
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_rsp_demux.vho"                              -work rsp_demux                           
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_cmd_mux_002.vho"                            -work cmd_mux_002                         
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_cmd_mux.vho"                                -work cmd_mux                             
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_cmd_demux_001.vho"                          -work cmd_demux_001                       
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_cmd_demux.vho"                              -work cmd_demux                           
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_burst_adapter_13_1.sv"                                       -work SRAM_CVGX_uas_burst_adapter         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_burst_adapter_new.sv"                                        -work SRAM_CVGX_uas_burst_adapter         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_burst_adapter.sv"                                            -work SRAM_CVGX_uas_burst_adapter         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_incr_burst_converter.sv"                                            -work SRAM_CVGX_uas_burst_adapter         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_wrap_burst_converter.sv"                                            -work SRAM_CVGX_uas_burst_adapter         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_default_burst_converter.sv"                                         -work SRAM_CVGX_uas_burst_adapter         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_avalon_st_pipeline_base.v"                                          -work SRAM_CVGX_uas_burst_adapter         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_avalon_st_pipeline_stage.sv"                                        -work SRAM_CVGX_uas_burst_adapter         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_address_alignment.sv"                                        -work SRAM_CVGX_uas_burst_adapter         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_traffic_limiter.sv"                                          -work CPU_instruction_master_limiter      
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_avalon_st_pipeline_base.v"                                          -work CPU_instruction_master_limiter      
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router_004.vho"                             -work router_004                          
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router_003.vho"                             -work router_003                          
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router_002.vho"                             -work router_002                          
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router_001.vho"                             -work router_001                          
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_router.vho"                                 -work router                              
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_SRAM_CVGX_uas_agent_rdata_fifo.vho"         -work SRAM_CVGX_uas_agent_rdata_fifo      
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_SRAM_CVGX_uas_agent_rsp_fifo.vho"           -work SRAM_CVGX_uas_agent_rsp_fifo        
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0_CPU_jtag_debug_module_agent_rsp_fifo.vho"   -work CPU_jtag_debug_module_agent_rsp_fifo
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_slave_agent.sv"                                              -work CPU_jtag_debug_module_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_burst_uncompressor.sv"                                       -work CPU_jtag_debug_module_agent         
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_master_agent.sv"                                             -work CPU_instruction_master_agent        
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_master_translator.sv"                                        -work CPU_instruction_master_translator   
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_PinSharer_arbiter.vho"                                   -work arbiter                             
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_PinSharer_pin_sharer.vho"                                -work pin_sharer                          
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_CVGX_tda.vho"                                            -work tda                                 
  vlog -sv "$QSYS_SIMDIR/submodules/mentor/altera_merlin_slave_translator.sv"                                         -work slave_translator                    
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_CVGX_tdt.vho"                                            -work tdt                                 
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_reset_controller.v"                                                 -work rst_controller                      
  vlog     "$QSYS_SIMDIR/submodules/mentor/altera_reset_synchronizer.v"                                               -work rst_controller                      
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_irq_mapper.vho"                                               -work irq_mapper                          
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_mm_interconnect_0.vhd"                                        -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_cpu_jtag_debug_module_translator.vhd"       -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sram_cvgx_uas_translator.vhd"               -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_jtag_uart_avalon_jtag_slave_translator.vhd" -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_rtx_timer_s1_translator.vhd"                -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sysid_qsys_0_control_slave_translator.vhd"  -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_lcd_control_slave_translator.vhd"           -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_pio_sw_s1_translator.vhd"                   -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_pio_key_s1_translator.vhd"                  -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_cpu_jtag_debug_module_agent.vhd"            -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sram_cvgx_uas_agent.vhd"                    -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sram_cvgx_uas_rsp_width_adapter.vhd"        -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_sram_cvgx_uas_cmd_width_adapter.vhd"        -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_cpu_instruction_master_translator.vhd"      -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/steppermotorcontrol_mm_interconnect_0_cpu_data_master_translator.vhd"             -work mm_interconnect_0                   
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_pio_led9.vhd"                                                 -work pio_led9                            
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_pio_hex0.vhd"                                                 -work pio_hex0                            
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_pio_key.vhd"                                                  -work pio_key                             
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_pio_sw.vhd"                                                   -work pio_sw                              
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_lcd.vhd"                                                      -work lcd                                 
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_PinSharer.vhd"                                           -work SRAM_PinSharer                      
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_pll_100MHz.vho"                                               -work pll_100MHz                          
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_Conduit.vho"                                             -work SRAM_Conduit                        
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_SRAM_CVGX.vhd"                                                -work SRAM_CVGX                           
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_RTX_Timer.vhd"                                                -work RTX_Timer                           
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_jtag_uart.vhd"                                                -work jtag_uart                           
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_sysid_qsys_0.vho"                                             -work sysid_qsys_0                        
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU.vho"                                                      -work CPU                                 
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_jtag_debug_module_sysclk.vhd"                             -work CPU                                 
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_jtag_debug_module_tck.vhd"                                -work CPU                                 
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_jtag_debug_module_wrapper.vhd"                            -work CPU                                 
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_mult_cell.vhd"                                            -work CPU                                 
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_oci_test_bench.vhd"                                       -work CPU                                 
  vcom     "$QSYS_SIMDIR/submodules/StepperMotorControl_CPU_test_bench.vhd"                                           -work CPU                                 
  vcom     "$QSYS_SIMDIR/StepperMotorControl.vhd"                                                                                                               
  vcom     "$QSYS_SIMDIR/steppermotorcontrol_rst_controller.vhd"                                                                                                
  vcom     "$QSYS_SIMDIR/steppermotorcontrol_rst_controller_001.vhd"                                                                                            
}

# ----------------------------------------
# Elaborate top level design
alias elab {
  echo "\[exec\] elab"
  eval vsim -t ps $ELAB_OPTIONS -L work -L work_lib -L SRAM_CVGX_uas_rsp_width_adapter -L rsp_mux_001 -L rsp_mux -L rsp_demux_002 -L rsp_demux -L cmd_mux_002 -L cmd_mux -L cmd_demux_001 -L cmd_demux -L SRAM_CVGX_uas_burst_adapter -L CPU_instruction_master_limiter -L router_004 -L router_003 -L router_002 -L router_001 -L router -L SRAM_CVGX_uas_agent_rdata_fifo -L SRAM_CVGX_uas_agent_rsp_fifo -L CPU_jtag_debug_module_agent_rsp_fifo -L CPU_jtag_debug_module_agent -L CPU_instruction_master_agent -L CPU_instruction_master_translator -L arbiter -L pin_sharer -L tda -L slave_translator -L tdt -L rst_controller -L irq_mapper -L mm_interconnect_0 -L pio_led9 -L pio_hex0 -L pio_key -L pio_sw -L lcd -L SRAM_PinSharer -L pll_100MHz -L SRAM_Conduit -L SRAM_CVGX -L RTX_Timer -L jtag_uart -L sysid_qsys_0 -L CPU -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Elaborate the top level design with novopt option
alias elab_debug {
  echo "\[exec\] elab_debug"
  eval vsim -novopt -t ps $ELAB_OPTIONS -L work -L work_lib -L SRAM_CVGX_uas_rsp_width_adapter -L rsp_mux_001 -L rsp_mux -L rsp_demux_002 -L rsp_demux -L cmd_mux_002 -L cmd_mux -L cmd_demux_001 -L cmd_demux -L SRAM_CVGX_uas_burst_adapter -L CPU_instruction_master_limiter -L router_004 -L router_003 -L router_002 -L router_001 -L router -L SRAM_CVGX_uas_agent_rdata_fifo -L SRAM_CVGX_uas_agent_rsp_fifo -L CPU_jtag_debug_module_agent_rsp_fifo -L CPU_jtag_debug_module_agent -L CPU_instruction_master_agent -L CPU_instruction_master_translator -L arbiter -L pin_sharer -L tda -L slave_translator -L tdt -L rst_controller -L irq_mapper -L mm_interconnect_0 -L pio_led9 -L pio_hex0 -L pio_key -L pio_sw -L lcd -L SRAM_PinSharer -L pll_100MHz -L SRAM_Conduit -L SRAM_CVGX -L RTX_Timer -L jtag_uart -L sysid_qsys_0 -L CPU -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev $TOP_LEVEL_NAME
}

# ----------------------------------------
# Compile all the design files and elaborate the top level design
alias ld "
  dev_com
  com
  elab
"

# ----------------------------------------
# Compile all the design files and elaborate the top level design with -novopt
alias ld_debug "
  dev_com
  com
  elab_debug
"

# ----------------------------------------
# Print out user commmand line aliases
alias h {
  echo "List Of Command Line Aliases"
  echo
  echo "file_copy                     -- Copy ROM/RAM files to simulation directory"
  echo
  echo "dev_com                       -- Compile device library files"
  echo
  echo "com                           -- Compile the design files in correct order"
  echo
  echo "elab                          -- Elaborate top level design"
  echo
  echo "elab_debug                    -- Elaborate the top level design with novopt option"
  echo
  echo "ld                            -- Compile all the design files and elaborate the top level design"
  echo
  echo "ld_debug                      -- Compile all the design files and elaborate the top level design with -novopt"
  echo
  echo 
  echo
  echo "List Of Variables"
  echo
  echo "TOP_LEVEL_NAME                -- Top level module name."
  echo
  echo "SYSTEM_INSTANCE_NAME          -- Instantiated system module name inside top level module."
  echo
  echo "QSYS_SIMDIR                   -- Qsys base simulation directory."
  echo
  echo "QUARTUS_INSTALL_DIR           -- Quartus installation directory."
}
file_copy
h
