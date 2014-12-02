onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider debug
add wave -noupdate /milestone3_tb/DUT/debug_inst/clock
add wave -noupdate /milestone3_tb/DUT/debug_inst/reset_n
add wave -noupdate /milestone3_tb/DUT/debug_inst/switches
add wave -noupdate /milestone3_tb/DUT/debug_inst/key
add wave -noupdate /milestone3_tb/DUT/debug_inst/ce_n
add wave -noupdate /milestone3_tb/DUT/debug_inst/write_n
add wave -noupdate /milestone3_tb/DUT/debug_inst/addr
add wave -noupdate /milestone3_tb/DUT/debug_inst/key0_detect_wire
add wave -noupdate -divider register_interface
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/clock
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/reset_n
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/ce_n
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/read_n
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/write_n
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/addr
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/write_data
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/read_data
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/irq
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/greenleds
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/redleds
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/run
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/direction
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/mode
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/speed
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/steps
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/ir
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/ctrlReg
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/speedReg
add wave -noupdate /milestone3_tb/DUT/register_interface_inst/stepsReg
add wave -noupdate -divider motor_control_unit
add wave -noupdate /milestone3_tb/DUT/motor_control_unit_inst/clock
add wave -noupdate /milestone3_tb/DUT/motor_control_unit_inst/reset_n
add wave -noupdate /milestone3_tb/DUT/motor_control_unit_inst/run
add wave -noupdate /milestone3_tb/DUT/motor_control_unit_inst/direction
add wave -noupdate /milestone3_tb/DUT/motor_control_unit_inst/mode
add wave -noupdate /milestone3_tb/DUT/motor_control_unit_inst/speed
add wave -noupdate -expand /milestone3_tb/DUT/motor_control_unit_inst/motor_pwm
add wave -noupdate /milestone3_tb/DUT/motor_control_unit_inst/motor_en
add wave -noupdate -radix decimal /milestone3_tb/DUT/motor_control_unit_inst/steps
add wave -noupdate /milestone3_tb/DUT/motor_control_unit_inst/ir
add wave -noupdate /milestone3_tb/DUT/motor_control_unit_inst/prescaler_wire
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {179863 ps} 0} {{Cursor 2} {499930000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits us
update
WaveRestoreZoom {0 ps} {3076176 ps}
