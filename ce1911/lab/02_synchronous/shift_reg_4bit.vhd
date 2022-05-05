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
-- CREATED		"Wed Mar 16 10:04:21 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY shift_reg_4bit IS 
	PORT
	(
		i_clk :  IN  STD_LOGIC;
		i_rstb :  IN  STD_LOGIC;
		i_din :  IN  STD_LOGIC;
		i_sel :  IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
		o_b0 :  OUT  STD_LOGIC;
		o_b1 :  OUT  STD_LOGIC;
		o_b2 :  OUT  STD_LOGIC;
		o_b3 :  OUT  STD_LOGIC
	);
END shift_reg_4bit;

ARCHITECTURE bdf_type OF shift_reg_4bit IS 

COMPONENT mymux4to1
	PORT(D0 : IN STD_LOGIC;
		 D1 : IN STD_LOGIC;
		 D2 : IN STD_LOGIC;
		 D3 : IN STD_LOGIC;
		 SEL : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		 Y : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 
o_b0 <= SYNTHESIZED_WIRE_5;
o_b1 <= SYNTHESIZED_WIRE_4;
o_b2 <= SYNTHESIZED_WIRE_6;
o_b3 <= SYNTHESIZED_WIRE_7;



PROCESS(i_clk,i_rstb)
BEGIN
IF (i_rstb = '0') THEN
	SYNTHESIZED_WIRE_5 <= '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(i_clk,i_rstb)
BEGIN
IF (i_rstb = '0') THEN
	SYNTHESIZED_WIRE_4 <= '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(i_clk,i_rstb)
BEGIN
IF (i_rstb = '0') THEN
	SYNTHESIZED_WIRE_6 <= '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	SYNTHESIZED_WIRE_6 <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;


b2v_inst3 : mymux4to1
PORT MAP(D0 => i_din,
		 D1 => SYNTHESIZED_WIRE_4,
		 D2 => SYNTHESIZED_WIRE_5,
		 D3 => SYNTHESIZED_WIRE_5,
		 SEL => i_sel,
		 Y => SYNTHESIZED_WIRE_0);


b2v_inst4 : mymux4to1
PORT MAP(D0 => SYNTHESIZED_WIRE_5,
		 D1 => SYNTHESIZED_WIRE_6,
		 D2 => SYNTHESIZED_WIRE_4,
		 D3 => SYNTHESIZED_WIRE_4,
		 SEL => i_sel,
		 Y => SYNTHESIZED_WIRE_1);


b2v_inst5 : mymux4to1
PORT MAP(D0 => SYNTHESIZED_WIRE_4,
		 D1 => SYNTHESIZED_WIRE_7,
		 D2 => SYNTHESIZED_WIRE_6,
		 D3 => SYNTHESIZED_WIRE_6,
		 SEL => i_sel,
		 Y => SYNTHESIZED_WIRE_2);


PROCESS(i_clk,i_rstb)
BEGIN
IF (i_rstb = '0') THEN
	SYNTHESIZED_WIRE_7 <= '0';
ELSIF (RISING_EDGE(i_clk)) THEN
	SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_3;
END IF;
END PROCESS;


b2v_inst7 : mymux4to1
PORT MAP(D0 => SYNTHESIZED_WIRE_6,
		 D1 => i_din,
		 D2 => SYNTHESIZED_WIRE_7,
		 D3 => SYNTHESIZED_WIRE_7,
		 SEL => i_sel,
		 Y => SYNTHESIZED_WIRE_3);


END bdf_type;