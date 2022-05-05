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
-- CREATED		"Wed Mar 16 09:00:07 2022"

------------------------------
--
-- counter_4bit.vhd
--
-- created: 3/16/2022
-- by: bailey-waltzo (autogen)
-- rev: 0
--
-- implementation of a four
-- bit binary counter auto-
-- generated from schematic
--
-------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY counter_4bit IS 
	PORT
	(
		i_rstb :  IN  STD_LOGIC;
		i_clk :  IN  STD_LOGIC;
		o_b0 :  OUT  STD_LOGIC;
		o_b1 :  OUT  STD_LOGIC;
		o_b2 :  OUT  STD_LOGIC;
		o_b3 :  OUT  STD_LOGIC
	);
END counter_4bit;

ARCHITECTURE bdf_type OF counter_4bit IS 

SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	JKFF_inst1 :  STD_LOGIC;
SIGNAL	JKFF_inst2 :  STD_LOGIC;


BEGIN 
o_b0 <= SYNTHESIZED_WIRE_8;
o_b1 <= JKFF_inst1;
o_b2 <= JKFF_inst2;
SYNTHESIZED_WIRE_7 <= '1';



PROCESS(i_clk,i_rstb)
VARIABLE synthesized_var_for_SYNTHESIZED_WIRE_8 : STD_LOGIC;
BEGIN
IF (i_rstb = '0') THEN
	synthesized_var_for_SYNTHESIZED_WIRE_8 := '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	synthesized_var_for_SYNTHESIZED_WIRE_8 := (NOT(synthesized_var_for_SYNTHESIZED_WIRE_8) AND SYNTHESIZED_WIRE_7) OR (synthesized_var_for_SYNTHESIZED_WIRE_8 AND (NOT(SYNTHESIZED_WIRE_7)));
END IF;
	SYNTHESIZED_WIRE_8 <= synthesized_var_for_SYNTHESIZED_WIRE_8;
END PROCESS;


PROCESS(i_clk,i_rstb)
VARIABLE synthesized_var_for_JKFF_inst1 : STD_LOGIC;
BEGIN
IF (i_rstb = '0') THEN
	synthesized_var_for_JKFF_inst1 := '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	synthesized_var_for_JKFF_inst1 := (NOT(synthesized_var_for_JKFF_inst1) AND SYNTHESIZED_WIRE_8) OR (synthesized_var_for_JKFF_inst1 AND (NOT(SYNTHESIZED_WIRE_8)));
END IF;
	JKFF_inst1 <= synthesized_var_for_JKFF_inst1;
END PROCESS;


PROCESS(i_clk,i_rstb)
VARIABLE synthesized_var_for_JKFF_inst2 : STD_LOGIC;
BEGIN
IF (i_rstb = '0') THEN
	synthesized_var_for_JKFF_inst2 := '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	synthesized_var_for_JKFF_inst2 := (NOT(synthesized_var_for_JKFF_inst2) AND SYNTHESIZED_WIRE_9) OR (synthesized_var_for_JKFF_inst2 AND (NOT(SYNTHESIZED_WIRE_9)));
END IF;
	JKFF_inst2 <= synthesized_var_for_JKFF_inst2;
END PROCESS;


PROCESS(i_clk,i_rstb)
VARIABLE synthesized_var_for_o_b3 : STD_LOGIC;
BEGIN
IF (i_rstb = '0') THEN
	synthesized_var_for_o_b3 := '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	synthesized_var_for_o_b3 := (NOT(synthesized_var_for_o_b3) AND SYNTHESIZED_WIRE_10) OR (synthesized_var_for_o_b3 AND (NOT(SYNTHESIZED_WIRE_10)));
END IF;
	o_b3 <= synthesized_var_for_o_b3;
END PROCESS;



SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_8 AND JKFF_inst1;


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_9 AND JKFF_inst2;


END bdf_type;