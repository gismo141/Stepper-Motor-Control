transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/mpeg/Desktop/Stepper-Motor-Control/quartus/IP/signal_generator/signal_generator.vhd}

