transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/ce1911/lab/08_memory/SEG7DECODE.vhd}
vcom -2008 -work work {C:/ce1911/lab/08_memory/ram_256_x8_inferred_lab8.vhdl}
vcom -2008 -work work {C:/ce1911/lab/08_memory/lab8_part2.vhdl}

vcom -2008 -work work {C:/ce1911/lab/08_memory/lab8_part2_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  lab8_part2_tb

add wave *
view structure
view signals
run 4000 ns