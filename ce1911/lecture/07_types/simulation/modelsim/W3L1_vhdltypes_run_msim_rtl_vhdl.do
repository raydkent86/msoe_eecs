transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/ce1911/lecture/07_types/counter_n.vhd}

vcom -2008 -work work {C:/ce1911/lecture/07_types/counter_2_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  counter_2_tb

add wave *
view structure
view signals
run 400 ns