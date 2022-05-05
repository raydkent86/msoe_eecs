transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/ce1911/lab/04_counter_fpga/counter_updn_byM_nbit.vhdl}
vcom -2008 -work work {C:/ce1911/lab/04_counter_fpga/counter_updn_byM_nbit_de10.vhdl}
vcom -2008 -work work {C:/ce1911/lab/04_counter_fpga/clock_1hz.vhdl}

vcom -2008 -work work {C:/ce1911/lab/04_counter_fpga/counter_updn_byM_nbit_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  counter_updn_byM_nbit_tb

add wave *
view structure
view signals
run 5000 ns
