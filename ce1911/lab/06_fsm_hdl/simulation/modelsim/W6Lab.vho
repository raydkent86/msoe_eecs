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

-- DATE "04/18/2022 13:28:16"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	stoplight_advanced_fsm_de10 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(4 DOWNTO 0);
	LEDR : OUT std_logic_vector(5 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0);
	HEX3 : OUT std_logic_vector(7 DOWNTO 0)
	);
END stoplight_advanced_fsm_de10;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF stoplight_advanced_fsm_de10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CK|clk_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CK|cnt[0]~26_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \CK|cnt[0]~27\ : std_logic;
SIGNAL \CK|cnt[1]~28_combout\ : std_logic;
SIGNAL \CK|cnt[1]~29\ : std_logic;
SIGNAL \CK|cnt[2]~30_combout\ : std_logic;
SIGNAL \CK|cnt[2]~31\ : std_logic;
SIGNAL \CK|cnt[3]~32_combout\ : std_logic;
SIGNAL \CK|cnt[3]~33\ : std_logic;
SIGNAL \CK|cnt[4]~34_combout\ : std_logic;
SIGNAL \CK|cnt[4]~35\ : std_logic;
SIGNAL \CK|cnt[5]~36_combout\ : std_logic;
SIGNAL \CK|cnt[5]~37\ : std_logic;
SIGNAL \CK|cnt[6]~38_combout\ : std_logic;
SIGNAL \CK|cnt[6]~39\ : std_logic;
SIGNAL \CK|cnt[7]~40_combout\ : std_logic;
SIGNAL \CK|cnt[7]~41\ : std_logic;
SIGNAL \CK|cnt[8]~42_combout\ : std_logic;
SIGNAL \CK|cnt[8]~43\ : std_logic;
SIGNAL \CK|cnt[9]~44_combout\ : std_logic;
SIGNAL \CK|cnt[9]~45\ : std_logic;
SIGNAL \CK|cnt[10]~46_combout\ : std_logic;
SIGNAL \CK|cnt[10]~47\ : std_logic;
SIGNAL \CK|cnt[11]~48_combout\ : std_logic;
SIGNAL \CK|cnt[11]~49\ : std_logic;
SIGNAL \CK|cnt[12]~50_combout\ : std_logic;
SIGNAL \CK|cnt[12]~51\ : std_logic;
SIGNAL \CK|cnt[13]~52_combout\ : std_logic;
SIGNAL \CK|cnt[13]~53\ : std_logic;
SIGNAL \CK|cnt[14]~54_combout\ : std_logic;
SIGNAL \CK|cnt[14]~55\ : std_logic;
SIGNAL \CK|cnt[15]~56_combout\ : std_logic;
SIGNAL \CK|cnt[15]~57\ : std_logic;
SIGNAL \CK|cnt[16]~58_combout\ : std_logic;
SIGNAL \CK|cnt[16]~59\ : std_logic;
SIGNAL \CK|cnt[17]~60_combout\ : std_logic;
SIGNAL \CK|cnt[17]~61\ : std_logic;
SIGNAL \CK|cnt[18]~62_combout\ : std_logic;
SIGNAL \CK|cnt[18]~63\ : std_logic;
SIGNAL \CK|cnt[19]~64_combout\ : std_logic;
SIGNAL \CK|cnt[19]~65\ : std_logic;
SIGNAL \CK|cnt[20]~66_combout\ : std_logic;
SIGNAL \CK|cnt[20]~67\ : std_logic;
SIGNAL \CK|cnt[21]~68_combout\ : std_logic;
SIGNAL \CK|cnt[21]~69\ : std_logic;
SIGNAL \CK|cnt[22]~70_combout\ : std_logic;
SIGNAL \CK|cnt[22]~71\ : std_logic;
SIGNAL \CK|cnt[23]~72_combout\ : std_logic;
SIGNAL \CK|cnt[23]~73\ : std_logic;
SIGNAL \CK|cnt[24]~74_combout\ : std_logic;
SIGNAL \CK|cnt[24]~75\ : std_logic;
SIGNAL \CK|cnt[25]~76_combout\ : std_logic;
SIGNAL \CK|clk_sig~0_combout\ : std_logic;
SIGNAL \CK|clk_sig~feeder_combout\ : std_logic;
SIGNAL \CK|clk_sig~q\ : std_logic;
SIGNAL \CK|clk_sig~clkctrl_outclk\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \DUT|state_next.GR~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \DUT|WideOr5~3_combout\ : std_logic;
SIGNAL \DUT|WideOr5~0_combout\ : std_logic;
SIGNAL \DUT|state_next.MAINT~0_combout\ : std_logic;
SIGNAL \DUT|state.MAINT~q\ : std_logic;
SIGNAL \DUT|state.FAIL~q\ : std_logic;
SIGNAL \DUT|WideOr5~1_combout\ : std_logic;
SIGNAL \DUT|WideOr5~2_combout\ : std_logic;
SIGNAL \DUT|COUNT~2_combout\ : std_logic;
SIGNAL \DUT|WideOr5~4_combout\ : std_logic;
SIGNAL \DUT|COUNT~3_combout\ : std_logic;
SIGNAL \DUT|COUNT~5_combout\ : std_logic;
SIGNAL \DUT|Add0~0_combout\ : std_logic;
SIGNAL \DUT|COUNT~4_combout\ : std_logic;
SIGNAL \DUT|process_0~0_combout\ : std_logic;
SIGNAL \DUT|process_0~1_combout\ : std_logic;
SIGNAL \DUT|Equal1~0_combout\ : std_logic;
SIGNAL \DUT|state_next.YR~3_combout\ : std_logic;
SIGNAL \DUT|state_next.YR~2_combout\ : std_logic;
SIGNAL \DUT|state.YR~q\ : std_logic;
SIGNAL \DUT|DIR~0_combout\ : std_logic;
SIGNAL \DUT|DIR~1_combout\ : std_logic;
SIGNAL \DUT|DIR~q\ : std_logic;
SIGNAL \DUT|state_next.RG~0_combout\ : std_logic;
SIGNAL \DUT|process_0~2_combout\ : std_logic;
SIGNAL \DUT|process_0~3_combout\ : std_logic;
SIGNAL \DUT|state_next.RG~1_combout\ : std_logic;
SIGNAL \DUT|state.RG~q\ : std_logic;
SIGNAL \DUT|state_next.RY~3_combout\ : std_logic;
SIGNAL \DUT|state_next.RY~2_combout\ : std_logic;
SIGNAL \DUT|state.RY~q\ : std_logic;
SIGNAL \DUT|state_next.RR~0_combout\ : std_logic;
SIGNAL \DUT|WideOr10~0_combout\ : std_logic;
SIGNAL \DUT|state_next.RR~1_combout\ : std_logic;
SIGNAL \DUT|state.RR~q\ : std_logic;
SIGNAL \DUT|state_next.GR~1_combout\ : std_logic;
SIGNAL \DUT|state_next.GR~2_combout\ : std_logic;
SIGNAL \DUT|state.GR~q\ : std_logic;
SIGNAL \DUT|Selector6~0_combout\ : std_logic;
SIGNAL \DUT|Selector5~0_combout\ : std_logic;
SIGNAL \DUT|SSEGB0_CODE[0]~0_combout\ : std_logic;
SIGNAL \DUT|SSEGB1_CODE[5]~0_combout\ : std_logic;
SIGNAL \DUT|WideOr16~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_B0|Mux6~0_combout\ : std_logic;
SIGNAL \DUT|WideOr16~1_combout\ : std_logic;
SIGNAL \DUT|DECODE_B0|Mux5~2_combout\ : std_logic;
SIGNAL \DUT|SSEGB0_CODE~1_combout\ : std_logic;
SIGNAL \DUT|DECODE_B0|Mux4~2_combout\ : std_logic;
SIGNAL \DUT|DECODE_B0|Mux2~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_B0|Mux1~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_B1|Mux3~2_combout\ : std_logic;
SIGNAL \DUT|WideOr13~combout\ : std_logic;
SIGNAL \DUT|DECODE_B1|Mux5~2_combout\ : std_logic;
SIGNAL \DUT|DECODE_B1|Mux4~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_B1|Mux3~3_combout\ : std_logic;
SIGNAL \DUT|DECODE_B1|Mux1~4_combout\ : std_logic;
SIGNAL \DUT|SSEGA0_CODE[0]~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A0|Mux6~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A0|Mux4~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A0|Mux4~1_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|Mux7~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|Mux6~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|Mux5~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|Mux4~0_combout\ : std_logic;
SIGNAL \DUT|WideOr8~combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|Mux3~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|Mux2~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|Mux1~0_combout\ : std_logic;
SIGNAL \CK|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \DUT|COUNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DUT|DECODE_B1|ALT_INV_Mux1~4_combout\ : std_logic;
SIGNAL \DUT|DECODE_B1|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \DUT|DECODE_B0|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \DUT|DECODE_A0|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \DUT|DECODE_B0|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_SSEGB0_CODE~1_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CK|clk_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK|clk_sig~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\DUT|DECODE_B1|ALT_INV_Mux1~4_combout\ <= NOT \DUT|DECODE_B1|Mux1~4_combout\;
\DUT|DECODE_B1|ALT_INV_Mux5~2_combout\ <= NOT \DUT|DECODE_B1|Mux5~2_combout\;
\DUT|DECODE_B0|ALT_INV_Mux4~2_combout\ <= NOT \DUT|DECODE_B0|Mux4~2_combout\;
\DUT|DECODE_A1|ALT_INV_Mux1~0_combout\ <= NOT \DUT|DECODE_A1|Mux1~0_combout\;
\DUT|DECODE_A1|ALT_INV_Mux5~0_combout\ <= NOT \DUT|DECODE_A1|Mux5~0_combout\;
\DUT|DECODE_A1|ALT_INV_Mux6~0_combout\ <= NOT \DUT|DECODE_A1|Mux6~0_combout\;
\DUT|DECODE_A1|ALT_INV_Mux7~0_combout\ <= NOT \DUT|DECODE_A1|Mux7~0_combout\;
\DUT|DECODE_A0|ALT_INV_Mux4~1_combout\ <= NOT \DUT|DECODE_A0|Mux4~1_combout\;
\DUT|DECODE_B0|ALT_INV_Mux2~0_combout\ <= NOT \DUT|DECODE_B0|Mux2~0_combout\;
\DUT|ALT_INV_SSEGB0_CODE~1_combout\ <= NOT \DUT|SSEGB0_CODE~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|state.GR~q\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|state.YR~q\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Selector6~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|state.RG~q\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|state.RY~q\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Selector5~0_combout\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEGB0_CODE[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B0|Mux5~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B0|ALT_INV_Mux4~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B0|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B1|Mux3~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|ALT_INV_SSEGB0_CODE~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B1|ALT_INV_Mux5~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B1|Mux3~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|WideOr16~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_B1|ALT_INV_Mux1~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEGA0_CODE[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A0|ALT_INV_Mux4~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEGA0_CODE[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A1|ALT_INV_Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A1|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A1|ALT_INV_Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|DECODE_A1|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\CLOCK_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G19
\CLOCK_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X45_Y52_N6
\CK|cnt[0]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[0]~26_combout\ = !\CK|cnt\(0)
-- \CK|cnt[0]~27\ = CARRY(!\CK|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(0),
	combout => \CK|cnt[0]~26_combout\,
	cout => \CK|cnt[0]~27\);

-- Location: LCCOMB_X45_Y52_N4
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: FF_X45_Y52_N7
\CK|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[0]~26_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(0));

-- Location: LCCOMB_X45_Y52_N8
\CK|cnt[1]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[1]~28_combout\ = (\CK|cnt\(1) & (\CK|cnt[0]~27\ $ (GND))) # (!\CK|cnt\(1) & (!\CK|cnt[0]~27\ & VCC))
-- \CK|cnt[1]~29\ = CARRY((\CK|cnt\(1) & !\CK|cnt[0]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(1),
	datad => VCC,
	cin => \CK|cnt[0]~27\,
	combout => \CK|cnt[1]~28_combout\,
	cout => \CK|cnt[1]~29\);

-- Location: FF_X45_Y52_N9
\CK|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[1]~28_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(1));

-- Location: LCCOMB_X45_Y52_N10
\CK|cnt[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[2]~30_combout\ = (\CK|cnt\(2) & ((GND) # (!\CK|cnt[1]~29\))) # (!\CK|cnt\(2) & (\CK|cnt[1]~29\ $ (GND)))
-- \CK|cnt[2]~31\ = CARRY((\CK|cnt\(2)) # (!\CK|cnt[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(2),
	datad => VCC,
	cin => \CK|cnt[1]~29\,
	combout => \CK|cnt[2]~30_combout\,
	cout => \CK|cnt[2]~31\);

-- Location: FF_X45_Y52_N11
\CK|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[2]~30_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(2));

-- Location: LCCOMB_X45_Y52_N12
\CK|cnt[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[3]~32_combout\ = (\CK|cnt\(3) & (\CK|cnt[2]~31\ & VCC)) # (!\CK|cnt\(3) & (!\CK|cnt[2]~31\))
-- \CK|cnt[3]~33\ = CARRY((!\CK|cnt\(3) & !\CK|cnt[2]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(3),
	datad => VCC,
	cin => \CK|cnt[2]~31\,
	combout => \CK|cnt[3]~32_combout\,
	cout => \CK|cnt[3]~33\);

-- Location: FF_X45_Y52_N13
\CK|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[3]~32_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(3));

-- Location: LCCOMB_X45_Y52_N14
\CK|cnt[4]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[4]~34_combout\ = (\CK|cnt\(4) & (!\CK|cnt[3]~33\)) # (!\CK|cnt\(4) & ((\CK|cnt[3]~33\) # (GND)))
-- \CK|cnt[4]~35\ = CARRY((!\CK|cnt[3]~33\) # (!\CK|cnt\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(4),
	datad => VCC,
	cin => \CK|cnt[3]~33\,
	combout => \CK|cnt[4]~34_combout\,
	cout => \CK|cnt[4]~35\);

-- Location: FF_X45_Y52_N15
\CK|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[4]~34_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(4));

-- Location: LCCOMB_X45_Y52_N16
\CK|cnt[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[5]~36_combout\ = (\CK|cnt\(5) & (\CK|cnt[4]~35\ & VCC)) # (!\CK|cnt\(5) & (!\CK|cnt[4]~35\))
-- \CK|cnt[5]~37\ = CARRY((!\CK|cnt\(5) & !\CK|cnt[4]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(5),
	datad => VCC,
	cin => \CK|cnt[4]~35\,
	combout => \CK|cnt[5]~36_combout\,
	cout => \CK|cnt[5]~37\);

-- Location: FF_X45_Y52_N17
\CK|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[5]~36_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(5));

-- Location: LCCOMB_X45_Y52_N18
\CK|cnt[6]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[6]~38_combout\ = (\CK|cnt\(6) & ((GND) # (!\CK|cnt[5]~37\))) # (!\CK|cnt\(6) & (\CK|cnt[5]~37\ $ (GND)))
-- \CK|cnt[6]~39\ = CARRY((\CK|cnt\(6)) # (!\CK|cnt[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(6),
	datad => VCC,
	cin => \CK|cnt[5]~37\,
	combout => \CK|cnt[6]~38_combout\,
	cout => \CK|cnt[6]~39\);

-- Location: FF_X45_Y52_N19
\CK|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[6]~38_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(6));

-- Location: LCCOMB_X45_Y52_N20
\CK|cnt[7]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[7]~40_combout\ = (\CK|cnt\(7) & (\CK|cnt[6]~39\ & VCC)) # (!\CK|cnt\(7) & (!\CK|cnt[6]~39\))
-- \CK|cnt[7]~41\ = CARRY((!\CK|cnt\(7) & !\CK|cnt[6]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(7),
	datad => VCC,
	cin => \CK|cnt[6]~39\,
	combout => \CK|cnt[7]~40_combout\,
	cout => \CK|cnt[7]~41\);

-- Location: FF_X45_Y52_N21
\CK|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[7]~40_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(7));

-- Location: LCCOMB_X45_Y52_N22
\CK|cnt[8]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[8]~42_combout\ = (\CK|cnt\(8) & ((GND) # (!\CK|cnt[7]~41\))) # (!\CK|cnt\(8) & (\CK|cnt[7]~41\ $ (GND)))
-- \CK|cnt[8]~43\ = CARRY((\CK|cnt\(8)) # (!\CK|cnt[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(8),
	datad => VCC,
	cin => \CK|cnt[7]~41\,
	combout => \CK|cnt[8]~42_combout\,
	cout => \CK|cnt[8]~43\);

-- Location: FF_X45_Y52_N23
\CK|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[8]~42_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(8));

-- Location: LCCOMB_X45_Y52_N24
\CK|cnt[9]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[9]~44_combout\ = (\CK|cnt\(9) & (\CK|cnt[8]~43\ & VCC)) # (!\CK|cnt\(9) & (!\CK|cnt[8]~43\))
-- \CK|cnt[9]~45\ = CARRY((!\CK|cnt\(9) & !\CK|cnt[8]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(9),
	datad => VCC,
	cin => \CK|cnt[8]~43\,
	combout => \CK|cnt[9]~44_combout\,
	cout => \CK|cnt[9]~45\);

-- Location: FF_X45_Y52_N25
\CK|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[9]~44_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(9));

-- Location: LCCOMB_X45_Y52_N26
\CK|cnt[10]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[10]~46_combout\ = (\CK|cnt\(10) & ((GND) # (!\CK|cnt[9]~45\))) # (!\CK|cnt\(10) & (\CK|cnt[9]~45\ $ (GND)))
-- \CK|cnt[10]~47\ = CARRY((\CK|cnt\(10)) # (!\CK|cnt[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(10),
	datad => VCC,
	cin => \CK|cnt[9]~45\,
	combout => \CK|cnt[10]~46_combout\,
	cout => \CK|cnt[10]~47\);

-- Location: FF_X45_Y52_N27
\CK|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[10]~46_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(10));

-- Location: LCCOMB_X45_Y52_N28
\CK|cnt[11]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[11]~48_combout\ = (\CK|cnt\(11) & (\CK|cnt[10]~47\ $ (GND))) # (!\CK|cnt\(11) & (!\CK|cnt[10]~47\ & VCC))
-- \CK|cnt[11]~49\ = CARRY((\CK|cnt\(11) & !\CK|cnt[10]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(11),
	datad => VCC,
	cin => \CK|cnt[10]~47\,
	combout => \CK|cnt[11]~48_combout\,
	cout => \CK|cnt[11]~49\);

-- Location: FF_X45_Y52_N29
\CK|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[11]~48_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(11));

-- Location: LCCOMB_X45_Y52_N30
\CK|cnt[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[12]~50_combout\ = (\CK|cnt\(12) & ((GND) # (!\CK|cnt[11]~49\))) # (!\CK|cnt\(12) & (\CK|cnt[11]~49\ $ (GND)))
-- \CK|cnt[12]~51\ = CARRY((\CK|cnt\(12)) # (!\CK|cnt[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(12),
	datad => VCC,
	cin => \CK|cnt[11]~49\,
	combout => \CK|cnt[12]~50_combout\,
	cout => \CK|cnt[12]~51\);

-- Location: FF_X45_Y52_N31
\CK|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[12]~50_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(12));

-- Location: LCCOMB_X45_Y51_N0
\CK|cnt[13]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[13]~52_combout\ = (\CK|cnt\(13) & (\CK|cnt[12]~51\ $ (GND))) # (!\CK|cnt\(13) & (!\CK|cnt[12]~51\ & VCC))
-- \CK|cnt[13]~53\ = CARRY((\CK|cnt\(13) & !\CK|cnt[12]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(13),
	datad => VCC,
	cin => \CK|cnt[12]~51\,
	combout => \CK|cnt[13]~52_combout\,
	cout => \CK|cnt[13]~53\);

-- Location: FF_X45_Y51_N1
\CK|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[13]~52_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(13));

-- Location: LCCOMB_X45_Y51_N2
\CK|cnt[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[14]~54_combout\ = (\CK|cnt\(14) & ((GND) # (!\CK|cnt[13]~53\))) # (!\CK|cnt\(14) & (\CK|cnt[13]~53\ $ (GND)))
-- \CK|cnt[14]~55\ = CARRY((\CK|cnt\(14)) # (!\CK|cnt[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(14),
	datad => VCC,
	cin => \CK|cnt[13]~53\,
	combout => \CK|cnt[14]~54_combout\,
	cout => \CK|cnt[14]~55\);

-- Location: FF_X45_Y51_N3
\CK|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[14]~54_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(14));

-- Location: LCCOMB_X45_Y51_N4
\CK|cnt[15]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[15]~56_combout\ = (\CK|cnt\(15) & (\CK|cnt[14]~55\ & VCC)) # (!\CK|cnt\(15) & (!\CK|cnt[14]~55\))
-- \CK|cnt[15]~57\ = CARRY((!\CK|cnt\(15) & !\CK|cnt[14]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(15),
	datad => VCC,
	cin => \CK|cnt[14]~55\,
	combout => \CK|cnt[15]~56_combout\,
	cout => \CK|cnt[15]~57\);

-- Location: FF_X45_Y51_N5
\CK|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[15]~56_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(15));

-- Location: LCCOMB_X45_Y51_N6
\CK|cnt[16]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[16]~58_combout\ = (\CK|cnt\(16) & (!\CK|cnt[15]~57\)) # (!\CK|cnt\(16) & ((\CK|cnt[15]~57\) # (GND)))
-- \CK|cnt[16]~59\ = CARRY((!\CK|cnt[15]~57\) # (!\CK|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(16),
	datad => VCC,
	cin => \CK|cnt[15]~57\,
	combout => \CK|cnt[16]~58_combout\,
	cout => \CK|cnt[16]~59\);

-- Location: FF_X45_Y51_N7
\CK|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[16]~58_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(16));

-- Location: LCCOMB_X45_Y51_N8
\CK|cnt[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[17]~60_combout\ = (\CK|cnt\(17) & (\CK|cnt[16]~59\ $ (GND))) # (!\CK|cnt\(17) & (!\CK|cnt[16]~59\ & VCC))
-- \CK|cnt[17]~61\ = CARRY((\CK|cnt\(17) & !\CK|cnt[16]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(17),
	datad => VCC,
	cin => \CK|cnt[16]~59\,
	combout => \CK|cnt[17]~60_combout\,
	cout => \CK|cnt[17]~61\);

-- Location: FF_X45_Y51_N9
\CK|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[17]~60_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(17));

-- Location: LCCOMB_X45_Y51_N10
\CK|cnt[18]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[18]~62_combout\ = (\CK|cnt\(18) & (!\CK|cnt[17]~61\)) # (!\CK|cnt\(18) & ((\CK|cnt[17]~61\) # (GND)))
-- \CK|cnt[18]~63\ = CARRY((!\CK|cnt[17]~61\) # (!\CK|cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(18),
	datad => VCC,
	cin => \CK|cnt[17]~61\,
	combout => \CK|cnt[18]~62_combout\,
	cout => \CK|cnt[18]~63\);

-- Location: FF_X45_Y51_N11
\CK|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[18]~62_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(18));

-- Location: LCCOMB_X45_Y51_N12
\CK|cnt[19]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[19]~64_combout\ = (\CK|cnt\(19) & (\CK|cnt[18]~63\ $ (GND))) # (!\CK|cnt\(19) & (!\CK|cnt[18]~63\ & VCC))
-- \CK|cnt[19]~65\ = CARRY((\CK|cnt\(19) & !\CK|cnt[18]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(19),
	datad => VCC,
	cin => \CK|cnt[18]~63\,
	combout => \CK|cnt[19]~64_combout\,
	cout => \CK|cnt[19]~65\);

-- Location: FF_X45_Y51_N13
\CK|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[19]~64_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(19));

-- Location: LCCOMB_X45_Y51_N14
\CK|cnt[20]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[20]~66_combout\ = (\CK|cnt\(20) & (!\CK|cnt[19]~65\)) # (!\CK|cnt\(20) & ((\CK|cnt[19]~65\) # (GND)))
-- \CK|cnt[20]~67\ = CARRY((!\CK|cnt[19]~65\) # (!\CK|cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(20),
	datad => VCC,
	cin => \CK|cnt[19]~65\,
	combout => \CK|cnt[20]~66_combout\,
	cout => \CK|cnt[20]~67\);

-- Location: FF_X45_Y51_N15
\CK|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[20]~66_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(20));

-- Location: LCCOMB_X45_Y51_N16
\CK|cnt[21]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[21]~68_combout\ = (\CK|cnt\(21) & (\CK|cnt[20]~67\ $ (GND))) # (!\CK|cnt\(21) & (!\CK|cnt[20]~67\ & VCC))
-- \CK|cnt[21]~69\ = CARRY((\CK|cnt\(21) & !\CK|cnt[20]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(21),
	datad => VCC,
	cin => \CK|cnt[20]~67\,
	combout => \CK|cnt[21]~68_combout\,
	cout => \CK|cnt[21]~69\);

-- Location: FF_X45_Y51_N17
\CK|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[21]~68_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(21));

-- Location: LCCOMB_X45_Y51_N18
\CK|cnt[22]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[22]~70_combout\ = (\CK|cnt\(22) & (!\CK|cnt[21]~69\)) # (!\CK|cnt\(22) & ((\CK|cnt[21]~69\) # (GND)))
-- \CK|cnt[22]~71\ = CARRY((!\CK|cnt[21]~69\) # (!\CK|cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(22),
	datad => VCC,
	cin => \CK|cnt[21]~69\,
	combout => \CK|cnt[22]~70_combout\,
	cout => \CK|cnt[22]~71\);

-- Location: FF_X45_Y51_N19
\CK|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[22]~70_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(22));

-- Location: LCCOMB_X45_Y51_N20
\CK|cnt[23]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[23]~72_combout\ = (\CK|cnt\(23) & (\CK|cnt[22]~71\ & VCC)) # (!\CK|cnt\(23) & (!\CK|cnt[22]~71\))
-- \CK|cnt[23]~73\ = CARRY((!\CK|cnt\(23) & !\CK|cnt[22]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(23),
	datad => VCC,
	cin => \CK|cnt[22]~71\,
	combout => \CK|cnt[23]~72_combout\,
	cout => \CK|cnt[23]~73\);

-- Location: FF_X45_Y51_N21
\CK|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[23]~72_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(23));

-- Location: LCCOMB_X45_Y51_N22
\CK|cnt[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[24]~74_combout\ = (\CK|cnt\(24) & ((GND) # (!\CK|cnt[23]~73\))) # (!\CK|cnt\(24) & (\CK|cnt[23]~73\ $ (GND)))
-- \CK|cnt[24]~75\ = CARRY((\CK|cnt\(24)) # (!\CK|cnt[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(24),
	datad => VCC,
	cin => \CK|cnt[23]~73\,
	combout => \CK|cnt[24]~74_combout\,
	cout => \CK|cnt[24]~75\);

-- Location: FF_X45_Y51_N23
\CK|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[24]~74_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(24));

-- Location: LCCOMB_X45_Y51_N24
\CK|cnt[25]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[25]~76_combout\ = \CK|cnt[24]~75\ $ (!\CK|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CK|cnt\(25),
	cin => \CK|cnt[24]~75\,
	combout => \CK|cnt[25]~76_combout\);

-- Location: FF_X45_Y51_N25
\CK|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|cnt[25]~76_combout\,
	asdata => \~GND~combout\,
	clrn => \SW[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(25));

-- Location: LCCOMB_X45_Y51_N28
\CK|clk_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|clk_sig~0_combout\ = \CK|clk_sig~q\ $ (\CK|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CK|clk_sig~q\,
	datad => \CK|cnt\(25),
	combout => \CK|clk_sig~0_combout\);

-- Location: LCCOMB_X45_Y51_N30
\CK|clk_sig~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|clk_sig~feeder_combout\ = \CK|clk_sig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CK|clk_sig~0_combout\,
	combout => \CK|clk_sig~feeder_combout\);

-- Location: FF_X45_Y51_N31
\CK|clk_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|clk_sig~feeder_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|clk_sig~q\);

-- Location: CLKCTRL_G11
\CK|clk_sig~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CK|clk_sig~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CK|clk_sig~clkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X55_Y50_N8
\DUT|state_next.GR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.GR~0_combout\ = (!\SW[2]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|state_next.GR~0_combout\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LCCOMB_X56_Y50_N6
\DUT|WideOr5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr5~3_combout\ = (\DUT|state.RY~q\ & ((\DUT|state.RG~q\ $ (\DUT|state_next.RG~1_combout\)) # (!\DUT|state_next.RY~2_combout\))) # (!\DUT|state.RY~q\ & ((\DUT|state_next.RY~2_combout\) # (\DUT|state.RG~q\ $ (\DUT|state_next.RG~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RY~q\,
	datab => \DUT|state.RG~q\,
	datac => \DUT|state_next.RG~1_combout\,
	datad => \DUT|state_next.RY~2_combout\,
	combout => \DUT|WideOr5~3_combout\);

-- Location: LCCOMB_X55_Y50_N6
\DUT|WideOr5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr5~0_combout\ = (\DUT|state.YR~q\ $ (\DUT|state_next.YR~2_combout\)) # (!\DUT|state_next.RR~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|state_next.RR~1_combout\,
	datac => \DUT|state.YR~q\,
	datad => \DUT|state_next.YR~2_combout\,
	combout => \DUT|WideOr5~0_combout\);

-- Location: LCCOMB_X55_Y50_N4
\DUT|state_next.MAINT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.MAINT~0_combout\ = (\SW[2]~input_o\ & !\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|state_next.MAINT~0_combout\);

-- Location: FF_X55_Y50_N5
\DUT|state.MAINT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|state_next.MAINT~0_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.MAINT~q\);

-- Location: FF_X55_Y50_N21
\DUT|state.FAIL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[1]~input_o\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.FAIL~q\);

-- Location: LCCOMB_X55_Y50_N20
\DUT|WideOr5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr5~1_combout\ = (\SW[1]~input_o\ & ((\DUT|state.MAINT~q\) # ((!\DUT|state.FAIL~q\)))) # (!\SW[1]~input_o\ & ((\DUT|state.FAIL~q\) # (\DUT|state.MAINT~q\ $ (\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|state.MAINT~q\,
	datac => \DUT|state.FAIL~q\,
	datad => \SW[2]~input_o\,
	combout => \DUT|WideOr5~1_combout\);

-- Location: LCCOMB_X55_Y50_N28
\DUT|WideOr5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr5~2_combout\ = (\DUT|WideOr5~1_combout\) # ((\DUT|state.GR~q\ $ (\DUT|state_next.GR~2_combout\)) # (!\DUT|state.RR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|WideOr5~1_combout\,
	datab => \DUT|state.GR~q\,
	datac => \DUT|state.RR~q\,
	datad => \DUT|state_next.GR~2_combout\,
	combout => \DUT|WideOr5~2_combout\);

-- Location: LCCOMB_X56_Y50_N20
\DUT|COUNT~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|COUNT~2_combout\ = (!\DUT|WideOr5~3_combout\ & (!\DUT|WideOr5~0_combout\ & (!\DUT|COUNT\(0) & !\DUT|WideOr5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|WideOr5~3_combout\,
	datab => \DUT|WideOr5~0_combout\,
	datac => \DUT|COUNT\(0),
	datad => \DUT|WideOr5~2_combout\,
	combout => \DUT|COUNT~2_combout\);

-- Location: FF_X56_Y50_N21
\DUT|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|COUNT~2_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|COUNT\(0));

-- Location: LCCOMB_X56_Y50_N10
\DUT|WideOr5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr5~4_combout\ = (\DUT|WideOr5~2_combout\) # ((\DUT|WideOr5~0_combout\) # (\DUT|WideOr5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|WideOr5~2_combout\,
	datac => \DUT|WideOr5~0_combout\,
	datad => \DUT|WideOr5~3_combout\,
	combout => \DUT|WideOr5~4_combout\);

-- Location: LCCOMB_X56_Y50_N12
\DUT|COUNT~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|COUNT~3_combout\ = (!\DUT|WideOr5~4_combout\ & (\DUT|COUNT\(0) $ (\DUT|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|COUNT\(0),
	datac => \DUT|COUNT\(1),
	datad => \DUT|WideOr5~4_combout\,
	combout => \DUT|COUNT~3_combout\);

-- Location: FF_X56_Y50_N13
\DUT|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|COUNT~3_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|COUNT\(1));

-- Location: LCCOMB_X56_Y50_N30
\DUT|COUNT~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|COUNT~5_combout\ = (!\DUT|WideOr5~4_combout\ & (\DUT|COUNT\(2) $ (((\DUT|COUNT\(0) & \DUT|COUNT\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|COUNT\(0),
	datab => \DUT|COUNT\(1),
	datac => \DUT|COUNT\(2),
	datad => \DUT|WideOr5~4_combout\,
	combout => \DUT|COUNT~5_combout\);

-- Location: FF_X56_Y50_N31
\DUT|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|COUNT~5_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|COUNT\(2));

-- Location: LCCOMB_X56_Y50_N14
\DUT|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|Add0~0_combout\ = (\DUT|COUNT\(1) & \DUT|COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|COUNT\(1),
	datad => \DUT|COUNT\(0),
	combout => \DUT|Add0~0_combout\);

-- Location: LCCOMB_X56_Y50_N26
\DUT|COUNT~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|COUNT~4_combout\ = (!\DUT|WideOr5~4_combout\ & (\DUT|COUNT\(3) $ (((\DUT|Add0~0_combout\ & \DUT|COUNT\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Add0~0_combout\,
	datab => \DUT|COUNT\(2),
	datac => \DUT|COUNT\(3),
	datad => \DUT|WideOr5~4_combout\,
	combout => \DUT|COUNT~4_combout\);

-- Location: FF_X56_Y50_N27
\DUT|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|COUNT~4_combout\,
	ena => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|COUNT\(3));

-- Location: LCCOMB_X56_Y50_N16
\DUT|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|process_0~0_combout\ = (!\SW[4]~input_o\ & ((\SW[3]~input_o\) # ((!\DUT|COUNT\(3) & \DUT|COUNT\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[4]~input_o\,
	datac => \DUT|COUNT\(3),
	datad => \DUT|COUNT\(1),
	combout => \DUT|process_0~0_combout\);

-- Location: LCCOMB_X56_Y50_N22
\DUT|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|process_0~1_combout\ = (\DUT|process_0~0_combout\ & ((\SW[3]~input_o\) # ((\DUT|COUNT\(0) & \DUT|COUNT\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|COUNT\(0),
	datac => \DUT|COUNT\(2),
	datad => \DUT|process_0~0_combout\,
	combout => \DUT|process_0~1_combout\);

-- Location: LCCOMB_X56_Y50_N24
\DUT|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|Equal1~0_combout\ = (!\DUT|COUNT\(2) & (\DUT|COUNT\(0) & (!\DUT|COUNT\(3) & \DUT|COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|COUNT\(2),
	datab => \DUT|COUNT\(0),
	datac => \DUT|COUNT\(3),
	datad => \DUT|COUNT\(1),
	combout => \DUT|Equal1~0_combout\);

-- Location: LCCOMB_X55_Y50_N24
\DUT|state_next.YR~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.YR~3_combout\ = (!\SW[2]~input_o\ & (\DUT|state.YR~q\ & (!\SW[1]~input_o\ & !\DUT|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|state.YR~q\,
	datac => \SW[1]~input_o\,
	datad => \DUT|Equal1~0_combout\,
	combout => \DUT|state_next.YR~3_combout\);

-- Location: LCCOMB_X55_Y50_N16
\DUT|state_next.YR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.YR~2_combout\ = (\DUT|state_next.YR~3_combout\) # ((\DUT|state_next.GR~0_combout\ & (\DUT|process_0~1_combout\ & \DUT|state.GR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state_next.GR~0_combout\,
	datab => \DUT|process_0~1_combout\,
	datac => \DUT|state.GR~q\,
	datad => \DUT|state_next.YR~3_combout\,
	combout => \DUT|state_next.YR~2_combout\);

-- Location: FF_X55_Y50_N19
\DUT|state.YR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \DUT|state_next.YR~2_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.YR~q\);

-- Location: LCCOMB_X56_Y50_N28
\DUT|DIR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DIR~0_combout\ = (\SW[0]~input_o\ & ((\DUT|WideOr5~2_combout\) # ((\DUT|WideOr5~0_combout\) # (\DUT|WideOr5~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|WideOr5~2_combout\,
	datac => \DUT|WideOr5~0_combout\,
	datad => \DUT|WideOr5~3_combout\,
	combout => \DUT|DIR~0_combout\);

-- Location: LCCOMB_X56_Y50_N4
\DUT|DIR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DIR~1_combout\ = (\DUT|DIR~0_combout\ & ((\DUT|state.RY~q\) # ((!\DUT|state.YR~q\ & \DUT|DIR~q\)))) # (!\DUT|DIR~0_combout\ & (((\DUT|DIR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RY~q\,
	datab => \DUT|state.YR~q\,
	datac => \DUT|DIR~q\,
	datad => \DUT|DIR~0_combout\,
	combout => \DUT|DIR~1_combout\);

-- Location: FF_X56_Y50_N5
\DUT|DIR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|DIR~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|DIR~q\);

-- Location: LCCOMB_X56_Y50_N18
\DUT|state_next.RG~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.RG~0_combout\ = (\DUT|state_next.GR~0_combout\ & (!\SW[4]~input_o\ & (!\DUT|DIR~q\ & !\DUT|state.RR~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state_next.GR~0_combout\,
	datab => \SW[4]~input_o\,
	datac => \DUT|DIR~q\,
	datad => \DUT|state.RR~q\,
	combout => \DUT|state_next.RG~0_combout\);

-- Location: LCCOMB_X56_Y50_N0
\DUT|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|process_0~2_combout\ = (\DUT|COUNT\(1) & (\DUT|COUNT\(0) & (\DUT|COUNT\(2) & !\DUT|COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|COUNT\(1),
	datab => \DUT|COUNT\(0),
	datac => \DUT|COUNT\(2),
	datad => \DUT|COUNT\(3),
	combout => \DUT|process_0~2_combout\);

-- Location: LCCOMB_X56_Y50_N2
\DUT|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|process_0~3_combout\ = (!\SW[3]~input_o\ & ((\SW[4]~input_o\) # (\DUT|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[4]~input_o\,
	datad => \DUT|process_0~2_combout\,
	combout => \DUT|process_0~3_combout\);

-- Location: LCCOMB_X56_Y50_N8
\DUT|state_next.RG~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.RG~1_combout\ = (\DUT|state_next.RG~0_combout\) # ((\DUT|state_next.GR~0_combout\ & (\DUT|state.RG~q\ & !\DUT|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state_next.GR~0_combout\,
	datab => \DUT|state.RG~q\,
	datac => \DUT|state_next.RG~0_combout\,
	datad => \DUT|process_0~3_combout\,
	combout => \DUT|state_next.RG~1_combout\);

-- Location: FF_X56_Y50_N15
\DUT|state.RG\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \DUT|state_next.RG~1_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.RG~q\);

-- Location: LCCOMB_X55_Y50_N26
\DUT|state_next.RY~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.RY~3_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\DUT|state.RY~q\ & !\DUT|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DUT|state.RY~q\,
	datad => \DUT|Equal1~0_combout\,
	combout => \DUT|state_next.RY~3_combout\);

-- Location: LCCOMB_X55_Y50_N14
\DUT|state_next.RY~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.RY~2_combout\ = (\DUT|state_next.RY~3_combout\) # ((\DUT|state_next.GR~0_combout\ & (\DUT|state.RG~q\ & \DUT|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state_next.GR~0_combout\,
	datab => \DUT|state.RG~q\,
	datac => \DUT|state_next.RY~3_combout\,
	datad => \DUT|process_0~3_combout\,
	combout => \DUT|state_next.RY~2_combout\);

-- Location: FF_X55_Y50_N31
\DUT|state.RY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \DUT|state_next.RY~2_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.RY~q\);

-- Location: LCCOMB_X55_Y50_N10
\DUT|state_next.RR~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.RR~0_combout\ = (\DUT|state.RY~q\) # (\DUT|state.YR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|state.RY~q\,
	datad => \DUT|state.YR~q\,
	combout => \DUT|state_next.RR~0_combout\);

-- Location: LCCOMB_X55_Y50_N22
\DUT|WideOr10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr10~0_combout\ = (!\DUT|state.MAINT~q\ & !\DUT|state.FAIL~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DUT|state.MAINT~q\,
	datad => \DUT|state.FAIL~q\,
	combout => \DUT|WideOr10~0_combout\);

-- Location: LCCOMB_X55_Y50_N0
\DUT|state_next.RR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.RR~1_combout\ = ((\DUT|WideOr10~0_combout\ & ((!\DUT|Equal1~0_combout\) # (!\DUT|state_next.RR~0_combout\)))) # (!\DUT|state_next.GR~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state_next.RR~0_combout\,
	datab => \DUT|state_next.GR~0_combout\,
	datac => \DUT|WideOr10~0_combout\,
	datad => \DUT|Equal1~0_combout\,
	combout => \DUT|state_next.RR~1_combout\);

-- Location: FF_X55_Y50_N9
\DUT|state.RR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \DUT|state_next.RR~1_combout\,
	clrn => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.RR~q\);

-- Location: LCCOMB_X55_Y50_N2
\DUT|state_next.GR~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.GR~1_combout\ = (\DUT|state_next.GR~0_combout\ & (!\DUT|state.RR~q\ & ((\SW[4]~input_o\) # (\DUT|DIR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \DUT|state_next.GR~0_combout\,
	datac => \DUT|state.RR~q\,
	datad => \DUT|DIR~q\,
	combout => \DUT|state_next.GR~1_combout\);

-- Location: LCCOMB_X55_Y50_N12
\DUT|state_next.GR~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|state_next.GR~2_combout\ = (\DUT|state_next.GR~1_combout\) # ((\DUT|state_next.GR~0_combout\ & (\DUT|state.GR~q\ & !\DUT|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state_next.GR~0_combout\,
	datab => \DUT|state_next.GR~1_combout\,
	datac => \DUT|state.GR~q\,
	datad => \DUT|process_0~1_combout\,
	combout => \DUT|state_next.GR~2_combout\);

-- Location: FF_X55_Y50_N13
\DUT|state.GR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|state_next.GR~2_combout\,
	clrn => \SW[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|state.GR~q\);

-- Location: LCCOMB_X55_Y50_N18
\DUT|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|Selector6~0_combout\ = (\DUT|state.FAIL~q\ & (!\DUT|COUNT\(0))) # (!\DUT|state.FAIL~q\ & (((!\DUT|state.YR~q\ & !\DUT|state.GR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|COUNT\(0),
	datab => \DUT|state.FAIL~q\,
	datac => \DUT|state.YR~q\,
	datad => \DUT|state.GR~q\,
	combout => \DUT|Selector6~0_combout\);

-- Location: LCCOMB_X55_Y50_N30
\DUT|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|Selector5~0_combout\ = (\DUT|state.FAIL~q\ & (!\DUT|COUNT\(0))) # (!\DUT|state.FAIL~q\ & (((!\DUT|state.RG~q\ & !\DUT|state.RY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|COUNT\(0),
	datab => \DUT|state.RG~q\,
	datac => \DUT|state.RY~q\,
	datad => \DUT|state.FAIL~q\,
	combout => \DUT|Selector5~0_combout\);

-- Location: LCCOMB_X66_Y50_N8
\DUT|SSEGB0_CODE[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEGB0_CODE[0]~0_combout\ = (!\DUT|state.YR~q\ & ((\SW[3]~input_o\) # (!\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \DUT|state.YR~q\,
	combout => \DUT|SSEGB0_CODE[0]~0_combout\);

-- Location: LCCOMB_X66_Y50_N6
\DUT|SSEGB1_CODE[5]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEGB1_CODE[5]~0_combout\ = (\SW[4]~input_o\ & !\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[4]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \DUT|SSEGB1_CODE[5]~0_combout\);

-- Location: LCCOMB_X66_Y50_N0
\DUT|WideOr16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr16~0_combout\ = (!\DUT|state.YR~q\ & (!\DUT|state.GR~q\ & (!\DUT|state.MAINT~q\ & !\DUT|SSEGB1_CODE[5]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.YR~q\,
	datab => \DUT|state.GR~q\,
	datac => \DUT|state.MAINT~q\,
	datad => \DUT|SSEGB1_CODE[5]~0_combout\,
	combout => \DUT|WideOr16~0_combout\);

-- Location: LCCOMB_X66_Y50_N2
\DUT|DECODE_B0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B0|Mux6~0_combout\ = (!\DUT|SSEGB1_CODE[5]~0_combout\ & ((\DUT|WideOr10~0_combout\ & ((!\DUT|WideOr16~0_combout\))) # (!\DUT|WideOr10~0_combout\ & (!\DUT|state.YR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|SSEGB1_CODE[5]~0_combout\,
	datab => \DUT|state.YR~q\,
	datac => \DUT|WideOr10~0_combout\,
	datad => \DUT|WideOr16~0_combout\,
	combout => \DUT|DECODE_B0|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y50_N4
\DUT|WideOr16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr16~1_combout\ = (!\DUT|state.GR~q\ & (!\DUT|state.YR~q\ & ((\SW[3]~input_o\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|state.GR~q\,
	datad => \DUT|state.YR~q\,
	combout => \DUT|WideOr16~1_combout\);

-- Location: LCCOMB_X66_Y50_N14
\DUT|DECODE_B0|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B0|Mux5~2_combout\ = (!\DUT|state.MAINT~q\ & (\DUT|WideOr16~1_combout\ $ (((!\DUT|SSEGB1_CODE[5]~0_combout\ & !\DUT|state.FAIL~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|SSEGB1_CODE[5]~0_combout\,
	datab => \DUT|state.MAINT~q\,
	datac => \DUT|state.FAIL~q\,
	datad => \DUT|WideOr16~1_combout\,
	combout => \DUT|DECODE_B0|Mux5~2_combout\);

-- Location: LCCOMB_X66_Y50_N30
\DUT|SSEGB0_CODE~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEGB0_CODE~1_combout\ = (\DUT|state.YR~q\ & ((\SW[3]~input_o\) # (!\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \DUT|state.YR~q\,
	combout => \DUT|SSEGB0_CODE~1_combout\);

-- Location: LCCOMB_X66_Y50_N12
\DUT|DECODE_B0|Mux4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B0|Mux4~2_combout\ = (!\DUT|state.MAINT~q\ & ((\DUT|WideOr16~1_combout\) # ((!\DUT|state.FAIL~q\ & \DUT|SSEGB0_CODE~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.FAIL~q\,
	datab => \DUT|SSEGB0_CODE~1_combout\,
	datac => \DUT|state.MAINT~q\,
	datad => \DUT|WideOr16~1_combout\,
	combout => \DUT|DECODE_B0|Mux4~2_combout\);

-- Location: LCCOMB_X66_Y50_N16
\DUT|DECODE_B0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B0|Mux2~0_combout\ = ((\DUT|WideOr16~0_combout\ & ((\DUT|SSEGB1_CODE[5]~0_combout\) # (!\DUT|WideOr10~0_combout\)))) # (!\DUT|SSEGB0_CODE[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|SSEGB0_CODE[0]~0_combout\,
	datab => \DUT|WideOr16~0_combout\,
	datac => \DUT|WideOr10~0_combout\,
	datad => \DUT|SSEGB1_CODE[5]~0_combout\,
	combout => \DUT|DECODE_B0|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y50_N22
\DUT|DECODE_B0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B0|Mux1~0_combout\ = (\DUT|WideOr10~0_combout\ & (\DUT|SSEGB1_CODE[5]~0_combout\ & (\DUT|SSEGB0_CODE[0]~0_combout\ $ (!\DUT|WideOr16~0_combout\)))) # (!\DUT|WideOr10~0_combout\ & (\DUT|SSEGB0_CODE[0]~0_combout\ $ 
-- ((!\DUT|WideOr16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|SSEGB0_CODE[0]~0_combout\,
	datab => \DUT|WideOr16~0_combout\,
	datac => \DUT|WideOr10~0_combout\,
	datad => \DUT|SSEGB1_CODE[5]~0_combout\,
	combout => \DUT|DECODE_B0|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y50_N28
\DUT|DECODE_B1|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B1|Mux3~2_combout\ = (!\DUT|state.GR~q\ & ((\SW[3]~input_o\) # (!\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|state.GR~q\,
	combout => \DUT|DECODE_B1|Mux3~2_combout\);

-- Location: LCCOMB_X67_Y50_N4
\DUT|WideOr13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr13~combout\ = (\DUT|state.RG~q\) # ((\DUT|state.RY~q\) # (!\DUT|state.RR~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|state.RG~q\,
	datac => \DUT|state.RY~q\,
	datad => \DUT|state.RR~q\,
	combout => \DUT|WideOr13~combout\);

-- Location: LCCOMB_X67_Y50_N20
\DUT|DECODE_B1|Mux5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B1|Mux5~2_combout\ = (\SW[4]~input_o\ & (\SW[3]~input_o\ & ((\DUT|state.GR~q\) # (!\DUT|WideOr13~combout\)))) # (!\SW[4]~input_o\ & (((\DUT|state.GR~q\) # (!\DUT|WideOr13~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|WideOr13~combout\,
	datad => \DUT|state.GR~q\,
	combout => \DUT|DECODE_B1|Mux5~2_combout\);

-- Location: LCCOMB_X66_Y50_N18
\DUT|DECODE_B1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B1|Mux4~0_combout\ = (!\DUT|state.GR~q\ & (!\DUT|SSEGB1_CODE[5]~0_combout\ & ((\DUT|WideOr13~combout\) # (!\DUT|state.YR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|WideOr13~combout\,
	datab => \DUT|state.YR~q\,
	datac => \DUT|state.GR~q\,
	datad => \DUT|SSEGB1_CODE[5]~0_combout\,
	combout => \DUT|DECODE_B1|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y50_N26
\DUT|DECODE_B1|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B1|Mux3~3_combout\ = (!\DUT|state.GR~q\ & (!\DUT|WideOr13~combout\ & ((\SW[3]~input_o\) # (!\SW[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|state.GR~q\,
	datad => \DUT|WideOr13~combout\,
	combout => \DUT|DECODE_B1|Mux3~3_combout\);

-- Location: LCCOMB_X66_Y50_N20
\DUT|DECODE_B1|Mux1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_B1|Mux1~4_combout\ = (\DUT|WideOr13~combout\) # ((\DUT|state.YR~q\) # ((!\SW[3]~input_o\ & \SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|WideOr13~combout\,
	datab => \SW[3]~input_o\,
	datac => \SW[4]~input_o\,
	datad => \DUT|state.YR~q\,
	combout => \DUT|DECODE_B1|Mux1~4_combout\);

-- Location: LCCOMB_X67_Y50_N10
\DUT|SSEGA0_CODE[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEGA0_CODE[0]~0_combout\ = (!\DUT|state.FAIL~q\ & (!\DUT|state.MAINT~q\ & (!\DUT|state.RY~q\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.FAIL~q\,
	datab => \DUT|state.MAINT~q\,
	datac => \DUT|state.RY~q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|SSEGA0_CODE[0]~0_combout\);

-- Location: LCCOMB_X67_Y50_N28
\DUT|DECODE_A0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A0|Mux6~0_combout\ = (!\SW[3]~input_o\ & (\DUT|WideOr10~0_combout\ & (\DUT|state.RG~q\ $ (\DUT|state.RY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RG~q\,
	datab => \SW[3]~input_o\,
	datac => \DUT|state.RY~q\,
	datad => \DUT|WideOr10~0_combout\,
	combout => \DUT|DECODE_A0|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y50_N18
\DUT|DECODE_A0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A0|Mux4~0_combout\ = ((!\DUT|state.FAIL~q\ & (!\DUT|state.MAINT~q\ & !\DUT|state.RG~q\))) # (!\DUT|state.RR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.FAIL~q\,
	datab => \DUT|state.MAINT~q\,
	datac => \DUT|state.RR~q\,
	datad => \DUT|state.RG~q\,
	combout => \DUT|DECODE_A0|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y50_N24
\DUT|DECODE_A0|Mux4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A0|Mux4~1_combout\ = (!\SW[3]~input_o\ & ((\DUT|DECODE_A0|Mux4~0_combout\) # ((\DUT|state.YR~q\) # (\DUT|state.GR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|DECODE_A0|Mux4~0_combout\,
	datab => \DUT|state.YR~q\,
	datac => \DUT|state.GR~q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|DECODE_A0|Mux4~1_combout\);

-- Location: LCCOMB_X67_Y50_N0
\DUT|DECODE_A1|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A1|Mux7~0_combout\ = (\DUT|state.RG~q\) # ((\DUT|state.MAINT~q\) # ((\DUT|state.FAIL~q\) # (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RG~q\,
	datab => \DUT|state.MAINT~q\,
	datac => \DUT|state.FAIL~q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|DECODE_A1|Mux7~0_combout\);

-- Location: LCCOMB_X67_Y50_N30
\DUT|DECODE_A1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A1|Mux6~0_combout\ = (!\DUT|state.RG~q\ & (!\SW[3]~input_o\ & ((\DUT|state.MAINT~q\) # (\DUT|state.RY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RG~q\,
	datab => \DUT|state.MAINT~q\,
	datac => \DUT|state.RY~q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|DECODE_A1|Mux6~0_combout\);

-- Location: LCCOMB_X67_Y50_N24
\DUT|DECODE_A1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A1|Mux5~0_combout\ = (!\SW[3]~input_o\ & ((\DUT|state.RG~q\) # ((\DUT|state.MAINT~q\) # (\DUT|state.RY~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RG~q\,
	datab => \DUT|state.MAINT~q\,
	datac => \DUT|state.RY~q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|DECODE_A1|Mux5~0_combout\);

-- Location: LCCOMB_X67_Y50_N2
\DUT|DECODE_A1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A1|Mux4~0_combout\ = (!\SW[3]~input_o\ & (((!\DUT|state.RG~q\ & !\DUT|state.RY~q\)) # (!\DUT|WideOr10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RG~q\,
	datab => \SW[3]~input_o\,
	datac => \DUT|state.RY~q\,
	datad => \DUT|WideOr10~0_combout\,
	combout => \DUT|DECODE_A1|Mux4~0_combout\);

-- Location: LCCOMB_X67_Y50_N12
\DUT|WideOr8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|WideOr8~combout\ = (!\DUT|state.RY~q\ & (!\DUT|state.MAINT~q\ & !\DUT|state.RG~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|state.RY~q\,
	datab => \DUT|state.MAINT~q\,
	datac => \DUT|state.RG~q\,
	combout => \DUT|WideOr8~combout\);

-- Location: LCCOMB_X67_Y50_N22
\DUT|DECODE_A1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A1|Mux3~0_combout\ = (!\DUT|WideOr8~combout\ & (\DUT|WideOr10~0_combout\ & (!\DUT|state.RG~q\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|WideOr8~combout\,
	datab => \DUT|WideOr10~0_combout\,
	datac => \DUT|state.RG~q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|DECODE_A1|Mux3~0_combout\);

-- Location: LCCOMB_X67_Y50_N16
\DUT|DECODE_A1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A1|Mux2~0_combout\ = (\DUT|WideOr8~combout\ & (\DUT|WideOr10~0_combout\ & (!\DUT|state.RG~q\ & !\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|WideOr8~combout\,
	datab => \DUT|WideOr10~0_combout\,
	datac => \DUT|state.RG~q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|DECODE_A1|Mux2~0_combout\);

-- Location: LCCOMB_X67_Y50_N6
\DUT|DECODE_A1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|DECODE_A1|Mux1~0_combout\ = (\DUT|WideOr8~combout\) # ((\SW[3]~input_o\) # (\DUT|WideOr10~0_combout\ $ (\DUT|state.RG~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|WideOr8~combout\,
	datab => \DUT|WideOr10~0_combout\,
	datac => \DUT|state.RG~q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|DECODE_A1|Mux1~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;
END structure;


