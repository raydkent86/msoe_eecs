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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "02/18/2022 12:32:41"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ORBRCAS16 IS
    PORT (
	A : IN std_logic_vector(15 DOWNTO 0);
	B : IN std_logic_vector(15 DOWNTO 0);
	SUB : IN std_logic;
	S : OUT std_logic_vector(15 DOWNTO 0);
	C : OUT std_logic;
	OV : OUT std_logic
	);
END ORBRCAS16;

-- Design Ports Information
-- S[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[10]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[11]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[12]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[13]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[14]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OV	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SUB	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[7]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[7]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[8]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[8]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[9]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[9]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[10]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[10]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[11]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[11]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[12]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[13]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[13]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[14]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[14]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[15]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[15]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ORBRCAS16 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_SUB : std_logic;
SIGNAL ww_S : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_C : std_logic;
SIGNAL ww_OV : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \rcas|fa0|Mux0~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \SUB~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:1:faN|Mux0~0_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:1:faN|Mux1~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[2]~0_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:2:faN|Mux0~0_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:2:faN|Mux1~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[3]~1_combout\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:3:faN|Mux0~0_combout\ : std_logic;
SIGNAL \A[4]~input_o\ : std_logic;
SIGNAL \B[4]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:4:faN|Mux0~0_combout\ : std_logic;
SIGNAL \B[5]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[5]~2_combout\ : std_logic;
SIGNAL \A[5]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:4:faN|Mux1~0_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:4:faN|Mux1~1_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:4:faN|Mux1~2_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:4:faN|Mux1~3_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:5:faN|Mux0~0_combout\ : std_logic;
SIGNAL \A[6]~input_o\ : std_logic;
SIGNAL \B[6]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[6]~3_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:6:faN|Mux0~0_combout\ : std_logic;
SIGNAL \B[7]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[7]~4_combout\ : std_logic;
SIGNAL \A[7]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:6:faN|Mux1~0_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:7:faN|Mux0~0_combout\ : std_logic;
SIGNAL \A[8]~input_o\ : std_logic;
SIGNAL \B[8]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[8]~5_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:8:faN|Mux0~0_combout\ : std_logic;
SIGNAL \B[9]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[9]~6_combout\ : std_logic;
SIGNAL \A[9]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:8:faN|Mux1~0_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:9:faN|Mux0~0_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:9:faN|Mux1~0_combout\ : std_logic;
SIGNAL \B[10]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[10]~7_combout\ : std_logic;
SIGNAL \A[10]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:9:faN|Mux1~1_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:9:faN|Mux1~2_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:10:faN|Mux0~0_combout\ : std_logic;
SIGNAL \B[11]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[11]~8_combout\ : std_logic;
SIGNAL \A[11]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:11:faN|Mux0~0_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:11:faN|Mux1~0_combout\ : std_logic;
SIGNAL \A[12]~input_o\ : std_logic;
SIGNAL \B[12]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[12]~9_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:12:faN|Mux0~0_combout\ : std_logic;
SIGNAL \A[13]~input_o\ : std_logic;
SIGNAL \B[13]~input_o\ : std_logic;
SIGNAL \rcas|TO_B[13]~10_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:13:faN|Mux0~0_combout\ : std_logic;
SIGNAL \A[14]~input_o\ : std_logic;
SIGNAL \B[14]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:14:faN|Mux0~0_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:14:faN|Mux0~1_combout\ : std_logic;
SIGNAL \A[15]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:13:faN|Mux1~0_combout\ : std_logic;
SIGNAL \B[15]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:15:faN|Mux0~0_combout\ : std_logic;
SIGNAL \rcas|OV~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[14]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SUB~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \rcas|bitslice_fa:13:faN|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:14:faN|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[13]~10_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:11:faN|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[12]~9_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[11]~8_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[10]~7_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:8:faN|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[9]~6_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[8]~5_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:6:faN|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[7]~4_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[6]~3_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~3_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~2_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~1_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[5]~2_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:2:faN|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[3]~1_combout\ : std_logic;
SIGNAL \rcas|bitslice_fa:1:faN|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \rcas|ALT_INV_TO_B[2]~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_SUB <= SUB;
S <= ww_S;
C <= ww_C;
OV <= ww_OV;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[15]~input_o\ <= NOT \B[15]~input_o\;
\ALT_INV_A[15]~input_o\ <= NOT \A[15]~input_o\;
\ALT_INV_B[14]~input_o\ <= NOT \B[14]~input_o\;
\ALT_INV_A[14]~input_o\ <= NOT \A[14]~input_o\;
\ALT_INV_B[13]~input_o\ <= NOT \B[13]~input_o\;
\ALT_INV_A[13]~input_o\ <= NOT \A[13]~input_o\;
\ALT_INV_B[12]~input_o\ <= NOT \B[12]~input_o\;
\ALT_INV_A[12]~input_o\ <= NOT \A[12]~input_o\;
\ALT_INV_B[11]~input_o\ <= NOT \B[11]~input_o\;
\ALT_INV_A[11]~input_o\ <= NOT \A[11]~input_o\;
\ALT_INV_B[10]~input_o\ <= NOT \B[10]~input_o\;
\ALT_INV_A[10]~input_o\ <= NOT \A[10]~input_o\;
\ALT_INV_B[9]~input_o\ <= NOT \B[9]~input_o\;
\ALT_INV_A[9]~input_o\ <= NOT \A[9]~input_o\;
\ALT_INV_B[8]~input_o\ <= NOT \B[8]~input_o\;
\ALT_INV_A[8]~input_o\ <= NOT \A[8]~input_o\;
\ALT_INV_B[7]~input_o\ <= NOT \B[7]~input_o\;
\ALT_INV_A[7]~input_o\ <= NOT \A[7]~input_o\;
\ALT_INV_B[6]~input_o\ <= NOT \B[6]~input_o\;
\ALT_INV_A[6]~input_o\ <= NOT \A[6]~input_o\;
\ALT_INV_B[5]~input_o\ <= NOT \B[5]~input_o\;
\ALT_INV_A[5]~input_o\ <= NOT \A[5]~input_o\;
\ALT_INV_B[4]~input_o\ <= NOT \B[4]~input_o\;
\ALT_INV_A[4]~input_o\ <= NOT \A[4]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_SUB~input_o\ <= NOT \SUB~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\rcas|bitslice_fa:13:faN|ALT_INV_Mux1~0_combout\ <= NOT \rcas|bitslice_fa:13:faN|Mux1~0_combout\;
\rcas|bitslice_fa:14:faN|ALT_INV_Mux0~0_combout\ <= NOT \rcas|bitslice_fa:14:faN|Mux0~0_combout\;
\rcas|ALT_INV_TO_B[13]~10_combout\ <= NOT \rcas|TO_B[13]~10_combout\;
\rcas|bitslice_fa:11:faN|ALT_INV_Mux1~0_combout\ <= NOT \rcas|bitslice_fa:11:faN|Mux1~0_combout\;
\rcas|ALT_INV_TO_B[12]~9_combout\ <= NOT \rcas|TO_B[12]~9_combout\;
\rcas|ALT_INV_TO_B[11]~8_combout\ <= NOT \rcas|TO_B[11]~8_combout\;
\rcas|bitslice_fa:9:faN|ALT_INV_Mux1~2_combout\ <= NOT \rcas|bitslice_fa:9:faN|Mux1~2_combout\;
\rcas|bitslice_fa:9:faN|ALT_INV_Mux1~1_combout\ <= NOT \rcas|bitslice_fa:9:faN|Mux1~1_combout\;
\rcas|bitslice_fa:9:faN|ALT_INV_Mux1~0_combout\ <= NOT \rcas|bitslice_fa:9:faN|Mux1~0_combout\;
\rcas|ALT_INV_TO_B[10]~7_combout\ <= NOT \rcas|TO_B[10]~7_combout\;
\rcas|bitslice_fa:8:faN|ALT_INV_Mux1~0_combout\ <= NOT \rcas|bitslice_fa:8:faN|Mux1~0_combout\;
\rcas|ALT_INV_TO_B[9]~6_combout\ <= NOT \rcas|TO_B[9]~6_combout\;
\rcas|ALT_INV_TO_B[8]~5_combout\ <= NOT \rcas|TO_B[8]~5_combout\;
\rcas|bitslice_fa:6:faN|ALT_INV_Mux1~0_combout\ <= NOT \rcas|bitslice_fa:6:faN|Mux1~0_combout\;
\rcas|ALT_INV_TO_B[7]~4_combout\ <= NOT \rcas|TO_B[7]~4_combout\;
\rcas|ALT_INV_TO_B[6]~3_combout\ <= NOT \rcas|TO_B[6]~3_combout\;
\rcas|bitslice_fa:4:faN|ALT_INV_Mux1~3_combout\ <= NOT \rcas|bitslice_fa:4:faN|Mux1~3_combout\;
\rcas|bitslice_fa:4:faN|ALT_INV_Mux1~2_combout\ <= NOT \rcas|bitslice_fa:4:faN|Mux1~2_combout\;
\rcas|bitslice_fa:4:faN|ALT_INV_Mux1~1_combout\ <= NOT \rcas|bitslice_fa:4:faN|Mux1~1_combout\;
\rcas|bitslice_fa:4:faN|ALT_INV_Mux1~0_combout\ <= NOT \rcas|bitslice_fa:4:faN|Mux1~0_combout\;
\rcas|ALT_INV_TO_B[5]~2_combout\ <= NOT \rcas|TO_B[5]~2_combout\;
\rcas|bitslice_fa:2:faN|ALT_INV_Mux1~0_combout\ <= NOT \rcas|bitslice_fa:2:faN|Mux1~0_combout\;
\rcas|ALT_INV_TO_B[3]~1_combout\ <= NOT \rcas|TO_B[3]~1_combout\;
\rcas|bitslice_fa:1:faN|ALT_INV_Mux1~0_combout\ <= NOT \rcas|bitslice_fa:1:faN|Mux1~0_combout\;
\rcas|ALT_INV_TO_B[2]~0_combout\ <= NOT \rcas|TO_B[2]~0_combout\;

-- Location: IOOBUF_X32_Y0_N53
\S[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|fa0|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(0));

-- Location: IOOBUF_X32_Y0_N2
\S[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:1:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(1));

-- Location: IOOBUF_X34_Y0_N76
\S[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:2:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(2));

-- Location: IOOBUF_X40_Y0_N53
\S[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:3:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(3));

-- Location: IOOBUF_X50_Y0_N76
\S[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:4:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(4));

-- Location: IOOBUF_X50_Y0_N42
\S[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:5:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(5));

-- Location: IOOBUF_X34_Y0_N42
\S[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:6:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(6));

-- Location: IOOBUF_X8_Y0_N19
\S[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:7:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(7));

-- Location: IOOBUF_X30_Y0_N19
\S[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:8:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(8));

-- Location: IOOBUF_X30_Y0_N2
\S[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:9:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(9));

-- Location: IOOBUF_X32_Y0_N19
\S[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:10:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(10));

-- Location: IOOBUF_X28_Y0_N19
\S[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:11:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(11));

-- Location: IOOBUF_X2_Y0_N59
\S[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:12:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(12));

-- Location: IOOBUF_X6_Y0_N19
\S[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:13:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(13));

-- Location: IOOBUF_X2_Y0_N76
\S[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:14:faN|Mux0~1_combout\,
	devoe => ww_devoe,
	o => ww_S(14));

-- Location: IOOBUF_X8_Y0_N53
\S[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|bitslice_fa:15:faN|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_S(15));

-- Location: IOOBUF_X72_Y81_N53
\C~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_C);

-- Location: IOOBUF_X6_Y0_N53
\OV~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \rcas|OV~0_combout\,
	devoe => ww_devoe,
	o => ww_OV);

-- Location: IOIBUF_X38_Y0_N52
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X37_Y1_N0
\rcas|fa0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|fa0|Mux0~0_combout\ = ( \A[0]~input_o\ & ( !\B[0]~input_o\ ) ) # ( !\A[0]~input_o\ & ( \B[0]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \rcas|fa0|Mux0~0_combout\);

-- Location: IOIBUF_X36_Y0_N52
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\SUB~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SUB,
	o => \SUB~input_o\);

-- Location: LABCELL_X37_Y1_N3
\rcas|bitslice_fa:1:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:1:faN|Mux0~0_combout\ = ( \A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\B[0]~input_o\ & !\SUB~input_o\)))) ) ) # ( !\A[0]~input_o\ & ( !\A[1]~input_o\ $ (!\B[1]~input_o\ $ (((\B[0]~input_o\ & \SUB~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001010110100110100101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_SUB~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \rcas|bitslice_fa:1:faN|Mux0~0_combout\);

-- Location: IOIBUF_X38_Y0_N1
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X37_Y1_N42
\rcas|bitslice_fa:1:faN|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:1:faN|Mux1~0_combout\ = ( \A[0]~input_o\ & ( (!\B[1]~input_o\ & (((\A[1]~input_o\ & \B[0]~input_o\)) # (\SUB~input_o\))) # (\B[1]~input_o\ & (((!\SUB~input_o\ & \B[0]~input_o\)) # (\A[1]~input_o\))) ) ) # ( !\A[0]~input_o\ & ( 
-- (!\B[1]~input_o\ & (\SUB~input_o\ & ((!\B[0]~input_o\) # (\A[1]~input_o\)))) # (\B[1]~input_o\ & (\A[1]~input_o\ & ((!\SUB~input_o\) # (!\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011100000110010001110000011001000111011011110100011101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datab => \ALT_INV_B[1]~input_o\,
	datac => \ALT_INV_A[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[0]~input_o\,
	combout => \rcas|bitslice_fa:1:faN|Mux1~0_combout\);

-- Location: IOIBUF_X36_Y0_N18
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X37_Y1_N39
\rcas|TO_B[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[2]~0_combout\ = ( \B[2]~input_o\ & ( !\SUB~input_o\ ) ) # ( !\B[2]~input_o\ & ( \SUB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \rcas|TO_B[2]~0_combout\);

-- Location: LABCELL_X37_Y1_N51
\rcas|bitslice_fa:2:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:2:faN|Mux0~0_combout\ = ( \rcas|TO_B[2]~0_combout\ & ( !\A[2]~input_o\ $ (\rcas|bitslice_fa:1:faN|Mux1~0_combout\) ) ) # ( !\rcas|TO_B[2]~0_combout\ & ( !\A[2]~input_o\ $ (!\rcas|bitslice_fa:1:faN|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \rcas|bitslice_fa:1:faN|ALT_INV_Mux1~0_combout\,
	dataf => \rcas|ALT_INV_TO_B[2]~0_combout\,
	combout => \rcas|bitslice_fa:2:faN|Mux0~0_combout\);

-- Location: LABCELL_X37_Y1_N48
\rcas|bitslice_fa:2:faN|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:2:faN|Mux1~0_combout\ = ( \rcas|TO_B[2]~0_combout\ & ( (\rcas|bitslice_fa:1:faN|Mux1~0_combout\) # (\A[2]~input_o\) ) ) # ( !\rcas|TO_B[2]~0_combout\ & ( (\A[2]~input_o\ & \rcas|bitslice_fa:1:faN|Mux1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \rcas|bitslice_fa:1:faN|ALT_INV_Mux1~0_combout\,
	dataf => \rcas|ALT_INV_TO_B[2]~0_combout\,
	combout => \rcas|bitslice_fa:2:faN|Mux1~0_combout\);

-- Location: IOIBUF_X38_Y0_N35
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: LABCELL_X37_Y1_N36
\rcas|TO_B[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[3]~1_combout\ = !\SUB~input_o\ $ (!\B[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	combout => \rcas|TO_B[3]~1_combout\);

-- Location: IOIBUF_X40_Y0_N18
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X37_Y1_N57
\rcas|bitslice_fa:3:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:3:faN|Mux0~0_combout\ = ( \A[3]~input_o\ & ( !\rcas|bitslice_fa:2:faN|Mux1~0_combout\ $ (\rcas|TO_B[3]~1_combout\) ) ) # ( !\A[3]~input_o\ & ( !\rcas|bitslice_fa:2:faN|Mux1~0_combout\ $ (!\rcas|TO_B[3]~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101010101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|bitslice_fa:2:faN|ALT_INV_Mux1~0_combout\,
	datad => \rcas|ALT_INV_TO_B[3]~1_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \rcas|bitslice_fa:3:faN|Mux0~0_combout\);

-- Location: IOIBUF_X38_Y0_N18
\A[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(4),
	o => \A[4]~input_o\);

-- Location: IOIBUF_X34_Y0_N58
\B[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(4),
	o => \B[4]~input_o\);

-- Location: LABCELL_X37_Y1_N30
\rcas|bitslice_fa:4:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:4:faN|Mux0~0_combout\ = ( \SUB~input_o\ & ( \A[3]~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((!\rcas|bitslice_fa:2:faN|Mux1~0_combout\ & \B[3]~input_o\)))) ) ) ) # ( !\SUB~input_o\ & ( \A[3]~input_o\ & ( !\A[4]~input_o\ $ 
-- (!\B[4]~input_o\ $ (((\B[3]~input_o\) # (\rcas|bitslice_fa:2:faN|Mux1~0_combout\)))) ) ) ) # ( \SUB~input_o\ & ( !\A[3]~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((!\rcas|bitslice_fa:2:faN|Mux1~0_combout\) # (\B[3]~input_o\)))) ) ) ) # ( 
-- !\SUB~input_o\ & ( !\A[3]~input_o\ & ( !\A[4]~input_o\ $ (!\B[4]~input_o\ $ (((\rcas|bitslice_fa:2:faN|Mux1~0_combout\ & \B[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110001101001100101101100001101101001110000110011110010010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|bitslice_fa:2:faN|ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_B[4]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	datae => \ALT_INV_SUB~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \rcas|bitslice_fa:4:faN|Mux0~0_combout\);

-- Location: IOIBUF_X36_Y0_N1
\B[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(5),
	o => \B[5]~input_o\);

-- Location: LABCELL_X37_Y1_N9
\rcas|TO_B[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[5]~2_combout\ = ( \B[5]~input_o\ & ( !\SUB~input_o\ ) ) # ( !\B[5]~input_o\ & ( \SUB~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	dataf => \ALT_INV_B[5]~input_o\,
	combout => \rcas|TO_B[5]~2_combout\);

-- Location: IOIBUF_X36_Y0_N35
\A[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(5),
	o => \A[5]~input_o\);

-- Location: LABCELL_X37_Y1_N54
\rcas|bitslice_fa:4:faN|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:4:faN|Mux1~0_combout\ = ( \B[4]~input_o\ & ( (\A[4]~input_o\ & !\SUB~input_o\) ) ) # ( !\B[4]~input_o\ & ( (\A[4]~input_o\ & \SUB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[4]~input_o\,
	datac => \ALT_INV_SUB~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \rcas|bitslice_fa:4:faN|Mux1~0_combout\);

-- Location: LABCELL_X37_Y1_N45
\rcas|bitslice_fa:4:faN|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:4:faN|Mux1~1_combout\ = ( \B[4]~input_o\ & ( (\SUB~input_o\ & !\A[4]~input_o\) ) ) # ( !\B[4]~input_o\ & ( (!\SUB~input_o\ & !\A[4]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SUB~input_o\,
	datac => \ALT_INV_A[4]~input_o\,
	dataf => \ALT_INV_B[4]~input_o\,
	combout => \rcas|bitslice_fa:4:faN|Mux1~1_combout\);

-- Location: LABCELL_X37_Y1_N12
\rcas|bitslice_fa:4:faN|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:4:faN|Mux1~2_combout\ = ( !\rcas|bitslice_fa:4:faN|Mux1~1_combout\ & ( \A[3]~input_o\ & ( ((!\rcas|bitslice_fa:1:faN|Mux1~0_combout\ & (\A[2]~input_o\ & \rcas|TO_B[2]~0_combout\)) # (\rcas|bitslice_fa:1:faN|Mux1~0_combout\ & 
-- ((\rcas|TO_B[2]~0_combout\) # (\A[2]~input_o\)))) # (\rcas|TO_B[3]~1_combout\) ) ) ) # ( !\rcas|bitslice_fa:4:faN|Mux1~1_combout\ & ( !\A[3]~input_o\ & ( (\rcas|TO_B[3]~1_combout\ & ((!\rcas|bitslice_fa:1:faN|Mux1~0_combout\ & (\A[2]~input_o\ & 
-- \rcas|TO_B[2]~0_combout\)) # (\rcas|bitslice_fa:1:faN|Mux1~0_combout\ & ((\rcas|TO_B[2]~0_combout\) # (\A[2]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010101000000000000000001010111011111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|ALT_INV_TO_B[3]~1_combout\,
	datab => \rcas|bitslice_fa:1:faN|ALT_INV_Mux1~0_combout\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \rcas|ALT_INV_TO_B[2]~0_combout\,
	datae => \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~1_combout\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \rcas|bitslice_fa:4:faN|Mux1~2_combout\);

-- Location: LABCELL_X37_Y1_N18
\rcas|bitslice_fa:4:faN|Mux1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:4:faN|Mux1~3_combout\ = ( !\rcas|bitslice_fa:4:faN|Mux1~2_combout\ & ( !\rcas|bitslice_fa:4:faN|Mux1~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~0_combout\,
	dataf => \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~2_combout\,
	combout => \rcas|bitslice_fa:4:faN|Mux1~3_combout\);

-- Location: LABCELL_X37_Y1_N6
\rcas|bitslice_fa:5:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:5:faN|Mux0~0_combout\ = ( \rcas|bitslice_fa:4:faN|Mux1~3_combout\ & ( !\rcas|TO_B[5]~2_combout\ $ (!\A[5]~input_o\) ) ) # ( !\rcas|bitslice_fa:4:faN|Mux1~3_combout\ & ( !\rcas|TO_B[5]~2_combout\ $ (\A[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001100111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \rcas|ALT_INV_TO_B[5]~2_combout\,
	datac => \ALT_INV_A[5]~input_o\,
	dataf => \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~3_combout\,
	combout => \rcas|bitslice_fa:5:faN|Mux0~0_combout\);

-- Location: IOIBUF_X34_Y0_N92
\A[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(6),
	o => \A[6]~input_o\);

-- Location: IOIBUF_X26_Y0_N92
\B[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(6),
	o => \B[6]~input_o\);

-- Location: MLABCELL_X25_Y1_N0
\rcas|TO_B[6]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[6]~3_combout\ = !\SUB~input_o\ $ (!\B[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SUB~input_o\,
	datac => \ALT_INV_B[6]~input_o\,
	combout => \rcas|TO_B[6]~3_combout\);

-- Location: LABCELL_X37_Y1_N21
\rcas|bitslice_fa:6:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:6:faN|Mux0~0_combout\ = ( \rcas|bitslice_fa:4:faN|Mux1~3_combout\ & ( !\A[6]~input_o\ $ (!\rcas|TO_B[6]~3_combout\ $ (((\A[5]~input_o\ & \rcas|TO_B[5]~2_combout\)))) ) ) # ( !\rcas|bitslice_fa:4:faN|Mux1~3_combout\ & ( !\A[6]~input_o\ $ 
-- (!\rcas|TO_B[6]~3_combout\ $ (((\rcas|TO_B[5]~2_combout\) # (\A[5]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110010010011011011001001001100110110110010010011011011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[5]~input_o\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \rcas|ALT_INV_TO_B[5]~2_combout\,
	datad => \rcas|ALT_INV_TO_B[6]~3_combout\,
	dataf => \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~3_combout\,
	combout => \rcas|bitslice_fa:6:faN|Mux0~0_combout\);

-- Location: IOIBUF_X30_Y0_N35
\B[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(7),
	o => \B[7]~input_o\);

-- Location: MLABCELL_X25_Y1_N3
\rcas|TO_B[7]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[7]~4_combout\ = !\SUB~input_o\ $ (!\B[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SUB~input_o\,
	datad => \ALT_INV_B[7]~input_o\,
	combout => \rcas|TO_B[7]~4_combout\);

-- Location: IOIBUF_X28_Y0_N52
\A[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(7),
	o => \A[7]~input_o\);

-- Location: LABCELL_X37_Y1_N24
\rcas|bitslice_fa:6:faN|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:6:faN|Mux1~0_combout\ = ( \rcas|TO_B[6]~3_combout\ & ( \rcas|TO_B[5]~2_combout\ & ( (!\rcas|bitslice_fa:4:faN|Mux1~0_combout\ & (!\A[6]~input_o\ & (!\A[5]~input_o\ & !\rcas|bitslice_fa:4:faN|Mux1~2_combout\))) ) ) ) # ( 
-- !\rcas|TO_B[6]~3_combout\ & ( \rcas|TO_B[5]~2_combout\ & ( (!\A[6]~input_o\) # ((!\rcas|bitslice_fa:4:faN|Mux1~0_combout\ & (!\A[5]~input_o\ & !\rcas|bitslice_fa:4:faN|Mux1~2_combout\))) ) ) ) # ( \rcas|TO_B[6]~3_combout\ & ( !\rcas|TO_B[5]~2_combout\ & ( 
-- (!\A[6]~input_o\ & ((!\A[5]~input_o\) # ((!\rcas|bitslice_fa:4:faN|Mux1~0_combout\ & !\rcas|bitslice_fa:4:faN|Mux1~2_combout\)))) ) ) ) # ( !\rcas|TO_B[6]~3_combout\ & ( !\rcas|TO_B[5]~2_combout\ & ( (!\A[6]~input_o\) # ((!\A[5]~input_o\) # 
-- ((!\rcas|bitslice_fa:4:faN|Mux1~0_combout\ & !\rcas|bitslice_fa:4:faN|Mux1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111100110010001100000011101100110011001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~0_combout\,
	datab => \ALT_INV_A[6]~input_o\,
	datac => \ALT_INV_A[5]~input_o\,
	datad => \rcas|bitslice_fa:4:faN|ALT_INV_Mux1~2_combout\,
	datae => \rcas|ALT_INV_TO_B[6]~3_combout\,
	dataf => \rcas|ALT_INV_TO_B[5]~2_combout\,
	combout => \rcas|bitslice_fa:6:faN|Mux1~0_combout\);

-- Location: MLABCELL_X25_Y1_N39
\rcas|bitslice_fa:7:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:7:faN|Mux0~0_combout\ = ( \rcas|bitslice_fa:6:faN|Mux1~0_combout\ & ( !\rcas|TO_B[7]~4_combout\ $ (!\A[7]~input_o\) ) ) # ( !\rcas|bitslice_fa:6:faN|Mux1~0_combout\ & ( !\rcas|TO_B[7]~4_combout\ $ (\A[7]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010110100101101001011010010101011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|ALT_INV_TO_B[7]~4_combout\,
	datac => \ALT_INV_A[7]~input_o\,
	dataf => \rcas|bitslice_fa:6:faN|ALT_INV_Mux1~0_combout\,
	combout => \rcas|bitslice_fa:7:faN|Mux0~0_combout\);

-- Location: IOIBUF_X8_Y0_N1
\A[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(8),
	o => \A[8]~input_o\);

-- Location: IOIBUF_X26_Y0_N58
\B[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(8),
	o => \B[8]~input_o\);

-- Location: MLABCELL_X25_Y1_N42
\rcas|TO_B[8]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[8]~5_combout\ = ( \SUB~input_o\ & ( !\B[8]~input_o\ ) ) # ( !\SUB~input_o\ & ( \B[8]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[8]~input_o\,
	dataf => \ALT_INV_SUB~input_o\,
	combout => \rcas|TO_B[8]~5_combout\);

-- Location: MLABCELL_X25_Y1_N36
\rcas|bitslice_fa:8:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:8:faN|Mux0~0_combout\ = ( \rcas|TO_B[8]~5_combout\ & ( !\A[8]~input_o\ $ (((!\rcas|TO_B[7]~4_combout\ & (\A[7]~input_o\ & !\rcas|bitslice_fa:6:faN|Mux1~0_combout\)) # (\rcas|TO_B[7]~4_combout\ & 
-- ((!\rcas|bitslice_fa:6:faN|Mux1~0_combout\) # (\A[7]~input_o\))))) ) ) # ( !\rcas|TO_B[8]~5_combout\ & ( !\A[8]~input_o\ $ (((!\rcas|TO_B[7]~4_combout\ & ((!\A[7]~input_o\) # (\rcas|bitslice_fa:6:faN|Mux1~0_combout\))) # (\rcas|TO_B[7]~4_combout\ & 
-- (!\A[7]~input_o\ & \rcas|bitslice_fa:6:faN|Mux1~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000110001110011100011000111010001110011100011000111001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|ALT_INV_TO_B[7]~4_combout\,
	datab => \ALT_INV_A[7]~input_o\,
	datac => \rcas|bitslice_fa:6:faN|ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_A[8]~input_o\,
	dataf => \rcas|ALT_INV_TO_B[8]~5_combout\,
	combout => \rcas|bitslice_fa:8:faN|Mux0~0_combout\);

-- Location: IOIBUF_X26_Y0_N41
\B[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(9),
	o => \B[9]~input_o\);

-- Location: MLABCELL_X25_Y1_N51
\rcas|TO_B[9]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[9]~6_combout\ = !\B[9]~input_o\ $ (!\SUB~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_SUB~input_o\,
	combout => \rcas|TO_B[9]~6_combout\);

-- Location: IOIBUF_X8_Y0_N35
\A[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(9),
	o => \A[9]~input_o\);

-- Location: MLABCELL_X25_Y1_N45
\rcas|bitslice_fa:8:faN|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:8:faN|Mux1~0_combout\ = ( \rcas|bitslice_fa:6:faN|Mux1~0_combout\ & ( (!\rcas|TO_B[8]~5_combout\ & (\rcas|TO_B[7]~4_combout\ & (\A[8]~input_o\ & \A[7]~input_o\))) # (\rcas|TO_B[8]~5_combout\ & (((\rcas|TO_B[7]~4_combout\ & 
-- \A[7]~input_o\)) # (\A[8]~input_o\))) ) ) # ( !\rcas|bitslice_fa:6:faN|Mux1~0_combout\ & ( (!\rcas|TO_B[8]~5_combout\ & (\A[8]~input_o\ & ((\A[7]~input_o\) # (\rcas|TO_B[7]~4_combout\)))) # (\rcas|TO_B[8]~5_combout\ & (((\A[7]~input_o\) # 
-- (\A[8]~input_o\)) # (\rcas|TO_B[7]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100111111000101110011111100000011000101110000001100010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|ALT_INV_TO_B[7]~4_combout\,
	datab => \rcas|ALT_INV_TO_B[8]~5_combout\,
	datac => \ALT_INV_A[8]~input_o\,
	datad => \ALT_INV_A[7]~input_o\,
	dataf => \rcas|bitslice_fa:6:faN|ALT_INV_Mux1~0_combout\,
	combout => \rcas|bitslice_fa:8:faN|Mux1~0_combout\);

-- Location: MLABCELL_X25_Y1_N24
\rcas|bitslice_fa:9:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:9:faN|Mux0~0_combout\ = !\rcas|TO_B[9]~6_combout\ $ (!\A[9]~input_o\ $ (\rcas|bitslice_fa:8:faN|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|ALT_INV_TO_B[9]~6_combout\,
	datab => \ALT_INV_A[9]~input_o\,
	datad => \rcas|bitslice_fa:8:faN|ALT_INV_Mux1~0_combout\,
	combout => \rcas|bitslice_fa:9:faN|Mux0~0_combout\);

-- Location: MLABCELL_X25_Y1_N27
\rcas|bitslice_fa:9:faN|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:9:faN|Mux1~0_combout\ = (\rcas|TO_B[9]~6_combout\ & \A[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|ALT_INV_TO_B[9]~6_combout\,
	datab => \ALT_INV_A[9]~input_o\,
	combout => \rcas|bitslice_fa:9:faN|Mux1~0_combout\);

-- Location: IOIBUF_X26_Y0_N75
\B[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(10),
	o => \B[10]~input_o\);

-- Location: MLABCELL_X25_Y1_N30
\rcas|TO_B[10]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[10]~7_combout\ = !\SUB~input_o\ $ (!\B[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SUB~input_o\,
	datac => \ALT_INV_B[10]~input_o\,
	combout => \rcas|TO_B[10]~7_combout\);

-- Location: IOIBUF_X6_Y0_N35
\A[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(10),
	o => \A[10]~input_o\);

-- Location: MLABCELL_X25_Y1_N48
\rcas|bitslice_fa:9:faN|Mux1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:9:faN|Mux1~1_combout\ = (!\A[9]~input_o\ & (!\B[9]~input_o\ $ (\SUB~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100100000000100110010000000010011001000000001001100100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[9]~input_o\,
	datab => \ALT_INV_SUB~input_o\,
	datad => \ALT_INV_A[9]~input_o\,
	combout => \rcas|bitslice_fa:9:faN|Mux1~1_combout\);

-- Location: MLABCELL_X25_Y1_N6
\rcas|bitslice_fa:9:faN|Mux1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:9:faN|Mux1~2_combout\ = ( \A[7]~input_o\ & ( \rcas|bitslice_fa:6:faN|Mux1~0_combout\ & ( (!\rcas|bitslice_fa:9:faN|Mux1~1_combout\ & ((!\rcas|TO_B[7]~4_combout\ & (\A[8]~input_o\ & \rcas|TO_B[8]~5_combout\)) # (\rcas|TO_B[7]~4_combout\ & 
-- ((\rcas|TO_B[8]~5_combout\) # (\A[8]~input_o\))))) ) ) ) # ( !\A[7]~input_o\ & ( \rcas|bitslice_fa:6:faN|Mux1~0_combout\ & ( (\A[8]~input_o\ & (!\rcas|bitslice_fa:9:faN|Mux1~1_combout\ & \rcas|TO_B[8]~5_combout\)) ) ) ) # ( \A[7]~input_o\ & ( 
-- !\rcas|bitslice_fa:6:faN|Mux1~0_combout\ & ( (!\rcas|bitslice_fa:9:faN|Mux1~1_combout\ & ((\rcas|TO_B[8]~5_combout\) # (\A[8]~input_o\))) ) ) ) # ( !\A[7]~input_o\ & ( !\rcas|bitslice_fa:6:faN|Mux1~0_combout\ & ( (!\rcas|bitslice_fa:9:faN|Mux1~1_combout\ 
-- & ((!\rcas|TO_B[7]~4_combout\ & (\A[8]~input_o\ & \rcas|TO_B[8]~5_combout\)) # (\rcas|TO_B[7]~4_combout\ & ((\rcas|TO_B[8]~5_combout\) # (\A[8]~input_o\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001110000001100001111000000000000001100000001000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|ALT_INV_TO_B[7]~4_combout\,
	datab => \ALT_INV_A[8]~input_o\,
	datac => \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~1_combout\,
	datad => \rcas|ALT_INV_TO_B[8]~5_combout\,
	datae => \ALT_INV_A[7]~input_o\,
	dataf => \rcas|bitslice_fa:6:faN|ALT_INV_Mux1~0_combout\,
	combout => \rcas|bitslice_fa:9:faN|Mux1~2_combout\);

-- Location: MLABCELL_X25_Y1_N12
\rcas|bitslice_fa:10:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:10:faN|Mux0~0_combout\ = ( \rcas|bitslice_fa:9:faN|Mux1~2_combout\ & ( !\rcas|TO_B[10]~7_combout\ $ (\A[10]~input_o\) ) ) # ( !\rcas|bitslice_fa:9:faN|Mux1~2_combout\ & ( !\rcas|bitslice_fa:9:faN|Mux1~0_combout\ $ 
-- (!\rcas|TO_B[10]~7_combout\ $ (\A[10]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100101101001011010010110100111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~0_combout\,
	datab => \rcas|ALT_INV_TO_B[10]~7_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	dataf => \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~2_combout\,
	combout => \rcas|bitslice_fa:10:faN|Mux0~0_combout\);

-- Location: IOIBUF_X28_Y0_N1
\B[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(11),
	o => \B[11]~input_o\);

-- Location: MLABCELL_X25_Y1_N33
\rcas|TO_B[11]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[11]~8_combout\ = !\SUB~input_o\ $ (!\B[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SUB~input_o\,
	datac => \ALT_INV_B[11]~input_o\,
	combout => \rcas|TO_B[11]~8_combout\);

-- Location: IOIBUF_X28_Y0_N35
\A[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(11),
	o => \A[11]~input_o\);

-- Location: MLABCELL_X25_Y1_N18
\rcas|bitslice_fa:11:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:11:faN|Mux0~0_combout\ = ( \rcas|bitslice_fa:9:faN|Mux1~0_combout\ & ( \A[11]~input_o\ & ( !\rcas|TO_B[11]~8_combout\ $ (((\A[10]~input_o\) # (\rcas|TO_B[10]~7_combout\))) ) ) ) # ( !\rcas|bitslice_fa:9:faN|Mux1~0_combout\ & ( 
-- \A[11]~input_o\ & ( !\rcas|TO_B[11]~8_combout\ $ (((!\rcas|TO_B[10]~7_combout\ & (\A[10]~input_o\ & \rcas|bitslice_fa:9:faN|Mux1~2_combout\)) # (\rcas|TO_B[10]~7_combout\ & ((\rcas|bitslice_fa:9:faN|Mux1~2_combout\) # (\A[10]~input_o\))))) ) ) ) # ( 
-- \rcas|bitslice_fa:9:faN|Mux1~0_combout\ & ( !\A[11]~input_o\ & ( !\rcas|TO_B[11]~8_combout\ $ (((!\rcas|TO_B[10]~7_combout\ & !\A[10]~input_o\))) ) ) ) # ( !\rcas|bitslice_fa:9:faN|Mux1~0_combout\ & ( !\A[11]~input_o\ & ( !\rcas|TO_B[11]~8_combout\ $ 
-- (((!\rcas|TO_B[10]~7_combout\ & ((!\A[10]~input_o\) # (!\rcas|bitslice_fa:9:faN|Mux1~2_combout\))) # (\rcas|TO_B[10]~7_combout\ & (!\A[10]~input_o\ & !\rcas|bitslice_fa:9:faN|Mux1~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010011010100110101010101001100101011001010110010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|ALT_INV_TO_B[11]~8_combout\,
	datab => \rcas|ALT_INV_TO_B[10]~7_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~2_combout\,
	datae => \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \rcas|bitslice_fa:11:faN|Mux0~0_combout\);

-- Location: MLABCELL_X25_Y1_N54
\rcas|bitslice_fa:11:faN|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:11:faN|Mux1~0_combout\ = ( \rcas|bitslice_fa:9:faN|Mux1~0_combout\ & ( \A[11]~input_o\ & ( (!\rcas|TO_B[11]~8_combout\ & (!\rcas|TO_B[10]~7_combout\ & !\A[10]~input_o\)) ) ) ) # ( !\rcas|bitslice_fa:9:faN|Mux1~0_combout\ & ( 
-- \A[11]~input_o\ & ( (!\rcas|TO_B[11]~8_combout\ & ((!\rcas|TO_B[10]~7_combout\ & ((!\A[10]~input_o\) # (!\rcas|bitslice_fa:9:faN|Mux1~2_combout\))) # (\rcas|TO_B[10]~7_combout\ & (!\A[10]~input_o\ & !\rcas|bitslice_fa:9:faN|Mux1~2_combout\)))) ) ) ) # ( 
-- \rcas|bitslice_fa:9:faN|Mux1~0_combout\ & ( !\A[11]~input_o\ & ( (!\rcas|TO_B[11]~8_combout\) # ((!\rcas|TO_B[10]~7_combout\ & !\A[10]~input_o\)) ) ) ) # ( !\rcas|bitslice_fa:9:faN|Mux1~0_combout\ & ( !\A[11]~input_o\ & ( (!\rcas|TO_B[11]~8_combout\) # 
-- ((!\rcas|TO_B[10]~7_combout\ & ((!\A[10]~input_o\) # (!\rcas|bitslice_fa:9:faN|Mux1~2_combout\))) # (\rcas|TO_B[10]~7_combout\ & (!\A[10]~input_o\ & !\rcas|bitslice_fa:9:faN|Mux1~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011101010111010101110101010101000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|ALT_INV_TO_B[11]~8_combout\,
	datab => \rcas|ALT_INV_TO_B[10]~7_combout\,
	datac => \ALT_INV_A[10]~input_o\,
	datad => \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~2_combout\,
	datae => \rcas|bitslice_fa:9:faN|ALT_INV_Mux1~0_combout\,
	dataf => \ALT_INV_A[11]~input_o\,
	combout => \rcas|bitslice_fa:11:faN|Mux1~0_combout\);

-- Location: IOIBUF_X2_Y0_N41
\A[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(12),
	o => \A[12]~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\B[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(12),
	o => \B[12]~input_o\);

-- Location: MLABCELL_X25_Y1_N15
\rcas|TO_B[12]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[12]~9_combout\ = ( \SUB~input_o\ & ( !\B[12]~input_o\ ) ) # ( !\SUB~input_o\ & ( \B[12]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[12]~input_o\,
	dataf => \ALT_INV_SUB~input_o\,
	combout => \rcas|TO_B[12]~9_combout\);

-- Location: MLABCELL_X6_Y1_N30
\rcas|bitslice_fa:12:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:12:faN|Mux0~0_combout\ = ( \A[12]~input_o\ & ( \rcas|TO_B[12]~9_combout\ & ( !\rcas|bitslice_fa:11:faN|Mux1~0_combout\ ) ) ) # ( !\A[12]~input_o\ & ( \rcas|TO_B[12]~9_combout\ & ( \rcas|bitslice_fa:11:faN|Mux1~0_combout\ ) ) ) # ( 
-- \A[12]~input_o\ & ( !\rcas|TO_B[12]~9_combout\ & ( \rcas|bitslice_fa:11:faN|Mux1~0_combout\ ) ) ) # ( !\A[12]~input_o\ & ( !\rcas|TO_B[12]~9_combout\ & ( !\rcas|bitslice_fa:11:faN|Mux1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000011110000111100001111000011111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \rcas|bitslice_fa:11:faN|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \rcas|ALT_INV_TO_B[12]~9_combout\,
	combout => \rcas|bitslice_fa:12:faN|Mux0~0_combout\);

-- Location: IOIBUF_X4_Y0_N35
\A[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(13),
	o => \A[13]~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\B[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(13),
	o => \B[13]~input_o\);

-- Location: MLABCELL_X6_Y1_N39
\rcas|TO_B[13]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|TO_B[13]~10_combout\ = ( \SUB~input_o\ & ( !\B[13]~input_o\ ) ) # ( !\SUB~input_o\ & ( \B[13]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101101010101010101001010101010101011010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[13]~input_o\,
	datae => \ALT_INV_SUB~input_o\,
	combout => \rcas|TO_B[13]~10_combout\);

-- Location: MLABCELL_X6_Y1_N45
\rcas|bitslice_fa:13:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:13:faN|Mux0~0_combout\ = ( \A[12]~input_o\ & ( \rcas|TO_B[12]~9_combout\ & ( !\A[13]~input_o\ $ (\rcas|TO_B[13]~10_combout\) ) ) ) # ( !\A[12]~input_o\ & ( \rcas|TO_B[12]~9_combout\ & ( !\A[13]~input_o\ $ (!\rcas|TO_B[13]~10_combout\ $ 
-- (!\rcas|bitslice_fa:11:faN|Mux1~0_combout\)) ) ) ) # ( \A[12]~input_o\ & ( !\rcas|TO_B[12]~9_combout\ & ( !\A[13]~input_o\ $ (!\rcas|TO_B[13]~10_combout\ $ (!\rcas|bitslice_fa:11:faN|Mux1~0_combout\)) ) ) ) # ( !\A[12]~input_o\ & ( 
-- !\rcas|TO_B[12]~9_combout\ & ( !\A[13]~input_o\ $ (!\rcas|TO_B[13]~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010101001010101101010100101010110101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[13]~input_o\,
	datac => \rcas|ALT_INV_TO_B[13]~10_combout\,
	datad => \rcas|bitslice_fa:11:faN|ALT_INV_Mux1~0_combout\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \rcas|ALT_INV_TO_B[12]~9_combout\,
	combout => \rcas|bitslice_fa:13:faN|Mux0~0_combout\);

-- Location: IOIBUF_X2_Y0_N92
\A[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(14),
	o => \A[14]~input_o\);

-- Location: IOIBUF_X4_Y0_N18
\B[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(14),
	o => \B[14]~input_o\);

-- Location: MLABCELL_X6_Y1_N18
\rcas|bitslice_fa:14:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:14:faN|Mux0~0_combout\ = ( \B[14]~input_o\ & ( !\A[14]~input_o\ $ (\SUB~input_o\) ) ) # ( !\B[14]~input_o\ & ( !\A[14]~input_o\ $ (!\SUB~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100110000111100001100111100001111001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[14]~input_o\,
	datac => \ALT_INV_SUB~input_o\,
	datae => \ALT_INV_B[14]~input_o\,
	combout => \rcas|bitslice_fa:14:faN|Mux0~0_combout\);

-- Location: MLABCELL_X6_Y1_N24
\rcas|bitslice_fa:14:faN|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:14:faN|Mux0~1_combout\ = ( \rcas|bitslice_fa:11:faN|Mux1~0_combout\ & ( \rcas|TO_B[12]~9_combout\ & ( !\rcas|bitslice_fa:14:faN|Mux0~0_combout\ $ (((!\rcas|TO_B[13]~10_combout\ & ((!\A[13]~input_o\) # (!\A[12]~input_o\))) # 
-- (\rcas|TO_B[13]~10_combout\ & (!\A[13]~input_o\ & !\A[12]~input_o\)))) ) ) ) # ( !\rcas|bitslice_fa:11:faN|Mux1~0_combout\ & ( \rcas|TO_B[12]~9_combout\ & ( !\rcas|bitslice_fa:14:faN|Mux0~0_combout\ $ (((!\rcas|TO_B[13]~10_combout\ & !\A[13]~input_o\))) ) 
-- ) ) # ( \rcas|bitslice_fa:11:faN|Mux1~0_combout\ & ( !\rcas|TO_B[12]~9_combout\ & ( !\rcas|bitslice_fa:14:faN|Mux0~0_combout\ $ (((!\rcas|TO_B[13]~10_combout\) # (!\A[13]~input_o\))) ) ) ) # ( !\rcas|bitslice_fa:11:faN|Mux1~0_combout\ & ( 
-- !\rcas|TO_B[12]~9_combout\ & ( !\rcas|bitslice_fa:14:faN|Mux0~0_combout\ $ (((!\rcas|TO_B[13]~10_combout\ & ((!\A[13]~input_o\) # (!\A[12]~input_o\))) # (\rcas|TO_B[13]~10_combout\ & (!\A[13]~input_o\ & !\A[12]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001101010010101100101011001101010011010100101011001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|bitslice_fa:14:faN|ALT_INV_Mux0~0_combout\,
	datab => \rcas|ALT_INV_TO_B[13]~10_combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datad => \ALT_INV_A[12]~input_o\,
	datae => \rcas|bitslice_fa:11:faN|ALT_INV_Mux1~0_combout\,
	dataf => \rcas|ALT_INV_TO_B[12]~9_combout\,
	combout => \rcas|bitslice_fa:14:faN|Mux0~1_combout\);

-- Location: IOIBUF_X4_Y0_N52
\A[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(15),
	o => \A[15]~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\rcas|bitslice_fa:13:faN|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:13:faN|Mux1~0_combout\ = ( \A[12]~input_o\ & ( \rcas|TO_B[12]~9_combout\ & ( (\A[13]~input_o\) # (\rcas|TO_B[13]~10_combout\) ) ) ) # ( !\A[12]~input_o\ & ( \rcas|TO_B[12]~9_combout\ & ( (!\rcas|bitslice_fa:11:faN|Mux1~0_combout\ & 
-- ((\A[13]~input_o\) # (\rcas|TO_B[13]~10_combout\))) # (\rcas|bitslice_fa:11:faN|Mux1~0_combout\ & (\rcas|TO_B[13]~10_combout\ & \A[13]~input_o\)) ) ) ) # ( \A[12]~input_o\ & ( !\rcas|TO_B[12]~9_combout\ & ( (!\rcas|bitslice_fa:11:faN|Mux1~0_combout\ & 
-- ((\A[13]~input_o\) # (\rcas|TO_B[13]~10_combout\))) # (\rcas|bitslice_fa:11:faN|Mux1~0_combout\ & (\rcas|TO_B[13]~10_combout\ & \A[13]~input_o\)) ) ) ) # ( !\A[12]~input_o\ & ( !\rcas|TO_B[12]~9_combout\ & ( (\rcas|TO_B[13]~10_combout\ & \A[13]~input_o\) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011001010110010101100101011001010110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \rcas|bitslice_fa:11:faN|ALT_INV_Mux1~0_combout\,
	datab => \rcas|ALT_INV_TO_B[13]~10_combout\,
	datac => \ALT_INV_A[13]~input_o\,
	datae => \ALT_INV_A[12]~input_o\,
	dataf => \rcas|ALT_INV_TO_B[12]~9_combout\,
	combout => \rcas|bitslice_fa:13:faN|Mux1~0_combout\);

-- Location: IOIBUF_X4_Y0_N1
\B[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(15),
	o => \B[15]~input_o\);

-- Location: MLABCELL_X6_Y1_N6
\rcas|bitslice_fa:15:faN|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|bitslice_fa:15:faN|Mux0~0_combout\ = ( \SUB~input_o\ & ( \A[14]~input_o\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (((\B[14]~input_o\ & !\rcas|bitslice_fa:13:faN|Mux1~0_combout\)))) ) ) ) # ( !\SUB~input_o\ & ( \A[14]~input_o\ & ( !\A[15]~input_o\ 
-- $ (!\B[15]~input_o\ $ (((\rcas|bitslice_fa:13:faN|Mux1~0_combout\) # (\B[14]~input_o\)))) ) ) ) # ( \SUB~input_o\ & ( !\A[14]~input_o\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (((!\rcas|bitslice_fa:13:faN|Mux1~0_combout\) # (\B[14]~input_o\)))) ) ) ) # 
-- ( !\SUB~input_o\ & ( !\A[14]~input_o\ & ( !\A[15]~input_o\ $ (!\B[15]~input_o\ $ (((\B[14]~input_o\ & \rcas|bitslice_fa:13:faN|Mux1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010101001101001100101100101101010100101010110010110011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \rcas|bitslice_fa:13:faN|ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_SUB~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \rcas|bitslice_fa:15:faN|Mux0~0_combout\);

-- Location: MLABCELL_X6_Y1_N12
\rcas|OV~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \rcas|OV~0_combout\ = ( \SUB~input_o\ & ( \A[14]~input_o\ & ( (!\A[15]~input_o\ & (\B[15]~input_o\ & ((!\B[14]~input_o\) # (\rcas|bitslice_fa:13:faN|Mux1~0_combout\)))) # (\A[15]~input_o\ & (\B[14]~input_o\ & (!\rcas|bitslice_fa:13:faN|Mux1~0_combout\ & 
-- !\B[15]~input_o\))) ) ) ) # ( !\SUB~input_o\ & ( \A[14]~input_o\ & ( (!\A[15]~input_o\ & (!\B[15]~input_o\ & ((\rcas|bitslice_fa:13:faN|Mux1~0_combout\) # (\B[14]~input_o\)))) # (\A[15]~input_o\ & (!\B[14]~input_o\ & 
-- (!\rcas|bitslice_fa:13:faN|Mux1~0_combout\ & \B[15]~input_o\))) ) ) ) # ( \SUB~input_o\ & ( !\A[14]~input_o\ & ( (!\A[15]~input_o\ & (!\B[14]~input_o\ & (\rcas|bitslice_fa:13:faN|Mux1~0_combout\ & \B[15]~input_o\))) # (\A[15]~input_o\ & (!\B[15]~input_o\ 
-- & ((!\rcas|bitslice_fa:13:faN|Mux1~0_combout\) # (\B[14]~input_o\)))) ) ) ) # ( !\SUB~input_o\ & ( !\A[14]~input_o\ & ( (!\A[15]~input_o\ & (\B[14]~input_o\ & (\rcas|bitslice_fa:13:faN|Mux1~0_combout\ & !\B[15]~input_o\))) # (\A[15]~input_o\ & 
-- (\B[15]~input_o\ & ((!\B[14]~input_o\) # (!\rcas|bitslice_fa:13:faN|Mux1~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001010100010100010000100000101010010000000001000010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[15]~input_o\,
	datab => \ALT_INV_B[14]~input_o\,
	datac => \rcas|bitslice_fa:13:faN|ALT_INV_Mux1~0_combout\,
	datad => \ALT_INV_B[15]~input_o\,
	datae => \ALT_INV_SUB~input_o\,
	dataf => \ALT_INV_A[14]~input_o\,
	combout => \rcas|OV~0_combout\);

-- Location: LABCELL_X29_Y16_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


