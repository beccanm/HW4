transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/MARCO/Altera Projects/Hw4/Problem7 - Pipeline/dff1.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/Hw4/Problem7 - Pipeline/Problem_4_30.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/Hw4/Problem7 - Pipeline/Reg_8.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/Hw4/Problem7 - Pipeline/Reg_4.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/Hw4/Problem7 - Pipeline/FullAdder.vhd}
vcom -93 -work work {C:/Users/MARCO/Altera Projects/Hw4/Problem7 - Pipeline/HalfAdder.vhd}

