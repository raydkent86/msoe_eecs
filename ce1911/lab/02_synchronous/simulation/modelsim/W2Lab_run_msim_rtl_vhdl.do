transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/ce1911/lab/02_synchronous/MYMUX4TO1.vhd}
vcom -93 -work work {C:/ce1911/lab/02_synchronous/shift_reg_4bit.vhd}

vcom -93 -work work {C:/ce1911/lab/02_synchronous/shift_reg_4bit_tb.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  shift_reg_4bit_tb

add wave *
view structure
view signals
run 500 ns