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
-- CREATED		"Wed Apr 06 10:56:46 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY counter_updn_2bit IS 
	PORT
	(
		i_dir :  IN  STD_LOGIC;
		i_rstb :  IN  STD_LOGIC;
		i_clk :  IN  STD_LOGIC;
		o_q :  OUT  STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END counter_updn_2bit;

ARCHITECTURE bdf_type OF counter_updn_2bit IS 

SIGNAL	QSIG :  STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_5 <= NOT(QSIG(1));



PROCESS(i_clk,i_rstb)
BEGIN
IF (i_rstb = '0') THEN
	QSIG(1) <= '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	QSIG(1) <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(i_clk,i_rstb)
BEGIN
IF (i_rstb = '0') THEN
	QSIG(0) <= '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	QSIG(0) <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_6 AND QSIG(1);


SYNTHESIZED_WIRE_4 <= i_dir XOR QSIG(0);


SYNTHESIZED_WIRE_6 <= NOT(i_dir XOR QSIG(0));


SYNTHESIZED_WIRE_1 <= NOT(QSIG(0));


o_q <= QSIG;

END bdf_type;