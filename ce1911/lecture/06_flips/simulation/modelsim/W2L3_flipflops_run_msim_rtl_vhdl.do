transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/ce1911/lecture/06_flips/ff1_8.vhd}

vcom -2008 -work work {C:/ce1911/lecture/06_flips/ff1_8_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  ff1_8_tb

add wave *
view structure
view signals
run 300 ns
