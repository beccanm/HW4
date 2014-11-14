transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/MARCO/Altera Projects/Hw4/Q6/Reg.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/Hw4/Q6/MISR_8.vhd}

