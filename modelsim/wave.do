onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /register_interface_tb/DUT/clock
add wave -noupdate /register_interface_tb/DUT/reset_n
add wave -noupdate /register_interface_tb/DUT/ce_n
add wave -noupdate /register_interface_tb/DUT/read_n
add wave -noupdate /register_interface_tb/DUT/write_n
add wave -noupdate /register_interface_tb/DUT/addr
add wave -noupdate /register_interface_tb/DUT/write_data
add wave -noupdate /register_interface_tb/DUT/debug_n
add wave -noupdate /register_interface_tb/DUT/read_data
add wave -noupdate /register_interface_tb/DUT/irq
add wave -noupdate /register_interface_tb/DUT/greenleds
add wave -noupdate /register_interface_tb/DUT/redleds
add wave -noupdate /register_interface_tb/DUT/ctrlReg
add wave -noupdate /register_interface_tb/DUT/ctrlSetReg
add wave -noupdate /register_interface_tb/DUT/ctrlClrReg
add wave -noupdate /register_interface_tb/DUT/speedReg
add wave -noupdate /register_interface_tb/DUT/stepsReg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {22773 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 256
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {132273 ps}
