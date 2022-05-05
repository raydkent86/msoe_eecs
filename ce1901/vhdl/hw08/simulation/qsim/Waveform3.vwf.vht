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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/09/2022 14:49:29"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ORBRCA8
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ORBRCA8_vhd_vec_tst IS
END ORBRCA8_vhd_vec_tst;
ARCHITECTURE ORBRCA8_arch OF ORBRCA8_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A0 : STD_LOGIC;
SIGNAL A1 : STD_LOGIC;
SIGNAL A2 : STD_LOGIC;
SIGNAL A3 : STD_LOGIC;
SIGNAL A4 : STD_LOGIC;
SIGNAL A5 : STD_LOGIC;
SIGNAL A6 : STD_LOGIC;
SIGNAL A7 : STD_LOGIC;
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL B3 : STD_LOGIC;
SIGNAL B4 : STD_LOGIC;
SIGNAL B5 : STD_LOGIC;
SIGNAL B6 : STD_LOGIC;
SIGNAL B7 : STD_LOGIC;
SIGNAL COUT : STD_LOGIC;
SIGNAL OVERFLOW : STD_LOGIC;
SIGNAL S : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT ORBRCA8
	PORT (
	A0 : IN STD_LOGIC;
	A1 : IN STD_LOGIC;
	A2 : IN STD_LOGIC;
	A3 : IN STD_LOGIC;
	A4 : IN STD_LOGIC;
	A5 : IN STD_LOGIC;
	A6 : IN STD_LOGIC;
	A7 : IN STD_LOGIC;
	B0 : IN STD_LOGIC;
	B1 : IN STD_LOGIC;
	B2 : IN STD_LOGIC;
	B3 : IN STD_LOGIC;
	B4 : IN STD_LOGIC;
	B5 : IN STD_LOGIC;
	B6 : IN STD_LOGIC;
	B7 : IN STD_LOGIC;
	COUT : OUT STD_LOGIC;
	OVERFLOW : OUT STD_LOGIC;
	S : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : ORBRCA8
	PORT MAP (
-- list connections between master ports and signals
	A0 => A0,
	A1 => A1,
	A2 => A2,
	A3 => A3,
	A4 => A4,
	A5 => A5,
	A6 => A6,
	A7 => A7,
	B0 => B0,
	B1 => B1,
	B2 => B2,
	B3 => B3,
	B4 => B4,
	B5 => B5,
	B6 => B6,
	B7 => B7,
	COUT => COUT,
	OVERFLOW => OVERFLOW,
	S => S
	);

-- A7
t_prcs_A7: PROCESS
BEGIN
	A7 <= '0';
	WAIT FOR 375000 ps;
	A7 <= '1';
	WAIT FOR 187500 ps;
	A7 <= '0';
	WAIT FOR 187500 ps;
	A7 <= '1';
	WAIT FOR 187500 ps;
	A7 <= '0';
WAIT;
END PROCESS t_prcs_A7;

-- A6
t_prcs_A6: PROCESS
BEGIN
	A6 <= '0';
	WAIT FOR 62500 ps;
	A6 <= '1';
	WAIT FOR 125000 ps;
	A6 <= '0';
	WAIT FOR 62500 ps;
	A6 <= '1';
	WAIT FOR 250000 ps;
	A6 <= '0';
	WAIT FOR 125000 ps;
	A6 <= '1';
	WAIT FOR 125000 ps;
	A6 <= '0';
	WAIT FOR 125000 ps;
	A6 <= '1';
WAIT;
END PROCESS t_prcs_A6;

-- A5
t_prcs_A5: PROCESS
BEGIN
	A5 <= '1';
	WAIT FOR 187500 ps;
	A5 <= '0';
	WAIT FOR 125000 ps;
	A5 <= '1';
	WAIT FOR 62500 ps;
	A5 <= '0';
	WAIT FOR 62500 ps;
	A5 <= '1';
	WAIT FOR 62500 ps;
	A5 <= '0';
	WAIT FOR 187500 ps;
	A5 <= '1';
	WAIT FOR 62500 ps;
	A5 <= '0';
	WAIT FOR 187500 ps;
	A5 <= '1';
WAIT;
END PROCESS t_prcs_A5;

-- A4
t_prcs_A4: PROCESS
BEGIN
	A4 <= '0';
	WAIT FOR 125000 ps;
	A4 <= '1';
	WAIT FOR 187500 ps;
	A4 <= '0';
	WAIT FOR 312500 ps;
	A4 <= '1';
	WAIT FOR 62500 ps;
	A4 <= '0';
	WAIT FOR 62500 ps;
	A4 <= '1';
	WAIT FOR 62500 ps;
	A4 <= '0';
WAIT;
END PROCESS t_prcs_A4;

-- A3
t_prcs_A3: PROCESS
BEGIN
	A3 <= '1';
	WAIT FOR 62500 ps;
	A3 <= '0';
	WAIT FOR 250000 ps;
	A3 <= '1';
	WAIT FOR 312500 ps;
	A3 <= '0';
	WAIT FOR 62500 ps;
	A3 <= '1';
	WAIT FOR 125000 ps;
	A3 <= '0';
	WAIT FOR 62500 ps;
	A3 <= '1';
WAIT;
END PROCESS t_prcs_A3;

-- A2
t_prcs_A2: PROCESS
BEGIN
	A2 <= '1';
	WAIT FOR 62500 ps;
	A2 <= '0';
	WAIT FOR 62500 ps;
	A2 <= '1';
	WAIT FOR 62500 ps;
	A2 <= '0';
	WAIT FOR 250000 ps;
	A2 <= '1';
	WAIT FOR 62500 ps;
	A2 <= '0';
	WAIT FOR 62500 ps;
	A2 <= '1';
	WAIT FOR 250000 ps;
	A2 <= '0';
	WAIT FOR 62500 ps;
	A2 <= '1';
WAIT;
END PROCESS t_prcs_A2;

-- A1
t_prcs_A1: PROCESS
BEGIN
	A1 <= '0';
	WAIT FOR 125000 ps;
	A1 <= '1';
	WAIT FOR 125000 ps;
	A1 <= '0';
	WAIT FOR 62500 ps;
	A1 <= '1';
	WAIT FOR 62500 ps;
	A1 <= '0';
	WAIT FOR 62500 ps;
	A1 <= '1';
	WAIT FOR 62500 ps;
	A1 <= '0';
	WAIT FOR 187500 ps;
	A1 <= '1';
	WAIT FOR 62500 ps;
	A1 <= '0';
	WAIT FOR 125000 ps;
	A1 <= '1';
	WAIT FOR 62500 ps;
	A1 <= '0';
WAIT;
END PROCESS t_prcs_A1;

-- A0
t_prcs_A0: PROCESS
BEGIN
	A0 <= '1';
	WAIT FOR 62500 ps;
	A0 <= '0';
	WAIT FOR 62500 ps;
	A0 <= '1';
	WAIT FOR 62500 ps;
	A0 <= '0';
	WAIT FOR 187500 ps;
	A0 <= '1';
	WAIT FOR 62500 ps;
	A0 <= '0';
	WAIT FOR 62500 ps;
	A0 <= '1';
	WAIT FOR 62500 ps;
	A0 <= '0';
	WAIT FOR 62500 ps;
	A0 <= '1';
	WAIT FOR 62500 ps;
	A0 <= '0';
WAIT;
END PROCESS t_prcs_A0;

-- B7
t_prcs_B7: PROCESS
BEGIN
	B7 <= '0';
	WAIT FOR 62500 ps;
	B7 <= '1';
	WAIT FOR 187500 ps;
	B7 <= '0';
	WAIT FOR 62500 ps;
	B7 <= '1';
	WAIT FOR 62500 ps;
	B7 <= '0';
	WAIT FOR 62500 ps;
	B7 <= '1';
	WAIT FOR 62500 ps;
	B7 <= '0';
	WAIT FOR 62500 ps;
	B7 <= '1';
	WAIT FOR 62500 ps;
	B7 <= '0';
	WAIT FOR 62500 ps;
	B7 <= '1';
	WAIT FOR 62500 ps;
	B7 <= '0';
	WAIT FOR 62500 ps;
	B7 <= '1';
	WAIT FOR 62500 ps;
	B7 <= '0';
	WAIT FOR 62500 ps;
	B7 <= '1';
WAIT;
END PROCESS t_prcs_B7;

-- B6
t_prcs_B6: PROCESS
BEGIN
	B6 <= '1';
	WAIT FOR 62500 ps;
	B6 <= '0';
	WAIT FOR 62500 ps;
	B6 <= '1';
	WAIT FOR 187500 ps;
	B6 <= '0';
	WAIT FOR 62500 ps;
	B6 <= '1';
	WAIT FOR 62500 ps;
	B6 <= '0';
	WAIT FOR 125000 ps;
	B6 <= '1';
	WAIT FOR 312500 ps;
	B6 <= '0';
	WAIT FOR 62500 ps;
	B6 <= '1';
WAIT;
END PROCESS t_prcs_B6;

-- B5
t_prcs_B5: PROCESS
BEGIN
	B5 <= '0';
	WAIT FOR 62500 ps;
	B5 <= '1';
	WAIT FOR 62500 ps;
	B5 <= '0';
	WAIT FOR 62500 ps;
	B5 <= '1';
	WAIT FOR 125000 ps;
	B5 <= '0';
	WAIT FOR 125000 ps;
	B5 <= '1';
	WAIT FOR 125000 ps;
	B5 <= '0';
	WAIT FOR 62500 ps;
	B5 <= '1';
	WAIT FOR 125000 ps;
	B5 <= '0';
	WAIT FOR 125000 ps;
	B5 <= '1';
WAIT;
END PROCESS t_prcs_B5;

-- B4
t_prcs_B4: PROCESS
BEGIN
	B4 <= '0';
	WAIT FOR 125000 ps;
	B4 <= '1';
	WAIT FOR 125000 ps;
	B4 <= '0';
	WAIT FOR 62500 ps;
	B4 <= '1';
	WAIT FOR 250000 ps;
	B4 <= '0';
	WAIT FOR 62500 ps;
	B4 <= '1';
	WAIT FOR 187500 ps;
	B4 <= '0';
	WAIT FOR 125000 ps;
	B4 <= '1';
WAIT;
END PROCESS t_prcs_B4;

-- B3
t_prcs_B3: PROCESS
BEGIN
	B3 <= '0';
	WAIT FOR 187500 ps;
	B3 <= '1';
	WAIT FOR 62500 ps;
	B3 <= '0';
	WAIT FOR 125000 ps;
	B3 <= '1';
	WAIT FOR 62500 ps;
	B3 <= '0';
	WAIT FOR 375000 ps;
	B3 <= '1';
	WAIT FOR 62500 ps;
	B3 <= '0';
	WAIT FOR 62500 ps;
	B3 <= '1';
WAIT;
END PROCESS t_prcs_B3;

-- B2
t_prcs_B2: PROCESS
BEGIN
	B2 <= '0';
	WAIT FOR 62500 ps;
	B2 <= '1';
	WAIT FOR 62500 ps;
	B2 <= '0';
	WAIT FOR 312500 ps;
	B2 <= '1';
	WAIT FOR 62500 ps;
	B2 <= '0';
	WAIT FOR 250000 ps;
	B2 <= '1';
	WAIT FOR 62500 ps;
	B2 <= '0';
	WAIT FOR 62500 ps;
	B2 <= '1';
	WAIT FOR 62500 ps;
	B2 <= '0';
WAIT;
END PROCESS t_prcs_B2;

-- B1
t_prcs_B1: PROCESS
BEGIN
	B1 <= '1';
	WAIT FOR 62500 ps;
	B1 <= '0';
	WAIT FOR 250000 ps;
	B1 <= '1';
	WAIT FOR 62500 ps;
	B1 <= '0';
	WAIT FOR 62500 ps;
	B1 <= '1';
	WAIT FOR 125000 ps;
	B1 <= '0';
	WAIT FOR 62500 ps;
	B1 <= '1';
	WAIT FOR 187500 ps;
	B1 <= '0';
	WAIT FOR 125000 ps;
	B1 <= '1';
WAIT;
END PROCESS t_prcs_B1;

-- B0
t_prcs_B0: PROCESS
BEGIN
	B0 <= '1';
	WAIT FOR 62500 ps;
	B0 <= '0';
	WAIT FOR 187500 ps;
	B0 <= '1';
	WAIT FOR 187500 ps;
	B0 <= '0';
	WAIT FOR 62500 ps;
	B0 <= '1';
	WAIT FOR 62500 ps;
	B0 <= '0';
	WAIT FOR 62500 ps;
	B0 <= '1';
	WAIT FOR 62500 ps;
	B0 <= '0';
	WAIT FOR 62500 ps;
	B0 <= '1';
	WAIT FOR 125000 ps;
	B0 <= '0';
WAIT;
END PROCESS t_prcs_B0;
END ORBRCA8_arch;
