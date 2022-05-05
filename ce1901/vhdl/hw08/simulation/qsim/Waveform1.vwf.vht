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
-- Generated on "02/09/2022 14:55:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ORBFA
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ORBFA_vhd_vec_tst IS
END ORBFA_vhd_vec_tst;
ARCHITECTURE ORBFA_arch OF ORBFA_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ABCIN : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL COUT : STD_LOGIC;
SIGNAL S : STD_LOGIC;
COMPONENT ORBFA
	PORT (
	ABCIN : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	COUT : BUFFER STD_LOGIC;
	S : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ORBFA
	PORT MAP (
-- list connections between master ports and signals
	ABCIN => ABCIN,
	COUT => COUT,
	S => S
	);
-- ABCIN[2]
t_prcs_ABCIN_2: PROCESS
BEGIN
LOOP
	ABCIN(2) <= '0';
	WAIT FOR 500000 ps;
	ABCIN(2) <= '1';
	WAIT FOR 500000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ABCIN_2;
-- ABCIN[1]
t_prcs_ABCIN_1: PROCESS
BEGIN
LOOP
	ABCIN(1) <= '0';
	WAIT FOR 250000 ps;
	ABCIN(1) <= '1';
	WAIT FOR 250000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ABCIN_1;
-- ABCIN[0]
t_prcs_ABCIN_0: PROCESS
BEGIN
LOOP
	ABCIN(0) <= '0';
	WAIT FOR 125000 ps;
	ABCIN(0) <= '1';
	WAIT FOR 125000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_ABCIN_0;
END ORBFA_arch;
