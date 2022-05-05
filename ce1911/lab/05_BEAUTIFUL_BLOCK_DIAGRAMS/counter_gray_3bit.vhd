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
-- CREATED		"Mon Apr 11 01:06:08 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY counter_gray_3bit IS 
	PORT
	(
		i_dir :  IN  STD_LOGIC;
		i_rstb :  IN  STD_LOGIC;
		i_clk :  IN  STD_LOGIC;
		o_q :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END counter_gray_3bit;

ARCHITECTURE bdf_type OF counter_gray_3bit IS 

SIGNAL	QSIG :  STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;


BEGIN 



PROCESS(i_clk,i_rstb)
BEGIN
IF (i_rstb = '0') THEN
	QSIG(2) <= '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	QSIG(2) <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_11 <= QSIG(1) XOR i_dir;


SYNTHESIZED_WIRE_9 <= SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_2;


PROCESS(i_clk,i_rstb)
BEGIN
IF (i_rstb = '0') THEN
	QSIG(1) <= '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	QSIG(1) <= SYNTHESIZED_WIRE_3;
END IF;
END PROCESS;


PROCESS(i_clk,i_rstb)
BEGIN
IF (i_rstb = '0') THEN
	QSIG(0) <= '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	QSIG(0) <= SYNTHESIZED_WIRE_4;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_8 <= QSIG(2) AND SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_5 <= QSIG(1) XOR i_dir;


SYNTHESIZED_WIRE_15 <= NOT(QSIG(2) XOR i_dir);


SYNTHESIZED_WIRE_2 <= NOT(QSIG(1) XOR i_dir);


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_8 OR SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_13 <= QSIG(2) AND QSIG(0);


SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_16 AND SYNTHESIZED_WIRE_11;


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_12 OR SYNTHESIZED_WIRE_13;


SYNTHESIZED_WIRE_7 <= QSIG(1) AND SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_16 <= NOT(QSIG(0));



SYNTHESIZED_WIRE_1 <= NOT(QSIG(2));



SYNTHESIZED_WIRE_6 <= QSIG(0) AND SYNTHESIZED_WIRE_15;

o_q <= QSIG;

END bdf_type;