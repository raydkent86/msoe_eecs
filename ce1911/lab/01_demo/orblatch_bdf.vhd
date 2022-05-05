-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"
-- CREATED		"Wed Mar 09 09:58:05 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY orblatch_bdf IS 
	PORT
	(
		i_clk :  IN  STD_LOGIC;
		i_d :  IN  STD_LOGIC;
		o_q :  OUT  STD_LOGIC
	);
END orblatch_bdf;

ARCHITECTURE bdf_type OF orblatch_bdf IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
o_q <= SYNTHESIZED_WIRE_4;



SYNTHESIZED_WIRE_2 <= i_clk AND SYNTHESIZED_WIRE_0;


SYNTHESIZED_WIRE_3 <= i_clk AND i_d;


SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_3 OR SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_0 <= NOT(i_d);



END bdf_type;