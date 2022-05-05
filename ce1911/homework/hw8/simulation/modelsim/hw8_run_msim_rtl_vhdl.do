transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/ce1911/homework/hw8/color_fsm.vhdl}

vcom -2008 -work work {C:/ce1911/homework/hw8/color_fsm_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  color_fsm_tb

add wave *
view structure
view signals
run 1000 ns
