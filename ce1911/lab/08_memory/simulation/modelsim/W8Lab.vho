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

-- DATE "05/02/2022 09:35:48"

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

ENTITY 	lab8_part2_de10 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END lab8_part2_de10;

-- Design Ports Information
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
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab8_part2_de10 IS
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CK|clk_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
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
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[7]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[7]~output_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \DUT|SSEG_A_DEC|Mux7~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_A_DEC|Mux6~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_A_DEC|Mux5~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_A_DEC|Mux4~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_A_DEC|Mux3~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_A_DEC|Mux2~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_A_DEC|Mux1~0_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \CK|cnt[0]~26_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
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
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~446_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~447_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~217_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~450_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~451_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~153_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~333_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~452_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~453_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~249_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~185feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~448_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~449_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~185_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~334_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~466_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~467_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~169_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~462_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~463_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~233_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~340_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~468_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~469_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~265_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~464_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~465_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~201_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~341_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~225feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~440_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~441_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~225_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~193feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~438_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~439_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~193_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~442_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~443_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~161_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~335_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~444_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~445_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~257_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~336_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~458_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~459_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~145_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~454_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~455_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~177_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~337_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~460_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~461_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~241_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~456_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~457_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~209_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~338_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~339_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~342_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~484_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~113_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~482_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~121_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~350_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~485_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~137_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~129feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~483_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~129_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~351_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~476_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~49_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~474_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~57_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~343_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~477_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~73_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~475_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~65_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~344_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~479_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~25_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~481_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~41_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~478_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~33_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~480_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~17_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~347_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~348_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~471_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~89_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~472_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~81_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~470_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~97_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~345_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~473_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~105_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~346_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~349_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~352_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~353_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~63_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~71_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~47_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~55_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~301_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~302_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~127feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~127_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~135_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~111_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~119_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~308_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~309_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~31feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~31_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~15_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~305_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~39_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~23_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~306_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~87_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~103_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~79_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~95feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~95_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~303_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~304_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~307_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~310_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~215_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~151_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~291_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~247_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~183feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~183_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~292_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~167_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~231feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~231_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~298_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~263_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~199_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~299_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~191feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~191_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~159_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~293_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~255_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~223feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~223_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~294_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~143_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~175feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~175_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~295_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~239_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~207_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~296_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~297_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~300_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~311_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~110_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~126feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~126_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~287_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~134_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~118feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~118_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~288_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~46_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~62_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~282_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~70_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~54_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~283_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~22_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~14_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~284_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~38_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~30feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~30_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~285_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~286_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~94feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~94_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~102_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~78_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~86feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~86_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~280_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~281_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~289_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~158_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~222feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~222_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~270_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~190_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~254_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~271_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~230feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~230_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~262_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~166_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~198_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~277_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~278_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~174feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~174_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~238_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~142_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~206_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~274_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~275_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~182feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~182_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~150_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~272_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~246_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~214_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~273_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~276_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~279_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~290_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~184feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~184_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~152_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~314_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~248_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~216_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~315_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~144_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~208_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~316_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~240_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~176_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~317_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~318_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~232_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~168_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~200_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~319_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~264_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~320_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~192feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~192_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~256_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~224feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~224_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~160_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~312_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~313_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~321_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~48_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~64_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~324_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~56_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~72_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~325_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~24_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~16_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~326_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~40_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~32_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~327_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~328_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~112_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~128feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~128_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~329_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~136_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~120_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~330_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~96_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~104_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~80_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~88feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~88_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~322_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~323_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~331_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~332_combout\ : std_logic;
SIGNAL \DUT|SSEG_E_DEC|Mux7~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_E_DEC|Mux6~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_E_DEC|Mux5~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_E_DEC|Mux4~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_E_DEC|Mux3~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_E_DEC|Mux2~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_E_DEC|Mux1~0_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~195_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~163_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~377_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~259_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~227feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~227_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~378_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~211_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~243_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~147_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~179_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~379_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~380_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~381_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~219_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~155_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~375_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~251_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~187_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~376_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~171_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~235_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~382_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~267_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~203_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~383_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~384_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~67_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~75_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~51_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~59feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~59_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~385_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~386_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~27_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~43_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~35_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~19_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~389_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~390_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~83_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~99_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~387_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~107_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~91_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~388_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~391_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~131_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~139_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~115_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~123_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~392_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~393_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~394_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~395_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~196feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~196_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~260_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~228_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~164_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~396_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~397_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~180_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~244_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~148_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~212feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~212_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~400_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~401_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~188_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~156_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~398_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~220_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~252_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~399_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~402_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~236_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~268_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~172_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~204_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~403_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~404_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~405_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~36_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~44_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~28_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~20_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~410_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~411_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~60_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~76_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~52_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~68_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~408_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~409_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~412_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~116_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~132feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~132_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~413_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~140_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~124feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~124_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~414_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~100_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~108_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~84_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~92_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~406_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~407_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~415_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~416_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~53_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~61_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~427_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~77_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~69_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~428_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~133feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~133_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~141_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~117_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~125_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~434_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~435_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~85_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~101_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~429_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~109_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~93_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~430_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~29_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~45_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~37_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~21_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~431_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~432_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~433_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~436_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~221_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~157_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~417_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~253_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~189_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~418_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~197feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~197_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~165_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~419_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~261_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~229_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~420_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~213feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~213_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~245_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~149_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~181_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~421_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~422_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~423_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~205_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~269_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~173_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~237_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~424_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~425_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~426_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~437_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~170_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~202_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~361_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~266_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~234_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~362_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~226feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~226_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~162_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~354_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~258_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~194_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~355_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~186_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~154_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~356_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~250_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~218_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~357_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~178_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~242_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~146_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~210_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~358_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~359_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~360_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~363_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~98_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~106_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~90feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~90_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~82_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~364_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~365_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~114_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~130_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~371_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~138_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~122_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~372_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~26_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~18_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~368_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~42_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~34_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~369_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~58feeder_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~58_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~50_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~66_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~366_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~74_q\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~367_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~370_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~373_combout\ : std_logic;
SIGNAL \DUT|MEMORY|mySRAM~374_combout\ : std_logic;
SIGNAL \DUT|SSEG_F_DEC|Mux7~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_F_DEC|Mux6~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_F_DEC|Mux5~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_F_DEC|Mux4~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_F_DEC|Mux3~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_F_DEC|Mux2~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_F_DEC|Mux1~0_combout\ : std_logic;
SIGNAL \CK|cnt\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \DUT|SSEG_F_DEC|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_E_DEC|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \DUT|SSEG_A_DEC|ALT_INV_Mux1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_KEY <= KEY;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CK|clk_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK|clk_sig~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\DUT|SSEG_F_DEC|ALT_INV_Mux1~0_combout\ <= NOT \DUT|SSEG_F_DEC|Mux1~0_combout\;
\DUT|SSEG_E_DEC|ALT_INV_Mux1~0_combout\ <= NOT \DUT|SSEG_E_DEC|Mux1~0_combout\;
\DUT|SSEG_A_DEC|ALT_INV_Mux1~0_combout\ <= NOT \DUT|SSEG_A_DEC|Mux1~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_A_DEC|Mux7~0_combout\,
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
	i => \DUT|SSEG_A_DEC|Mux6~0_combout\,
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
	i => \DUT|SSEG_A_DEC|Mux5~0_combout\,
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
	i => \DUT|SSEG_A_DEC|Mux4~0_combout\,
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
	i => \DUT|SSEG_A_DEC|Mux3~0_combout\,
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
	i => \DUT|SSEG_A_DEC|Mux2~0_combout\,
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
	i => \DUT|SSEG_A_DEC|ALT_INV_Mux1~0_combout\,
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
	i => \SW[4]~input_o\,
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
	i => GND,
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
	i => GND,
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
	i => \SW[4]~input_o\,
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
	i => \SW[4]~input_o\,
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
	i => \SW[4]~input_o\,
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
	i => VCC,
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

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_E_DEC|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_E_DEC|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_E_DEC|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_E_DEC|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_E_DEC|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_E_DEC|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_E_DEC|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_F_DEC|Mux7~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_F_DEC|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_F_DEC|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_F_DEC|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_F_DEC|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_F_DEC|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|SSEG_F_DEC|ALT_INV_Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

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

-- Location: LCCOMB_X59_Y52_N20
\DUT|SSEG_A_DEC|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_A_DEC|Mux7~0_combout\ = (\SW[1]~input_o\ & (!\SW[2]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (((!\SW[3]~input_o\ & \SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|SSEG_A_DEC|Mux7~0_combout\);

-- Location: LCCOMB_X59_Y52_N18
\DUT|SSEG_A_DEC|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_A_DEC|Mux6~0_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\SW[3]~input_o\))) # (!\SW[0]~input_o\ & (\SW[2]~input_o\)))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\ & (\SW[3]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|SSEG_A_DEC|Mux6~0_combout\);

-- Location: LCCOMB_X58_Y52_N8
\DUT|SSEG_A_DEC|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_A_DEC|Mux5~0_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\ & ((\SW[1]~input_o\) # (!\SW[0]~input_o\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|SSEG_A_DEC|Mux5~0_combout\);

-- Location: LCCOMB_X59_Y52_N4
\DUT|SSEG_A_DEC|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_A_DEC|Mux4~0_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|SSEG_A_DEC|Mux4~0_combout\);

-- Location: LCCOMB_X59_Y52_N14
\DUT|SSEG_A_DEC|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_A_DEC|Mux3~0_combout\ = (\SW[1]~input_o\ & (((!\SW[3]~input_o\ & \SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|SSEG_A_DEC|Mux3~0_combout\);

-- Location: LCCOMB_X56_Y51_N12
\DUT|SSEG_A_DEC|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_A_DEC|Mux2~0_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & ((\SW[1]~input_o\) # (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|SSEG_A_DEC|Mux2~0_combout\);

-- Location: LCCOMB_X59_Y52_N24
\DUT|SSEG_A_DEC|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_A_DEC|Mux1~0_combout\ = (\SW[3]~input_o\) # ((\SW[1]~input_o\ & ((!\SW[0]~input_o\) # (!\SW[2]~input_o\))) # (!\SW[1]~input_o\ & (\SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|SSEG_A_DEC|Mux1~0_combout\);

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
-- \CK|cnt[0]~26_combout\ = \CK|cnt\(0) $ (VCC)
-- \CK|cnt[0]~27\ = CARRY(\CK|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK|cnt\(0),
	datad => VCC,
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

-- Location: IOIBUF_X46_Y54_N29
\KEY[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(1));

-- Location: LCCOMB_X45_Y52_N10
\CK|cnt[2]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[2]~30_combout\ = (\CK|cnt\(2) & (!\CK|cnt[1]~29\)) # (!\CK|cnt\(2) & ((\CK|cnt[1]~29\) # (GND)))
-- \CK|cnt[2]~31\ = CARRY((!\CK|cnt[1]~29\) # (!\CK|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
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
	clrn => \KEY[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(2));

-- Location: LCCOMB_X45_Y52_N12
\CK|cnt[3]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[3]~32_combout\ = (\CK|cnt\(3) & (\CK|cnt[2]~31\ $ (GND))) # (!\CK|cnt\(3) & (!\CK|cnt[2]~31\ & VCC))
-- \CK|cnt[3]~33\ = CARRY((\CK|cnt\(3) & !\CK|cnt[2]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(4));

-- Location: LCCOMB_X45_Y52_N16
\CK|cnt[5]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[5]~36_combout\ = (\CK|cnt\(5) & (\CK|cnt[4]~35\ $ (GND))) # (!\CK|cnt\(5) & (!\CK|cnt[4]~35\ & VCC))
-- \CK|cnt[5]~37\ = CARRY((\CK|cnt\(5) & !\CK|cnt[4]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(11));

-- Location: LCCOMB_X45_Y52_N30
\CK|cnt[12]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[12]~50_combout\ = (\CK|cnt\(12) & (!\CK|cnt[11]~49\)) # (!\CK|cnt\(12) & ((\CK|cnt[11]~49\) # (GND)))
-- \CK|cnt[12]~51\ = CARRY((!\CK|cnt[11]~49\) # (!\CK|cnt\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(13));

-- Location: LCCOMB_X45_Y51_N2
\CK|cnt[14]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[14]~54_combout\ = (\CK|cnt\(14) & (!\CK|cnt[13]~53\)) # (!\CK|cnt\(14) & ((\CK|cnt[13]~53\) # (GND)))
-- \CK|cnt[14]~55\ = CARRY((!\CK|cnt[13]~53\) # (!\CK|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(16));

-- Location: LCCOMB_X45_Y51_N8
\CK|cnt[17]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[17]~60_combout\ = (\CK|cnt\(17) & (\CK|cnt[16]~59\ & VCC)) # (!\CK|cnt\(17) & (!\CK|cnt[16]~59\))
-- \CK|cnt[17]~61\ = CARRY((!\CK|cnt\(17) & !\CK|cnt[16]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(23));

-- Location: LCCOMB_X45_Y51_N22
\CK|cnt[24]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|cnt[24]~74_combout\ = (\CK|cnt\(24) & (!\CK|cnt[23]~73\)) # (!\CK|cnt\(24) & ((\CK|cnt[23]~73\) # (GND)))
-- \CK|cnt[24]~75\ = CARRY((!\CK|cnt[23]~73\) # (!\CK|cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
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
	clrn => \KEY[0]~input_o\,
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
	clrn => \KEY[0]~input_o\,
	sload => \CK|cnt\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|cnt\(25));

-- Location: LCCOMB_X45_Y51_N30
\CK|clk_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|clk_sig~0_combout\ = \CK|clk_sig~q\ $ (\CK|cnt\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CK|clk_sig~q\,
	datad => \CK|cnt\(25),
	combout => \CK|clk_sig~0_combout\);

-- Location: LCCOMB_X45_Y51_N28
\CK|clk_sig~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|clk_sig~feeder_combout\ = \CK|clk_sig~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CK|clk_sig~0_combout\,
	combout => \CK|clk_sig~feeder_combout\);

-- Location: FF_X45_Y51_N29
\CK|clk_sig\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \CK|clk_sig~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CK|clk_sig~q\);

-- Location: CLKCTRL_G14
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

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LCCOMB_X56_Y51_N18
\DUT|MEMORY|mySRAM~446\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~446_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~446_combout\);

-- Location: LCCOMB_X56_Y51_N28
\DUT|MEMORY|mySRAM~447\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~447_combout\ = (\SW[4]~input_o\ & (!\SW[9]~input_o\ & \DUT|MEMORY|mySRAM~446_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \DUT|MEMORY|mySRAM~446_combout\,
	combout => \DUT|MEMORY|mySRAM~447_combout\);

-- Location: FF_X56_Y52_N17
\DUT|MEMORY|mySRAM~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~217_q\);

-- Location: LCCOMB_X58_Y52_N12
\DUT|MEMORY|mySRAM~450\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~450_combout\ = (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~450_combout\);

-- Location: LCCOMB_X58_Y52_N30
\DUT|MEMORY|mySRAM~451\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~451_combout\ = (\DUT|MEMORY|mySRAM~450_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~450_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~451_combout\);

-- Location: FF_X55_Y52_N31
\DUT|MEMORY|mySRAM~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~153_q\);

-- Location: LCCOMB_X55_Y52_N30
\DUT|MEMORY|mySRAM~333\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~333_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~217_q\)) # (!\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~153_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~217_q\,
	datac => \DUT|MEMORY|mySRAM~153_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~333_combout\);

-- Location: LCCOMB_X56_Y51_N6
\DUT|MEMORY|mySRAM~452\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~452_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~452_combout\);

-- Location: LCCOMB_X56_Y51_N8
\DUT|MEMORY|mySRAM~453\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~453_combout\ = (\SW[4]~input_o\ & (!\SW[9]~input_o\ & \DUT|MEMORY|mySRAM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \DUT|MEMORY|mySRAM~452_combout\,
	combout => \DUT|MEMORY|mySRAM~453_combout\);

-- Location: FF_X56_Y52_N3
\DUT|MEMORY|mySRAM~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~249_q\);

-- Location: LCCOMB_X55_Y52_N12
\DUT|MEMORY|mySRAM~185feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~185feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \DUT|MEMORY|mySRAM~185feeder_combout\);

-- Location: LCCOMB_X56_Y51_N10
\DUT|MEMORY|mySRAM~448\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~448_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~448_combout\);

-- Location: LCCOMB_X56_Y51_N4
\DUT|MEMORY|mySRAM~449\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~449_combout\ = (\SW[4]~input_o\ & (!\SW[9]~input_o\ & \DUT|MEMORY|mySRAM~448_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \DUT|MEMORY|mySRAM~448_combout\,
	combout => \DUT|MEMORY|mySRAM~449_combout\);

-- Location: FF_X55_Y52_N13
\DUT|MEMORY|mySRAM~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~185feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~185_q\);

-- Location: LCCOMB_X56_Y52_N2
\DUT|MEMORY|mySRAM~334\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~334_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~333_combout\ & (\DUT|MEMORY|mySRAM~249_q\)) # (!\DUT|MEMORY|mySRAM~333_combout\ & ((\DUT|MEMORY|mySRAM~185_q\))))) # (!\SW[2]~input_o\ & (\DUT|MEMORY|mySRAM~333_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~333_combout\,
	datac => \DUT|MEMORY|mySRAM~249_q\,
	datad => \DUT|MEMORY|mySRAM~185_q\,
	combout => \DUT|MEMORY|mySRAM~334_combout\);

-- Location: LCCOMB_X56_Y50_N24
\DUT|MEMORY|mySRAM~466\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~466_combout\ = (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~466_combout\);

-- Location: LCCOMB_X57_Y51_N2
\DUT|MEMORY|mySRAM~467\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~467_combout\ = (\DUT|MEMORY|mySRAM~466_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~466_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~467_combout\);

-- Location: FF_X58_Y53_N3
\DUT|MEMORY|mySRAM~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~169_q\);

-- Location: LCCOMB_X58_Y52_N24
\DUT|MEMORY|mySRAM~462\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~462_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~462_combout\);

-- Location: LCCOMB_X57_Y51_N18
\DUT|MEMORY|mySRAM~463\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~463_combout\ = (\DUT|MEMORY|mySRAM~462_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~462_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~463_combout\);

-- Location: FF_X58_Y53_N1
\DUT|MEMORY|mySRAM~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~233_q\);

-- Location: LCCOMB_X58_Y53_N2
\DUT|MEMORY|mySRAM~340\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~340_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~233_q\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~169_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~169_q\,
	datad => \DUT|MEMORY|mySRAM~233_q\,
	combout => \DUT|MEMORY|mySRAM~340_combout\);

-- Location: LCCOMB_X56_Y51_N16
\DUT|MEMORY|mySRAM~468\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~468_combout\ = (\SW[2]~input_o\ & (\SW[1]~input_o\ & (\SW[3]~input_o\ & \SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~468_combout\);

-- Location: LCCOMB_X56_Y51_N2
\DUT|MEMORY|mySRAM~469\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~469_combout\ = (\SW[4]~input_o\ & (!\SW[9]~input_o\ & \DUT|MEMORY|mySRAM~468_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \DUT|MEMORY|mySRAM~468_combout\,
	combout => \DUT|MEMORY|mySRAM~469_combout\);

-- Location: FF_X57_Y53_N23
\DUT|MEMORY|mySRAM~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~265_q\);

-- Location: LCCOMB_X56_Y50_N18
\DUT|MEMORY|mySRAM~464\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~464_combout\ = (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~464_combout\);

-- Location: LCCOMB_X57_Y51_N24
\DUT|MEMORY|mySRAM~465\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~465_combout\ = (\DUT|MEMORY|mySRAM~464_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~464_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~465_combout\);

-- Location: FF_X57_Y53_N1
\DUT|MEMORY|mySRAM~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~201_q\);

-- Location: LCCOMB_X57_Y53_N22
\DUT|MEMORY|mySRAM~341\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~341_combout\ = (\DUT|MEMORY|mySRAM~340_combout\ & (((\DUT|MEMORY|mySRAM~265_q\)) # (!\SW[2]~input_o\))) # (!\DUT|MEMORY|mySRAM~340_combout\ & (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~201_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~340_combout\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~265_q\,
	datad => \DUT|MEMORY|mySRAM~201_q\,
	combout => \DUT|MEMORY|mySRAM~341_combout\);

-- Location: LCCOMB_X58_Y50_N6
\DUT|MEMORY|mySRAM~225feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~225feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \DUT|MEMORY|mySRAM~225feeder_combout\);

-- Location: LCCOMB_X58_Y52_N28
\DUT|MEMORY|mySRAM~440\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~440_combout\ = (!\SW[2]~input_o\ & (\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~440_combout\);

-- Location: LCCOMB_X58_Y52_N6
\DUT|MEMORY|mySRAM~441\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~441_combout\ = (\DUT|MEMORY|mySRAM~440_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~440_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~441_combout\);

-- Location: FF_X58_Y50_N7
\DUT|MEMORY|mySRAM~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~225feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~225_q\);

-- Location: LCCOMB_X54_Y50_N10
\DUT|MEMORY|mySRAM~193feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~193feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \DUT|MEMORY|mySRAM~193feeder_combout\);

-- Location: LCCOMB_X58_Y52_N4
\DUT|MEMORY|mySRAM~438\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~438_combout\ = (\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~438_combout\);

-- Location: LCCOMB_X58_Y52_N22
\DUT|MEMORY|mySRAM~439\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~439_combout\ = (\DUT|MEMORY|mySRAM~438_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~438_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~439_combout\);

-- Location: FF_X54_Y50_N11
\DUT|MEMORY|mySRAM~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~193feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~193_q\);

-- Location: LCCOMB_X58_Y52_N16
\DUT|MEMORY|mySRAM~442\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~442_combout\ = (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (!\SW[0]~input_o\ & \SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~442_combout\);

-- Location: LCCOMB_X58_Y52_N26
\DUT|MEMORY|mySRAM~443\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~443_combout\ = (\DUT|MEMORY|mySRAM~442_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~442_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~443_combout\);

-- Location: FF_X57_Y50_N9
\DUT|MEMORY|mySRAM~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~161_q\);

-- Location: LCCOMB_X57_Y50_N8
\DUT|MEMORY|mySRAM~335\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~335_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~193_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~161_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~193_q\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~161_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~335_combout\);

-- Location: LCCOMB_X57_Y52_N12
\DUT|MEMORY|mySRAM~444\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~444_combout\ = (\SW[3]~input_o\ & (\SW[1]~input_o\ & (!\SW[0]~input_o\ & \SW[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[2]~input_o\,
	combout => \DUT|MEMORY|mySRAM~444_combout\);

-- Location: LCCOMB_X57_Y51_N28
\DUT|MEMORY|mySRAM~445\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~445_combout\ = (\DUT|MEMORY|mySRAM~444_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~444_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~445_combout\);

-- Location: FF_X57_Y50_N23
\DUT|MEMORY|mySRAM~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~257_q\);

-- Location: LCCOMB_X57_Y50_N22
\DUT|MEMORY|mySRAM~336\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~336_combout\ = (\DUT|MEMORY|mySRAM~335_combout\ & (((\DUT|MEMORY|mySRAM~257_q\) # (!\SW[3]~input_o\)))) # (!\DUT|MEMORY|mySRAM~335_combout\ & (\DUT|MEMORY|mySRAM~225_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~225_q\,
	datab => \DUT|MEMORY|mySRAM~335_combout\,
	datac => \DUT|MEMORY|mySRAM~257_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~336_combout\);

-- Location: LCCOMB_X56_Y50_N4
\DUT|MEMORY|mySRAM~458\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~458_combout\ = (!\SW[3]~input_o\ & (!\SW[2]~input_o\ & (!\SW[0]~input_o\ & !\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~458_combout\);

-- Location: LCCOMB_X57_Y51_N22
\DUT|MEMORY|mySRAM~459\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~459_combout\ = (\DUT|MEMORY|mySRAM~458_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~458_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~459_combout\);

-- Location: FF_X59_Y51_N31
\DUT|MEMORY|mySRAM~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~145_q\);

-- Location: LCCOMB_X56_Y51_N14
\DUT|MEMORY|mySRAM~454\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~454_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~454_combout\);

-- Location: LCCOMB_X57_Y51_N26
\DUT|MEMORY|mySRAM~455\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~455_combout\ = (\DUT|MEMORY|mySRAM~454_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~454_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~455_combout\);

-- Location: FF_X59_Y51_N1
\DUT|MEMORY|mySRAM~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~177_q\);

-- Location: LCCOMB_X59_Y51_N30
\DUT|MEMORY|mySRAM~337\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~337_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\DUT|MEMORY|mySRAM~177_q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~145_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~145_q\,
	datad => \DUT|MEMORY|mySRAM~177_q\,
	combout => \DUT|MEMORY|mySRAM~337_combout\);

-- Location: LCCOMB_X56_Y51_N26
\DUT|MEMORY|mySRAM~460\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~460_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~460_combout\);

-- Location: LCCOMB_X57_Y51_N4
\DUT|MEMORY|mySRAM~461\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~461_combout\ = (\DUT|MEMORY|mySRAM~460_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~460_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~461_combout\);

-- Location: FF_X58_Y51_N7
\DUT|MEMORY|mySRAM~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~241_q\);

-- Location: LCCOMB_X56_Y51_N24
\DUT|MEMORY|mySRAM~456\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~456_combout\ = (!\SW[2]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~456_combout\);

-- Location: LCCOMB_X57_Y51_N16
\DUT|MEMORY|mySRAM~457\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~457_combout\ = (\DUT|MEMORY|mySRAM~456_combout\ & (\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~456_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~457_combout\);

-- Location: FF_X58_Y51_N13
\DUT|MEMORY|mySRAM~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~209_q\);

-- Location: LCCOMB_X58_Y51_N6
\DUT|MEMORY|mySRAM~338\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~338_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~337_combout\ & (\DUT|MEMORY|mySRAM~241_q\)) # (!\DUT|MEMORY|mySRAM~337_combout\ & ((\DUT|MEMORY|mySRAM~209_q\))))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~337_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~337_combout\,
	datac => \DUT|MEMORY|mySRAM~241_q\,
	datad => \DUT|MEMORY|mySRAM~209_q\,
	combout => \DUT|MEMORY|mySRAM~338_combout\);

-- Location: LCCOMB_X58_Y52_N20
\DUT|MEMORY|mySRAM~339\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~339_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~336_combout\)) # (!\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~338_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~336_combout\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~338_combout\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~339_combout\);

-- Location: LCCOMB_X58_Y52_N2
\DUT|MEMORY|mySRAM~342\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~342_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~339_combout\ & ((\DUT|MEMORY|mySRAM~341_combout\))) # (!\DUT|MEMORY|mySRAM~339_combout\ & (\DUT|MEMORY|mySRAM~334_combout\)))) # (!\SW[0]~input_o\ & 
-- (((\DUT|MEMORY|mySRAM~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~334_combout\,
	datab => \DUT|MEMORY|mySRAM~341_combout\,
	datac => \SW[0]~input_o\,
	datad => \DUT|MEMORY|mySRAM~339_combout\,
	combout => \DUT|MEMORY|mySRAM~342_combout\);

-- Location: LCCOMB_X57_Y51_N30
\DUT|MEMORY|mySRAM~484\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~484_combout\ = (\DUT|MEMORY|mySRAM~460_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~460_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~484_combout\);

-- Location: FF_X55_Y50_N27
\DUT|MEMORY|mySRAM~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~113_q\);

-- Location: LCCOMB_X56_Y51_N20
\DUT|MEMORY|mySRAM~482\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~482_combout\ = (!\SW[4]~input_o\ & (!\SW[9]~input_o\ & \DUT|MEMORY|mySRAM~452_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \DUT|MEMORY|mySRAM~452_combout\,
	combout => \DUT|MEMORY|mySRAM~482_combout\);

-- Location: FF_X55_Y50_N29
\DUT|MEMORY|mySRAM~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~121_q\);

-- Location: LCCOMB_X55_Y50_N26
\DUT|MEMORY|mySRAM~350\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~350_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~121_q\))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~113_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~113_q\,
	datad => \DUT|MEMORY|mySRAM~121_q\,
	combout => \DUT|MEMORY|mySRAM~350_combout\);

-- Location: LCCOMB_X56_Y51_N30
\DUT|MEMORY|mySRAM~485\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~485_combout\ = (!\SW[4]~input_o\ & (!\SW[9]~input_o\ & \DUT|MEMORY|mySRAM~468_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \DUT|MEMORY|mySRAM~468_combout\,
	combout => \DUT|MEMORY|mySRAM~485_combout\);

-- Location: FF_X56_Y50_N27
\DUT|MEMORY|mySRAM~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~137_q\);

-- Location: LCCOMB_X54_Y50_N0
\DUT|MEMORY|mySRAM~129feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~129feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \DUT|MEMORY|mySRAM~129feeder_combout\);

-- Location: LCCOMB_X57_Y51_N0
\DUT|MEMORY|mySRAM~483\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~483_combout\ = (\DUT|MEMORY|mySRAM~444_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~444_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~483_combout\);

-- Location: FF_X54_Y50_N1
\DUT|MEMORY|mySRAM~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~129feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~129_q\);

-- Location: LCCOMB_X56_Y50_N26
\DUT|MEMORY|mySRAM~351\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~351_combout\ = (\DUT|MEMORY|mySRAM~350_combout\ & (((\DUT|MEMORY|mySRAM~137_q\)) # (!\SW[1]~input_o\))) # (!\DUT|MEMORY|mySRAM~350_combout\ & (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~129_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~350_combout\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~137_q\,
	datad => \DUT|MEMORY|mySRAM~129_q\,
	combout => \DUT|MEMORY|mySRAM~351_combout\);

-- Location: LCCOMB_X57_Y51_N8
\DUT|MEMORY|mySRAM~476\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~476_combout\ = (\DUT|MEMORY|mySRAM~454_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~454_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~476_combout\);

-- Location: FF_X54_Y51_N3
\DUT|MEMORY|mySRAM~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~49_q\);

-- Location: LCCOMB_X56_Y51_N22
\DUT|MEMORY|mySRAM~474\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~474_combout\ = (!\SW[4]~input_o\ & (!\SW[9]~input_o\ & \DUT|MEMORY|mySRAM~448_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \DUT|MEMORY|mySRAM~448_combout\,
	combout => \DUT|MEMORY|mySRAM~474_combout\);

-- Location: FF_X54_Y51_N13
\DUT|MEMORY|mySRAM~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~57_q\);

-- Location: LCCOMB_X54_Y51_N2
\DUT|MEMORY|mySRAM~343\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~343_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\DUT|MEMORY|mySRAM~57_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~49_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~49_q\,
	datad => \DUT|MEMORY|mySRAM~57_q\,
	combout => \DUT|MEMORY|mySRAM~343_combout\);

-- Location: LCCOMB_X57_Y51_N6
\DUT|MEMORY|mySRAM~477\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~477_combout\ = (\DUT|MEMORY|mySRAM~464_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~464_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~477_combout\);

-- Location: FF_X55_Y51_N31
\DUT|MEMORY|mySRAM~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~73_q\);

-- Location: LCCOMB_X59_Y52_N28
\DUT|MEMORY|mySRAM~475\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~475_combout\ = (\DUT|MEMORY|mySRAM~438_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~438_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~475_combout\);

-- Location: FF_X55_Y51_N21
\DUT|MEMORY|mySRAM~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~65_q\);

-- Location: LCCOMB_X55_Y51_N30
\DUT|MEMORY|mySRAM~344\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~344_combout\ = (\DUT|MEMORY|mySRAM~343_combout\ & (((\DUT|MEMORY|mySRAM~73_q\)) # (!\SW[1]~input_o\))) # (!\DUT|MEMORY|mySRAM~343_combout\ & (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~65_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~343_combout\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~73_q\,
	datad => \DUT|MEMORY|mySRAM~65_q\,
	combout => \DUT|MEMORY|mySRAM~344_combout\);

-- Location: LCCOMB_X58_Y52_N18
\DUT|MEMORY|mySRAM~479\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~479_combout\ = (\DUT|MEMORY|mySRAM~450_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~450_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~479_combout\);

-- Location: FF_X55_Y53_N17
\DUT|MEMORY|mySRAM~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~25_q\);

-- Location: LCCOMB_X57_Y51_N14
\DUT|MEMORY|mySRAM~481\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~481_combout\ = (\DUT|MEMORY|mySRAM~466_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~466_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~481_combout\);

-- Location: FF_X55_Y53_N27
\DUT|MEMORY|mySRAM~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~41_q\);

-- Location: LCCOMB_X58_Y52_N0
\DUT|MEMORY|mySRAM~478\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~478_combout\ = (\DUT|MEMORY|mySRAM~442_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~442_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~478_combout\);

-- Location: FF_X56_Y53_N13
\DUT|MEMORY|mySRAM~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~33_q\);

-- Location: LCCOMB_X57_Y51_N12
\DUT|MEMORY|mySRAM~480\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~480_combout\ = (\DUT|MEMORY|mySRAM~458_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~458_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~480_combout\);

-- Location: FF_X56_Y53_N23
\DUT|MEMORY|mySRAM~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~17_q\);

-- Location: LCCOMB_X56_Y53_N22
\DUT|MEMORY|mySRAM~347\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~347_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~33_q\)) # (!\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~33_q\,
	datac => \DUT|MEMORY|mySRAM~17_q\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~347_combout\);

-- Location: LCCOMB_X55_Y53_N26
\DUT|MEMORY|mySRAM~348\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~348_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~347_combout\ & ((\DUT|MEMORY|mySRAM~41_q\))) # (!\DUT|MEMORY|mySRAM~347_combout\ & (\DUT|MEMORY|mySRAM~25_q\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~25_q\,
	datac => \DUT|MEMORY|mySRAM~41_q\,
	datad => \DUT|MEMORY|mySRAM~347_combout\,
	combout => \DUT|MEMORY|mySRAM~348_combout\);

-- Location: LCCOMB_X56_Y51_N0
\DUT|MEMORY|mySRAM~471\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~471_combout\ = (!\SW[4]~input_o\ & (!\SW[9]~input_o\ & \DUT|MEMORY|mySRAM~446_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \SW[9]~input_o\,
	datad => \DUT|MEMORY|mySRAM~446_combout\,
	combout => \DUT|MEMORY|mySRAM~471_combout\);

-- Location: FF_X59_Y52_N27
\DUT|MEMORY|mySRAM~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~89_q\);

-- Location: LCCOMB_X57_Y51_N20
\DUT|MEMORY|mySRAM~472\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~472_combout\ = (\DUT|MEMORY|mySRAM~456_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~456_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~472_combout\);

-- Location: FF_X58_Y49_N11
\DUT|MEMORY|mySRAM~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~81_q\);

-- Location: LCCOMB_X58_Y52_N10
\DUT|MEMORY|mySRAM~470\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~470_combout\ = (\DUT|MEMORY|mySRAM~440_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~440_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~470_combout\);

-- Location: FF_X58_Y49_N25
\DUT|MEMORY|mySRAM~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~97_q\);

-- Location: LCCOMB_X58_Y49_N10
\DUT|MEMORY|mySRAM~345\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~345_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\DUT|MEMORY|mySRAM~97_q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~81_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~81_q\,
	datad => \DUT|MEMORY|mySRAM~97_q\,
	combout => \DUT|MEMORY|mySRAM~345_combout\);

-- Location: LCCOMB_X57_Y51_N10
\DUT|MEMORY|mySRAM~473\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~473_combout\ = (\DUT|MEMORY|mySRAM~462_combout\ & (!\SW[4]~input_o\ & !\SW[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~462_combout\,
	datac => \SW[4]~input_o\,
	datad => \SW[9]~input_o\,
	combout => \DUT|MEMORY|mySRAM~473_combout\);

-- Location: FF_X59_Y52_N1
\DUT|MEMORY|mySRAM~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~105_q\);

-- Location: LCCOMB_X59_Y52_N0
\DUT|MEMORY|mySRAM~346\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~346_combout\ = (\DUT|MEMORY|mySRAM~345_combout\ & (((\DUT|MEMORY|mySRAM~105_q\) # (!\SW[0]~input_o\)))) # (!\DUT|MEMORY|mySRAM~345_combout\ & (\DUT|MEMORY|mySRAM~89_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~89_q\,
	datab => \DUT|MEMORY|mySRAM~345_combout\,
	datac => \DUT|MEMORY|mySRAM~105_q\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~346_combout\);

-- Location: LCCOMB_X59_Y52_N2
\DUT|MEMORY|mySRAM~349\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~349_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~346_combout\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~348_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~348_combout\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \DUT|MEMORY|mySRAM~346_combout\,
	combout => \DUT|MEMORY|mySRAM~349_combout\);

-- Location: LCCOMB_X59_Y52_N16
\DUT|MEMORY|mySRAM~352\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~352_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~349_combout\ & (\DUT|MEMORY|mySRAM~351_combout\)) # (!\DUT|MEMORY|mySRAM~349_combout\ & ((\DUT|MEMORY|mySRAM~344_combout\))))) # (!\SW[2]~input_o\ & 
-- (((\DUT|MEMORY|mySRAM~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~351_combout\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~344_combout\,
	datad => \DUT|MEMORY|mySRAM~349_combout\,
	combout => \DUT|MEMORY|mySRAM~352_combout\);

-- Location: LCCOMB_X59_Y52_N30
\DUT|MEMORY|mySRAM~353\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~353_combout\ = (\SW[4]~input_o\ & (\DUT|MEMORY|mySRAM~342_combout\)) # (!\SW[4]~input_o\ & ((\DUT|MEMORY|mySRAM~352_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~342_combout\,
	datac => \SW[4]~input_o\,
	datad => \DUT|MEMORY|mySRAM~352_combout\,
	combout => \DUT|MEMORY|mySRAM~353_combout\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X55_Y51_N9
\DUT|MEMORY|mySRAM~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~63_q\);

-- Location: FF_X55_Y51_N7
\DUT|MEMORY|mySRAM~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~71_q\);

-- Location: FF_X54_Y51_N31
\DUT|MEMORY|mySRAM~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~47_q\);

-- Location: FF_X54_Y51_N29
\DUT|MEMORY|mySRAM~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~55_q\);

-- Location: LCCOMB_X54_Y51_N30
\DUT|MEMORY|mySRAM~301\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~301_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\DUT|MEMORY|mySRAM~55_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~47_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~47_q\,
	datad => \DUT|MEMORY|mySRAM~55_q\,
	combout => \DUT|MEMORY|mySRAM~301_combout\);

-- Location: LCCOMB_X55_Y51_N6
\DUT|MEMORY|mySRAM~302\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~302_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~301_combout\ & ((\DUT|MEMORY|mySRAM~71_q\))) # (!\DUT|MEMORY|mySRAM~301_combout\ & (\DUT|MEMORY|mySRAM~63_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~301_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|MEMORY|mySRAM~63_q\,
	datac => \DUT|MEMORY|mySRAM~71_q\,
	datad => \DUT|MEMORY|mySRAM~301_combout\,
	combout => \DUT|MEMORY|mySRAM~302_combout\);

-- Location: LCCOMB_X54_Y50_N4
\DUT|MEMORY|mySRAM~127feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~127feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~127feeder_combout\);

-- Location: FF_X54_Y50_N5
\DUT|MEMORY|mySRAM~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~127feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~127_q\);

-- Location: FF_X56_Y50_N1
\DUT|MEMORY|mySRAM~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~135_q\);

-- Location: FF_X55_Y50_N13
\DUT|MEMORY|mySRAM~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~111_q\);

-- Location: FF_X55_Y50_N7
\DUT|MEMORY|mySRAM~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~119_q\);

-- Location: LCCOMB_X55_Y50_N12
\DUT|MEMORY|mySRAM~308\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~308_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~119_q\))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~111_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~111_q\,
	datad => \DUT|MEMORY|mySRAM~119_q\,
	combout => \DUT|MEMORY|mySRAM~308_combout\);

-- Location: LCCOMB_X56_Y50_N0
\DUT|MEMORY|mySRAM~309\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~309_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~308_combout\ & ((\DUT|MEMORY|mySRAM~135_q\))) # (!\DUT|MEMORY|mySRAM~308_combout\ & (\DUT|MEMORY|mySRAM~127_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~308_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~127_q\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~135_q\,
	datad => \DUT|MEMORY|mySRAM~308_combout\,
	combout => \DUT|MEMORY|mySRAM~309_combout\);

-- Location: LCCOMB_X56_Y53_N8
\DUT|MEMORY|mySRAM~31feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~31feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~31feeder_combout\);

-- Location: FF_X56_Y53_N9
\DUT|MEMORY|mySRAM~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~31feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~31_q\);

-- Location: FF_X56_Y53_N15
\DUT|MEMORY|mySRAM~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~15_q\);

-- Location: LCCOMB_X56_Y53_N14
\DUT|MEMORY|mySRAM~305\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~305_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~31_q\)) # (!\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~31_q\,
	datac => \DUT|MEMORY|mySRAM~15_q\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~305_combout\);

-- Location: FF_X55_Y53_N7
\DUT|MEMORY|mySRAM~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~39_q\);

-- Location: FF_X55_Y53_N1
\DUT|MEMORY|mySRAM~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~23_q\);

-- Location: LCCOMB_X55_Y53_N6
\DUT|MEMORY|mySRAM~306\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~306_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~305_combout\ & (\DUT|MEMORY|mySRAM~39_q\)) # (!\DUT|MEMORY|mySRAM~305_combout\ & ((\DUT|MEMORY|mySRAM~23_q\))))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~305_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~305_combout\,
	datac => \DUT|MEMORY|mySRAM~39_q\,
	datad => \DUT|MEMORY|mySRAM~23_q\,
	combout => \DUT|MEMORY|mySRAM~306_combout\);

-- Location: FF_X57_Y49_N23
\DUT|MEMORY|mySRAM~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~87_q\);

-- Location: FF_X57_Y49_N21
\DUT|MEMORY|mySRAM~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~103_q\);

-- Location: FF_X58_Y49_N23
\DUT|MEMORY|mySRAM~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~79_q\);

-- Location: LCCOMB_X58_Y49_N16
\DUT|MEMORY|mySRAM~95feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~95feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~95feeder_combout\);

-- Location: FF_X58_Y49_N17
\DUT|MEMORY|mySRAM~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~95feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~95_q\);

-- Location: LCCOMB_X58_Y49_N22
\DUT|MEMORY|mySRAM~303\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~303_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\DUT|MEMORY|mySRAM~95_q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~79_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~79_q\,
	datad => \DUT|MEMORY|mySRAM~95_q\,
	combout => \DUT|MEMORY|mySRAM~303_combout\);

-- Location: LCCOMB_X57_Y49_N20
\DUT|MEMORY|mySRAM~304\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~304_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~303_combout\ & ((\DUT|MEMORY|mySRAM~103_q\))) # (!\DUT|MEMORY|mySRAM~303_combout\ & (\DUT|MEMORY|mySRAM~87_q\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~303_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~87_q\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~103_q\,
	datad => \DUT|MEMORY|mySRAM~303_combout\,
	combout => \DUT|MEMORY|mySRAM~304_combout\);

-- Location: LCCOMB_X57_Y52_N20
\DUT|MEMORY|mySRAM~307\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~307_combout\ = (\SW[3]~input_o\ & (((\DUT|MEMORY|mySRAM~304_combout\) # (\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~306_combout\ & ((!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~306_combout\,
	datac => \DUT|MEMORY|mySRAM~304_combout\,
	datad => \SW[2]~input_o\,
	combout => \DUT|MEMORY|mySRAM~307_combout\);

-- Location: LCCOMB_X57_Y52_N10
\DUT|MEMORY|mySRAM~310\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~310_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~307_combout\ & ((\DUT|MEMORY|mySRAM~309_combout\))) # (!\DUT|MEMORY|mySRAM~307_combout\ & (\DUT|MEMORY|mySRAM~302_combout\)))) # (!\SW[2]~input_o\ & 
-- (((\DUT|MEMORY|mySRAM~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~302_combout\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~309_combout\,
	datad => \DUT|MEMORY|mySRAM~307_combout\,
	combout => \DUT|MEMORY|mySRAM~310_combout\);

-- Location: FF_X56_Y52_N25
\DUT|MEMORY|mySRAM~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~215_q\);

-- Location: FF_X55_Y52_N19
\DUT|MEMORY|mySRAM~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~151_q\);

-- Location: LCCOMB_X55_Y52_N18
\DUT|MEMORY|mySRAM~291\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~291_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~215_q\)) # (!\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~151_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~215_q\,
	datac => \DUT|MEMORY|mySRAM~151_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~291_combout\);

-- Location: FF_X56_Y52_N15
\DUT|MEMORY|mySRAM~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~247_q\);

-- Location: LCCOMB_X55_Y52_N24
\DUT|MEMORY|mySRAM~183feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~183feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~183feeder_combout\);

-- Location: FF_X55_Y52_N25
\DUT|MEMORY|mySRAM~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~183feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~183_q\);

-- Location: LCCOMB_X56_Y52_N14
\DUT|MEMORY|mySRAM~292\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~292_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~291_combout\ & (\DUT|MEMORY|mySRAM~247_q\)) # (!\DUT|MEMORY|mySRAM~291_combout\ & ((\DUT|MEMORY|mySRAM~183_q\))))) # (!\SW[2]~input_o\ & (\DUT|MEMORY|mySRAM~291_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~291_combout\,
	datac => \DUT|MEMORY|mySRAM~247_q\,
	datad => \DUT|MEMORY|mySRAM~183_q\,
	combout => \DUT|MEMORY|mySRAM~292_combout\);

-- Location: FF_X58_Y53_N31
\DUT|MEMORY|mySRAM~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~167_q\);

-- Location: LCCOMB_X58_Y53_N12
\DUT|MEMORY|mySRAM~231feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~231feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~231feeder_combout\);

-- Location: FF_X58_Y53_N13
\DUT|MEMORY|mySRAM~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~231feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~231_q\);

-- Location: LCCOMB_X58_Y53_N30
\DUT|MEMORY|mySRAM~298\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~298_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~231_q\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~167_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~167_q\,
	datad => \DUT|MEMORY|mySRAM~231_q\,
	combout => \DUT|MEMORY|mySRAM~298_combout\);

-- Location: FF_X57_Y53_N19
\DUT|MEMORY|mySRAM~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~263_q\);

-- Location: FF_X57_Y53_N17
\DUT|MEMORY|mySRAM~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~199_q\);

-- Location: LCCOMB_X57_Y53_N18
\DUT|MEMORY|mySRAM~299\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~299_combout\ = (\DUT|MEMORY|mySRAM~298_combout\ & (((\DUT|MEMORY|mySRAM~263_q\)) # (!\SW[2]~input_o\))) # (!\DUT|MEMORY|mySRAM~298_combout\ & (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~199_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~298_combout\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~263_q\,
	datad => \DUT|MEMORY|mySRAM~199_q\,
	combout => \DUT|MEMORY|mySRAM~299_combout\);

-- Location: LCCOMB_X54_Y50_N30
\DUT|MEMORY|mySRAM~191feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~191feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~191feeder_combout\);

-- Location: FF_X54_Y50_N31
\DUT|MEMORY|mySRAM~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~191feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~191_q\);

-- Location: FF_X57_Y50_N7
\DUT|MEMORY|mySRAM~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~159_q\);

-- Location: LCCOMB_X57_Y50_N6
\DUT|MEMORY|mySRAM~293\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~293_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~191_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~159_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~191_q\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~159_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~293_combout\);

-- Location: FF_X57_Y52_N7
\DUT|MEMORY|mySRAM~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~255_q\);

-- Location: LCCOMB_X58_Y50_N0
\DUT|MEMORY|mySRAM~223feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~223feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~223feeder_combout\);

-- Location: FF_X58_Y50_N1
\DUT|MEMORY|mySRAM~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~223feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~223_q\);

-- Location: LCCOMB_X57_Y52_N6
\DUT|MEMORY|mySRAM~294\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~294_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~293_combout\ & (\DUT|MEMORY|mySRAM~255_q\)) # (!\DUT|MEMORY|mySRAM~293_combout\ & ((\DUT|MEMORY|mySRAM~223_q\))))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~293_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~293_combout\,
	datac => \DUT|MEMORY|mySRAM~255_q\,
	datad => \DUT|MEMORY|mySRAM~223_q\,
	combout => \DUT|MEMORY|mySRAM~294_combout\);

-- Location: FF_X59_Y51_N15
\DUT|MEMORY|mySRAM~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~143_q\);

-- Location: LCCOMB_X59_Y51_N12
\DUT|MEMORY|mySRAM~175feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~175feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~175feeder_combout\);

-- Location: FF_X59_Y51_N13
\DUT|MEMORY|mySRAM~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~175feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~175_q\);

-- Location: LCCOMB_X59_Y51_N14
\DUT|MEMORY|mySRAM~295\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~295_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\DUT|MEMORY|mySRAM~175_q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~143_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~143_q\,
	datad => \DUT|MEMORY|mySRAM~175_q\,
	combout => \DUT|MEMORY|mySRAM~295_combout\);

-- Location: FF_X58_Y51_N11
\DUT|MEMORY|mySRAM~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~239_q\);

-- Location: FF_X58_Y51_N17
\DUT|MEMORY|mySRAM~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~207_q\);

-- Location: LCCOMB_X58_Y51_N10
\DUT|MEMORY|mySRAM~296\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~296_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~295_combout\ & (\DUT|MEMORY|mySRAM~239_q\)) # (!\DUT|MEMORY|mySRAM~295_combout\ & ((\DUT|MEMORY|mySRAM~207_q\))))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~295_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~295_combout\,
	datac => \DUT|MEMORY|mySRAM~239_q\,
	datad => \DUT|MEMORY|mySRAM~207_q\,
	combout => \DUT|MEMORY|mySRAM~296_combout\);

-- Location: LCCOMB_X57_Y52_N24
\DUT|MEMORY|mySRAM~297\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~297_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~294_combout\)) # (!\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~296_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~294_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \DUT|MEMORY|mySRAM~296_combout\,
	combout => \DUT|MEMORY|mySRAM~297_combout\);

-- Location: LCCOMB_X57_Y52_N2
\DUT|MEMORY|mySRAM~300\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~300_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~297_combout\ & ((\DUT|MEMORY|mySRAM~299_combout\))) # (!\DUT|MEMORY|mySRAM~297_combout\ & (\DUT|MEMORY|mySRAM~292_combout\)))) # (!\SW[0]~input_o\ & 
-- (((\DUT|MEMORY|mySRAM~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~292_combout\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~299_combout\,
	datad => \DUT|MEMORY|mySRAM~297_combout\,
	combout => \DUT|MEMORY|mySRAM~300_combout\);

-- Location: LCCOMB_X57_Y52_N8
\DUT|MEMORY|mySRAM~311\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~311_combout\ = (\SW[4]~input_o\ & ((\DUT|MEMORY|mySRAM~300_combout\))) # (!\SW[4]~input_o\ & (\DUT|MEMORY|mySRAM~310_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~310_combout\,
	datac => \SW[4]~input_o\,
	datad => \DUT|MEMORY|mySRAM~300_combout\,
	combout => \DUT|MEMORY|mySRAM~311_combout\);

-- Location: FF_X55_Y50_N17
\DUT|MEMORY|mySRAM~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~110_q\);

-- Location: LCCOMB_X54_Y50_N24
\DUT|MEMORY|mySRAM~126feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~126feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~126feeder_combout\);

-- Location: FF_X54_Y50_N25
\DUT|MEMORY|mySRAM~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~126feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~126_q\);

-- Location: LCCOMB_X55_Y50_N16
\DUT|MEMORY|mySRAM~287\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~287_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\DUT|MEMORY|mySRAM~126_q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~110_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~110_q\,
	datad => \DUT|MEMORY|mySRAM~126_q\,
	combout => \DUT|MEMORY|mySRAM~287_combout\);

-- Location: FF_X56_Y50_N15
\DUT|MEMORY|mySRAM~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~134_q\);

-- Location: LCCOMB_X56_Y50_N16
\DUT|MEMORY|mySRAM~118feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~118feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~118feeder_combout\);

-- Location: FF_X56_Y50_N17
\DUT|MEMORY|mySRAM~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~118feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~118_q\);

-- Location: LCCOMB_X56_Y50_N14
\DUT|MEMORY|mySRAM~288\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~288_combout\ = (\DUT|MEMORY|mySRAM~287_combout\ & (((\DUT|MEMORY|mySRAM~134_q\)) # (!\SW[0]~input_o\))) # (!\DUT|MEMORY|mySRAM~287_combout\ & (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~118_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~287_combout\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~134_q\,
	datad => \DUT|MEMORY|mySRAM~118_q\,
	combout => \DUT|MEMORY|mySRAM~288_combout\);

-- Location: FF_X54_Y51_N11
\DUT|MEMORY|mySRAM~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~46_q\);

-- Location: FF_X55_Y51_N25
\DUT|MEMORY|mySRAM~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~62_q\);

-- Location: LCCOMB_X54_Y51_N10
\DUT|MEMORY|mySRAM~282\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~282_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~62_q\))) # (!\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~46_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~46_q\,
	datad => \DUT|MEMORY|mySRAM~62_q\,
	combout => \DUT|MEMORY|mySRAM~282_combout\);

-- Location: FF_X55_Y51_N19
\DUT|MEMORY|mySRAM~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~70_q\);

-- Location: FF_X54_Y51_N21
\DUT|MEMORY|mySRAM~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~54_q\);

-- Location: LCCOMB_X55_Y51_N18
\DUT|MEMORY|mySRAM~283\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~283_combout\ = (\DUT|MEMORY|mySRAM~282_combout\ & (((\DUT|MEMORY|mySRAM~70_q\)) # (!\SW[0]~input_o\))) # (!\DUT|MEMORY|mySRAM~282_combout\ & (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~54_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~282_combout\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~70_q\,
	datad => \DUT|MEMORY|mySRAM~54_q\,
	combout => \DUT|MEMORY|mySRAM~283_combout\);

-- Location: FF_X55_Y53_N21
\DUT|MEMORY|mySRAM~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~22_q\);

-- Location: FF_X56_Y53_N11
\DUT|MEMORY|mySRAM~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~14_q\);

-- Location: LCCOMB_X56_Y53_N10
\DUT|MEMORY|mySRAM~284\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~284_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~22_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~14_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~22_q\,
	datac => \DUT|MEMORY|mySRAM~14_q\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~284_combout\);

-- Location: FF_X55_Y53_N31
\DUT|MEMORY|mySRAM~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~38_q\);

-- Location: LCCOMB_X56_Y53_N4
\DUT|MEMORY|mySRAM~30feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~30feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~30feeder_combout\);

-- Location: FF_X56_Y53_N5
\DUT|MEMORY|mySRAM~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~30feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~30_q\);

-- Location: LCCOMB_X55_Y53_N30
\DUT|MEMORY|mySRAM~285\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~285_combout\ = (\DUT|MEMORY|mySRAM~284_combout\ & (((\DUT|MEMORY|mySRAM~38_q\)) # (!\SW[1]~input_o\))) # (!\DUT|MEMORY|mySRAM~284_combout\ & (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~30_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~284_combout\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~38_q\,
	datad => \DUT|MEMORY|mySRAM~30_q\,
	combout => \DUT|MEMORY|mySRAM~285_combout\);

-- Location: LCCOMB_X57_Y52_N0
\DUT|MEMORY|mySRAM~286\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~286_combout\ = (\SW[3]~input_o\ & (\SW[2]~input_o\)) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & (\DUT|MEMORY|mySRAM~283_combout\)) # (!\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~285_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~283_combout\,
	datad => \DUT|MEMORY|mySRAM~285_combout\,
	combout => \DUT|MEMORY|mySRAM~286_combout\);

-- Location: LCCOMB_X58_Y49_N12
\DUT|MEMORY|mySRAM~94feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~94feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~94feeder_combout\);

-- Location: FF_X58_Y49_N13
\DUT|MEMORY|mySRAM~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~94feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~94_q\);

-- Location: FF_X57_Y49_N5
\DUT|MEMORY|mySRAM~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~102_q\);

-- Location: FF_X58_Y49_N27
\DUT|MEMORY|mySRAM~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~78_q\);

-- Location: LCCOMB_X58_Y50_N26
\DUT|MEMORY|mySRAM~86feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~86feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~86feeder_combout\);

-- Location: FF_X58_Y50_N27
\DUT|MEMORY|mySRAM~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~86feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~86_q\);

-- Location: LCCOMB_X58_Y49_N26
\DUT|MEMORY|mySRAM~280\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~280_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~86_q\))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~78_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~78_q\,
	datad => \DUT|MEMORY|mySRAM~86_q\,
	combout => \DUT|MEMORY|mySRAM~280_combout\);

-- Location: LCCOMB_X57_Y49_N4
\DUT|MEMORY|mySRAM~281\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~281_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~280_combout\ & ((\DUT|MEMORY|mySRAM~102_q\))) # (!\DUT|MEMORY|mySRAM~280_combout\ & (\DUT|MEMORY|mySRAM~94_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|MEMORY|mySRAM~94_q\,
	datac => \DUT|MEMORY|mySRAM~102_q\,
	datad => \DUT|MEMORY|mySRAM~280_combout\,
	combout => \DUT|MEMORY|mySRAM~281_combout\);

-- Location: LCCOMB_X57_Y52_N22
\DUT|MEMORY|mySRAM~289\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~289_combout\ = (\DUT|MEMORY|mySRAM~286_combout\ & ((\DUT|MEMORY|mySRAM~288_combout\) # ((!\SW[3]~input_o\)))) # (!\DUT|MEMORY|mySRAM~286_combout\ & (((\DUT|MEMORY|mySRAM~281_combout\ & \SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~288_combout\,
	datab => \DUT|MEMORY|mySRAM~286_combout\,
	datac => \DUT|MEMORY|mySRAM~281_combout\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~289_combout\);

-- Location: FF_X57_Y50_N5
\DUT|MEMORY|mySRAM~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~158_q\);

-- Location: LCCOMB_X58_Y50_N28
\DUT|MEMORY|mySRAM~222feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~222feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~222feeder_combout\);

-- Location: FF_X58_Y50_N29
\DUT|MEMORY|mySRAM~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~222feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~222_q\);

-- Location: LCCOMB_X57_Y50_N4
\DUT|MEMORY|mySRAM~270\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~270_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~222_q\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~158_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~158_q\,
	datad => \DUT|MEMORY|mySRAM~222_q\,
	combout => \DUT|MEMORY|mySRAM~270_combout\);

-- Location: FF_X57_Y52_N5
\DUT|MEMORY|mySRAM~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~190_q\);

-- Location: FF_X57_Y52_N31
\DUT|MEMORY|mySRAM~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~254_q\);

-- Location: LCCOMB_X57_Y52_N30
\DUT|MEMORY|mySRAM~271\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~271_combout\ = (\DUT|MEMORY|mySRAM~270_combout\ & (((\DUT|MEMORY|mySRAM~254_q\) # (!\SW[2]~input_o\)))) # (!\DUT|MEMORY|mySRAM~270_combout\ & (\DUT|MEMORY|mySRAM~190_q\ & ((\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~270_combout\,
	datab => \DUT|MEMORY|mySRAM~190_q\,
	datac => \DUT|MEMORY|mySRAM~254_q\,
	datad => \SW[2]~input_o\,
	combout => \DUT|MEMORY|mySRAM~271_combout\);

-- Location: LCCOMB_X58_Y53_N16
\DUT|MEMORY|mySRAM~230feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~230feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~230feeder_combout\);

-- Location: FF_X58_Y53_N17
\DUT|MEMORY|mySRAM~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~230feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~230_q\);

-- Location: FF_X57_Y53_N31
\DUT|MEMORY|mySRAM~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~262_q\);

-- Location: FF_X58_Y53_N27
\DUT|MEMORY|mySRAM~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~166_q\);

-- Location: FF_X57_Y53_N25
\DUT|MEMORY|mySRAM~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~198_q\);

-- Location: LCCOMB_X58_Y53_N26
\DUT|MEMORY|mySRAM~277\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~277_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\DUT|MEMORY|mySRAM~198_q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~166_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~166_q\,
	datad => \DUT|MEMORY|mySRAM~198_q\,
	combout => \DUT|MEMORY|mySRAM~277_combout\);

-- Location: LCCOMB_X57_Y53_N30
\DUT|MEMORY|mySRAM~278\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~278_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~277_combout\ & ((\DUT|MEMORY|mySRAM~262_q\))) # (!\DUT|MEMORY|mySRAM~277_combout\ & (\DUT|MEMORY|mySRAM~230_q\)))) # (!\SW[3]~input_o\ & (((\DUT|MEMORY|mySRAM~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~230_q\,
	datac => \DUT|MEMORY|mySRAM~262_q\,
	datad => \DUT|MEMORY|mySRAM~277_combout\,
	combout => \DUT|MEMORY|mySRAM~278_combout\);

-- Location: LCCOMB_X59_Y51_N16
\DUT|MEMORY|mySRAM~174feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~174feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~174feeder_combout\);

-- Location: FF_X59_Y51_N17
\DUT|MEMORY|mySRAM~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~174feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~174_q\);

-- Location: FF_X58_Y51_N3
\DUT|MEMORY|mySRAM~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~238_q\);

-- Location: FF_X59_Y51_N3
\DUT|MEMORY|mySRAM~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~142_q\);

-- Location: FF_X58_Y51_N25
\DUT|MEMORY|mySRAM~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~206_q\);

-- Location: LCCOMB_X59_Y51_N2
\DUT|MEMORY|mySRAM~274\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~274_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~206_q\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~142_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~142_q\,
	datad => \DUT|MEMORY|mySRAM~206_q\,
	combout => \DUT|MEMORY|mySRAM~274_combout\);

-- Location: LCCOMB_X58_Y51_N2
\DUT|MEMORY|mySRAM~275\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~275_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~274_combout\ & ((\DUT|MEMORY|mySRAM~238_q\))) # (!\DUT|MEMORY|mySRAM~274_combout\ & (\DUT|MEMORY|mySRAM~174_q\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~174_q\,
	datac => \DUT|MEMORY|mySRAM~238_q\,
	datad => \DUT|MEMORY|mySRAM~274_combout\,
	combout => \DUT|MEMORY|mySRAM~275_combout\);

-- Location: LCCOMB_X55_Y52_N4
\DUT|MEMORY|mySRAM~182feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~182feeder_combout\ = \SW[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[5]~input_o\,
	combout => \DUT|MEMORY|mySRAM~182feeder_combout\);

-- Location: FF_X55_Y52_N5
\DUT|MEMORY|mySRAM~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~182feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~182_q\);

-- Location: FF_X55_Y52_N15
\DUT|MEMORY|mySRAM~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~150_q\);

-- Location: LCCOMB_X55_Y52_N14
\DUT|MEMORY|mySRAM~272\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~272_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~182_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~150_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~182_q\,
	datac => \DUT|MEMORY|mySRAM~150_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~272_combout\);

-- Location: FF_X56_Y52_N23
\DUT|MEMORY|mySRAM~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~246_q\);

-- Location: FF_X56_Y52_N13
\DUT|MEMORY|mySRAM~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~214_q\);

-- Location: LCCOMB_X56_Y52_N22
\DUT|MEMORY|mySRAM~273\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~273_combout\ = (\DUT|MEMORY|mySRAM~272_combout\ & (((\DUT|MEMORY|mySRAM~246_q\)) # (!\SW[3]~input_o\))) # (!\DUT|MEMORY|mySRAM~272_combout\ & (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~214_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~272_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~246_q\,
	datad => \DUT|MEMORY|mySRAM~214_q\,
	combout => \DUT|MEMORY|mySRAM~273_combout\);

-- Location: LCCOMB_X57_Y52_N16
\DUT|MEMORY|mySRAM~276\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~276_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\) # (\DUT|MEMORY|mySRAM~273_combout\)))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~275_combout\ & (!\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~275_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \DUT|MEMORY|mySRAM~273_combout\,
	combout => \DUT|MEMORY|mySRAM~276_combout\);

-- Location: LCCOMB_X57_Y52_N26
\DUT|MEMORY|mySRAM~279\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~279_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~276_combout\ & ((\DUT|MEMORY|mySRAM~278_combout\))) # (!\DUT|MEMORY|mySRAM~276_combout\ & (\DUT|MEMORY|mySRAM~271_combout\)))) # (!\SW[1]~input_o\ & 
-- (((\DUT|MEMORY|mySRAM~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~271_combout\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~278_combout\,
	datad => \DUT|MEMORY|mySRAM~276_combout\,
	combout => \DUT|MEMORY|mySRAM~279_combout\);

-- Location: LCCOMB_X57_Y52_N28
\DUT|MEMORY|mySRAM~290\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~290_combout\ = (\SW[4]~input_o\ & ((\DUT|MEMORY|mySRAM~279_combout\))) # (!\SW[4]~input_o\ & (\DUT|MEMORY|mySRAM~289_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~289_combout\,
	datab => \SW[4]~input_o\,
	datac => \DUT|MEMORY|mySRAM~279_combout\,
	combout => \DUT|MEMORY|mySRAM~290_combout\);

-- Location: LCCOMB_X55_Y52_N8
\DUT|MEMORY|mySRAM~184feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~184feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \DUT|MEMORY|mySRAM~184feeder_combout\);

-- Location: FF_X55_Y52_N9
\DUT|MEMORY|mySRAM~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~184feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~184_q\);

-- Location: FF_X55_Y52_N11
\DUT|MEMORY|mySRAM~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~152_q\);

-- Location: LCCOMB_X55_Y52_N10
\DUT|MEMORY|mySRAM~314\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~314_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~184_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~152_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~184_q\,
	datac => \DUT|MEMORY|mySRAM~152_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~314_combout\);

-- Location: FF_X56_Y52_N27
\DUT|MEMORY|mySRAM~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~248_q\);

-- Location: FF_X56_Y52_N1
\DUT|MEMORY|mySRAM~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~216_q\);

-- Location: LCCOMB_X56_Y52_N26
\DUT|MEMORY|mySRAM~315\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~315_combout\ = (\DUT|MEMORY|mySRAM~314_combout\ & (((\DUT|MEMORY|mySRAM~248_q\)) # (!\SW[3]~input_o\))) # (!\DUT|MEMORY|mySRAM~314_combout\ & (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~216_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~314_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~248_q\,
	datad => \DUT|MEMORY|mySRAM~216_q\,
	combout => \DUT|MEMORY|mySRAM~315_combout\);

-- Location: FF_X59_Y51_N11
\DUT|MEMORY|mySRAM~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~144_q\);

-- Location: FF_X58_Y51_N9
\DUT|MEMORY|mySRAM~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~208_q\);

-- Location: LCCOMB_X59_Y51_N10
\DUT|MEMORY|mySRAM~316\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~316_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~208_q\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~144_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~144_q\,
	datad => \DUT|MEMORY|mySRAM~208_q\,
	combout => \DUT|MEMORY|mySRAM~316_combout\);

-- Location: FF_X58_Y51_N23
\DUT|MEMORY|mySRAM~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~240_q\);

-- Location: FF_X59_Y51_N5
\DUT|MEMORY|mySRAM~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~176_q\);

-- Location: LCCOMB_X58_Y51_N22
\DUT|MEMORY|mySRAM~317\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~317_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~316_combout\ & (\DUT|MEMORY|mySRAM~240_q\)) # (!\DUT|MEMORY|mySRAM~316_combout\ & ((\DUT|MEMORY|mySRAM~176_q\))))) # (!\SW[2]~input_o\ & (\DUT|MEMORY|mySRAM~316_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~316_combout\,
	datac => \DUT|MEMORY|mySRAM~240_q\,
	datad => \DUT|MEMORY|mySRAM~176_q\,
	combout => \DUT|MEMORY|mySRAM~317_combout\);

-- Location: LCCOMB_X57_Y52_N14
\DUT|MEMORY|mySRAM~318\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~318_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~315_combout\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((!\SW[1]~input_o\ & \DUT|MEMORY|mySRAM~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~315_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \DUT|MEMORY|mySRAM~317_combout\,
	combout => \DUT|MEMORY|mySRAM~318_combout\);

-- Location: FF_X58_Y53_N21
\DUT|MEMORY|mySRAM~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~232_q\);

-- Location: FF_X58_Y53_N23
\DUT|MEMORY|mySRAM~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~168_q\);

-- Location: FF_X57_Y53_N9
\DUT|MEMORY|mySRAM~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~200_q\);

-- Location: LCCOMB_X58_Y53_N22
\DUT|MEMORY|mySRAM~319\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~319_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\DUT|MEMORY|mySRAM~200_q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~168_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~168_q\,
	datad => \DUT|MEMORY|mySRAM~200_q\,
	combout => \DUT|MEMORY|mySRAM~319_combout\);

-- Location: FF_X57_Y53_N27
\DUT|MEMORY|mySRAM~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~264_q\);

-- Location: LCCOMB_X57_Y53_N26
\DUT|MEMORY|mySRAM~320\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~320_combout\ = (\DUT|MEMORY|mySRAM~319_combout\ & (((\DUT|MEMORY|mySRAM~264_q\) # (!\SW[3]~input_o\)))) # (!\DUT|MEMORY|mySRAM~319_combout\ & (\DUT|MEMORY|mySRAM~232_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~232_q\,
	datab => \DUT|MEMORY|mySRAM~319_combout\,
	datac => \DUT|MEMORY|mySRAM~264_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~320_combout\);

-- Location: LCCOMB_X54_Y50_N18
\DUT|MEMORY|mySRAM~192feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~192feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \DUT|MEMORY|mySRAM~192feeder_combout\);

-- Location: FF_X54_Y50_N19
\DUT|MEMORY|mySRAM~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~192feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~192_q\);

-- Location: FF_X57_Y50_N27
\DUT|MEMORY|mySRAM~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~256_q\);

-- Location: LCCOMB_X58_Y50_N2
\DUT|MEMORY|mySRAM~224feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~224feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \DUT|MEMORY|mySRAM~224feeder_combout\);

-- Location: FF_X58_Y50_N3
\DUT|MEMORY|mySRAM~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~224feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~224_q\);

-- Location: FF_X57_Y50_N29
\DUT|MEMORY|mySRAM~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~160_q\);

-- Location: LCCOMB_X57_Y50_N28
\DUT|MEMORY|mySRAM~312\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~312_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~224_q\)) # (!\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~160_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~224_q\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~160_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~312_combout\);

-- Location: LCCOMB_X57_Y50_N26
\DUT|MEMORY|mySRAM~313\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~313_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~312_combout\ & ((\DUT|MEMORY|mySRAM~256_q\))) # (!\DUT|MEMORY|mySRAM~312_combout\ & (\DUT|MEMORY|mySRAM~192_q\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~192_q\,
	datac => \DUT|MEMORY|mySRAM~256_q\,
	datad => \DUT|MEMORY|mySRAM~312_combout\,
	combout => \DUT|MEMORY|mySRAM~313_combout\);

-- Location: LCCOMB_X58_Y52_N14
\DUT|MEMORY|mySRAM~321\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~321_combout\ = (\DUT|MEMORY|mySRAM~318_combout\ & ((\DUT|MEMORY|mySRAM~320_combout\) # ((!\SW[1]~input_o\)))) # (!\DUT|MEMORY|mySRAM~318_combout\ & (((\DUT|MEMORY|mySRAM~313_combout\ & \SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~318_combout\,
	datab => \DUT|MEMORY|mySRAM~320_combout\,
	datac => \DUT|MEMORY|mySRAM~313_combout\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~321_combout\);

-- Location: FF_X54_Y51_N19
\DUT|MEMORY|mySRAM~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~48_q\);

-- Location: FF_X55_Y51_N17
\DUT|MEMORY|mySRAM~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~64_q\);

-- Location: LCCOMB_X54_Y51_N18
\DUT|MEMORY|mySRAM~324\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~324_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~64_q\))) # (!\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~48_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~48_q\,
	datad => \DUT|MEMORY|mySRAM~64_q\,
	combout => \DUT|MEMORY|mySRAM~324_combout\);

-- Location: FF_X54_Y51_N5
\DUT|MEMORY|mySRAM~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~56_q\);

-- Location: FF_X55_Y51_N3
\DUT|MEMORY|mySRAM~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~72_q\);

-- Location: LCCOMB_X55_Y51_N2
\DUT|MEMORY|mySRAM~325\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~325_combout\ = (\DUT|MEMORY|mySRAM~324_combout\ & (((\DUT|MEMORY|mySRAM~72_q\) # (!\SW[0]~input_o\)))) # (!\DUT|MEMORY|mySRAM~324_combout\ & (\DUT|MEMORY|mySRAM~56_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~324_combout\,
	datab => \DUT|MEMORY|mySRAM~56_q\,
	datac => \DUT|MEMORY|mySRAM~72_q\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~325_combout\);

-- Location: FF_X55_Y53_N25
\DUT|MEMORY|mySRAM~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~24_q\);

-- Location: FF_X56_Y53_N3
\DUT|MEMORY|mySRAM~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~16_q\);

-- Location: LCCOMB_X56_Y53_N2
\DUT|MEMORY|mySRAM~326\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~326_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~24_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~16_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~24_q\,
	datac => \DUT|MEMORY|mySRAM~16_q\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~326_combout\);

-- Location: FF_X55_Y53_N11
\DUT|MEMORY|mySRAM~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~40_q\);

-- Location: FF_X56_Y53_N17
\DUT|MEMORY|mySRAM~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~32_q\);

-- Location: LCCOMB_X55_Y53_N10
\DUT|MEMORY|mySRAM~327\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~327_combout\ = (\DUT|MEMORY|mySRAM~326_combout\ & (((\DUT|MEMORY|mySRAM~40_q\)) # (!\SW[1]~input_o\))) # (!\DUT|MEMORY|mySRAM~326_combout\ & (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~32_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~326_combout\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~40_q\,
	datad => \DUT|MEMORY|mySRAM~32_q\,
	combout => \DUT|MEMORY|mySRAM~327_combout\);

-- Location: LCCOMB_X59_Y52_N12
\DUT|MEMORY|mySRAM~328\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~328_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~325_combout\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((!\SW[3]~input_o\ & \DUT|MEMORY|mySRAM~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~325_combout\,
	datab => \SW[2]~input_o\,
	datac => \SW[3]~input_o\,
	datad => \DUT|MEMORY|mySRAM~327_combout\,
	combout => \DUT|MEMORY|mySRAM~328_combout\);

-- Location: FF_X55_Y50_N11
\DUT|MEMORY|mySRAM~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~112_q\);

-- Location: LCCOMB_X54_Y50_N8
\DUT|MEMORY|mySRAM~128feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~128feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \DUT|MEMORY|mySRAM~128feeder_combout\);

-- Location: FF_X54_Y50_N9
\DUT|MEMORY|mySRAM~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~128feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~128_q\);

-- Location: LCCOMB_X55_Y50_N10
\DUT|MEMORY|mySRAM~329\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~329_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\DUT|MEMORY|mySRAM~128_q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~112_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~112_q\,
	datad => \DUT|MEMORY|mySRAM~128_q\,
	combout => \DUT|MEMORY|mySRAM~329_combout\);

-- Location: FF_X56_Y50_N9
\DUT|MEMORY|mySRAM~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~136_q\);

-- Location: FF_X56_Y50_N11
\DUT|MEMORY|mySRAM~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~120_q\);

-- Location: LCCOMB_X56_Y50_N8
\DUT|MEMORY|mySRAM~330\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~330_combout\ = (\DUT|MEMORY|mySRAM~329_combout\ & (((\DUT|MEMORY|mySRAM~136_q\)) # (!\SW[0]~input_o\))) # (!\DUT|MEMORY|mySRAM~329_combout\ & (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~120_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~329_combout\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~136_q\,
	datad => \DUT|MEMORY|mySRAM~120_q\,
	combout => \DUT|MEMORY|mySRAM~330_combout\);

-- Location: FF_X58_Y49_N21
\DUT|MEMORY|mySRAM~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~96_q\);

-- Location: FF_X59_Y52_N7
\DUT|MEMORY|mySRAM~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~104_q\);

-- Location: FF_X58_Y49_N15
\DUT|MEMORY|mySRAM~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[6]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~80_q\);

-- Location: LCCOMB_X58_Y50_N20
\DUT|MEMORY|mySRAM~88feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~88feeder_combout\ = \SW[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[6]~input_o\,
	combout => \DUT|MEMORY|mySRAM~88feeder_combout\);

-- Location: FF_X58_Y50_N21
\DUT|MEMORY|mySRAM~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~88feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~88_q\);

-- Location: LCCOMB_X58_Y49_N14
\DUT|MEMORY|mySRAM~322\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~322_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~88_q\))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~80_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~80_q\,
	datad => \DUT|MEMORY|mySRAM~88_q\,
	combout => \DUT|MEMORY|mySRAM~322_combout\);

-- Location: LCCOMB_X59_Y52_N6
\DUT|MEMORY|mySRAM~323\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~323_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~322_combout\ & ((\DUT|MEMORY|mySRAM~104_q\))) # (!\DUT|MEMORY|mySRAM~322_combout\ & (\DUT|MEMORY|mySRAM~96_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|MEMORY|mySRAM~96_q\,
	datac => \DUT|MEMORY|mySRAM~104_q\,
	datad => \DUT|MEMORY|mySRAM~322_combout\,
	combout => \DUT|MEMORY|mySRAM~323_combout\);

-- Location: LCCOMB_X59_Y52_N10
\DUT|MEMORY|mySRAM~331\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~331_combout\ = (\DUT|MEMORY|mySRAM~328_combout\ & ((\DUT|MEMORY|mySRAM~330_combout\) # ((!\SW[3]~input_o\)))) # (!\DUT|MEMORY|mySRAM~328_combout\ & (((\SW[3]~input_o\ & \DUT|MEMORY|mySRAM~323_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~328_combout\,
	datab => \DUT|MEMORY|mySRAM~330_combout\,
	datac => \SW[3]~input_o\,
	datad => \DUT|MEMORY|mySRAM~323_combout\,
	combout => \DUT|MEMORY|mySRAM~331_combout\);

-- Location: LCCOMB_X59_Y52_N8
\DUT|MEMORY|mySRAM~332\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~332_combout\ = (\SW[4]~input_o\ & (\DUT|MEMORY|mySRAM~321_combout\)) # (!\SW[4]~input_o\ & ((\DUT|MEMORY|mySRAM~331_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~321_combout\,
	datac => \SW[4]~input_o\,
	datad => \DUT|MEMORY|mySRAM~331_combout\,
	combout => \DUT|MEMORY|mySRAM~332_combout\);

-- Location: LCCOMB_X77_Y40_N16
\DUT|SSEG_E_DEC|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_E_DEC|Mux7~0_combout\ = (\DUT|MEMORY|mySRAM~311_combout\ & (\DUT|MEMORY|mySRAM~353_combout\ & (\DUT|MEMORY|mySRAM~290_combout\ & !\DUT|MEMORY|mySRAM~332_combout\))) # (!\DUT|MEMORY|mySRAM~311_combout\ & (\DUT|MEMORY|mySRAM~332_combout\ $ 
-- (((!\DUT|MEMORY|mySRAM~353_combout\ & \DUT|MEMORY|mySRAM~290_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~353_combout\,
	datab => \DUT|MEMORY|mySRAM~311_combout\,
	datac => \DUT|MEMORY|mySRAM~290_combout\,
	datad => \DUT|MEMORY|mySRAM~332_combout\,
	combout => \DUT|SSEG_E_DEC|Mux7~0_combout\);

-- Location: LCCOMB_X77_Y40_N14
\DUT|SSEG_E_DEC|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_E_DEC|Mux6~0_combout\ = (\DUT|MEMORY|mySRAM~353_combout\ & ((\DUT|MEMORY|mySRAM~290_combout\ & (\DUT|MEMORY|mySRAM~311_combout\)) # (!\DUT|MEMORY|mySRAM~290_combout\ & ((\DUT|MEMORY|mySRAM~332_combout\))))) # (!\DUT|MEMORY|mySRAM~353_combout\ & 
-- (\DUT|MEMORY|mySRAM~332_combout\ & (\DUT|MEMORY|mySRAM~311_combout\ $ (\DUT|MEMORY|mySRAM~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~353_combout\,
	datab => \DUT|MEMORY|mySRAM~311_combout\,
	datac => \DUT|MEMORY|mySRAM~290_combout\,
	datad => \DUT|MEMORY|mySRAM~332_combout\,
	combout => \DUT|SSEG_E_DEC|Mux6~0_combout\);

-- Location: LCCOMB_X77_Y40_N4
\DUT|SSEG_E_DEC|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_E_DEC|Mux5~0_combout\ = (\DUT|MEMORY|mySRAM~353_combout\ & (\DUT|MEMORY|mySRAM~332_combout\ & ((\DUT|MEMORY|mySRAM~311_combout\) # (!\DUT|MEMORY|mySRAM~290_combout\)))) # (!\DUT|MEMORY|mySRAM~353_combout\ & (\DUT|MEMORY|mySRAM~311_combout\ & 
-- (!\DUT|MEMORY|mySRAM~290_combout\ & !\DUT|MEMORY|mySRAM~332_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~353_combout\,
	datab => \DUT|MEMORY|mySRAM~311_combout\,
	datac => \DUT|MEMORY|mySRAM~290_combout\,
	datad => \DUT|MEMORY|mySRAM~332_combout\,
	combout => \DUT|SSEG_E_DEC|Mux5~0_combout\);

-- Location: LCCOMB_X77_Y40_N2
\DUT|SSEG_E_DEC|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_E_DEC|Mux4~0_combout\ = (\DUT|MEMORY|mySRAM~311_combout\ & ((\DUT|MEMORY|mySRAM~290_combout\ & ((\DUT|MEMORY|mySRAM~332_combout\))) # (!\DUT|MEMORY|mySRAM~290_combout\ & (\DUT|MEMORY|mySRAM~353_combout\ & !\DUT|MEMORY|mySRAM~332_combout\)))) # 
-- (!\DUT|MEMORY|mySRAM~311_combout\ & (!\DUT|MEMORY|mySRAM~353_combout\ & (\DUT|MEMORY|mySRAM~290_combout\ $ (\DUT|MEMORY|mySRAM~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~353_combout\,
	datab => \DUT|MEMORY|mySRAM~311_combout\,
	datac => \DUT|MEMORY|mySRAM~290_combout\,
	datad => \DUT|MEMORY|mySRAM~332_combout\,
	combout => \DUT|SSEG_E_DEC|Mux4~0_combout\);

-- Location: LCCOMB_X77_Y40_N12
\DUT|SSEG_E_DEC|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_E_DEC|Mux3~0_combout\ = (\DUT|MEMORY|mySRAM~311_combout\ & (!\DUT|MEMORY|mySRAM~353_combout\ & (\DUT|MEMORY|mySRAM~290_combout\))) # (!\DUT|MEMORY|mySRAM~311_combout\ & ((\DUT|MEMORY|mySRAM~332_combout\ & (!\DUT|MEMORY|mySRAM~353_combout\)) # 
-- (!\DUT|MEMORY|mySRAM~332_combout\ & ((\DUT|MEMORY|mySRAM~290_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~353_combout\,
	datab => \DUT|MEMORY|mySRAM~311_combout\,
	datac => \DUT|MEMORY|mySRAM~290_combout\,
	datad => \DUT|MEMORY|mySRAM~332_combout\,
	combout => \DUT|SSEG_E_DEC|Mux3~0_combout\);

-- Location: LCCOMB_X77_Y40_N22
\DUT|SSEG_E_DEC|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_E_DEC|Mux2~0_combout\ = (\DUT|MEMORY|mySRAM~353_combout\ & (!\DUT|MEMORY|mySRAM~311_combout\ & ((\DUT|MEMORY|mySRAM~332_combout\)))) # (!\DUT|MEMORY|mySRAM~353_combout\ & (!\DUT|MEMORY|mySRAM~332_combout\ & ((\DUT|MEMORY|mySRAM~311_combout\) # 
-- (\DUT|MEMORY|mySRAM~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~353_combout\,
	datab => \DUT|MEMORY|mySRAM~311_combout\,
	datac => \DUT|MEMORY|mySRAM~290_combout\,
	datad => \DUT|MEMORY|mySRAM~332_combout\,
	combout => \DUT|SSEG_E_DEC|Mux2~0_combout\);

-- Location: LCCOMB_X77_Y40_N20
\DUT|SSEG_E_DEC|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_E_DEC|Mux1~0_combout\ = (\DUT|MEMORY|mySRAM~353_combout\) # ((\DUT|MEMORY|mySRAM~311_combout\ & ((!\DUT|MEMORY|mySRAM~332_combout\) # (!\DUT|MEMORY|mySRAM~290_combout\))) # (!\DUT|MEMORY|mySRAM~311_combout\ & 
-- ((\DUT|MEMORY|mySRAM~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~353_combout\,
	datab => \DUT|MEMORY|mySRAM~311_combout\,
	datac => \DUT|MEMORY|mySRAM~290_combout\,
	datad => \DUT|MEMORY|mySRAM~332_combout\,
	combout => \DUT|SSEG_E_DEC|Mux1~0_combout\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X54_Y50_N3
\DUT|MEMORY|mySRAM~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~195_q\);

-- Location: FF_X57_Y50_N13
\DUT|MEMORY|mySRAM~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~163_q\);

-- Location: LCCOMB_X57_Y50_N12
\DUT|MEMORY|mySRAM~377\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~377_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~195_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~163_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~195_q\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~163_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~377_combout\);

-- Location: FF_X57_Y50_N15
\DUT|MEMORY|mySRAM~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~259_q\);

-- Location: LCCOMB_X58_Y50_N16
\DUT|MEMORY|mySRAM~227feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~227feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \DUT|MEMORY|mySRAM~227feeder_combout\);

-- Location: FF_X58_Y50_N17
\DUT|MEMORY|mySRAM~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~227feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~227_q\);

-- Location: LCCOMB_X57_Y50_N14
\DUT|MEMORY|mySRAM~378\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~378_combout\ = (\DUT|MEMORY|mySRAM~377_combout\ & (((\DUT|MEMORY|mySRAM~259_q\)) # (!\SW[3]~input_o\))) # (!\DUT|MEMORY|mySRAM~377_combout\ & (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~227_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~377_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~259_q\,
	datad => \DUT|MEMORY|mySRAM~227_q\,
	combout => \DUT|MEMORY|mySRAM~378_combout\);

-- Location: FF_X58_Y51_N1
\DUT|MEMORY|mySRAM~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~211_q\);

-- Location: FF_X58_Y51_N27
\DUT|MEMORY|mySRAM~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~243_q\);

-- Location: FF_X59_Y51_N27
\DUT|MEMORY|mySRAM~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~147_q\);

-- Location: FF_X59_Y51_N25
\DUT|MEMORY|mySRAM~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~179_q\);

-- Location: LCCOMB_X59_Y51_N26
\DUT|MEMORY|mySRAM~379\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~379_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\DUT|MEMORY|mySRAM~179_q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~147_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~147_q\,
	datad => \DUT|MEMORY|mySRAM~179_q\,
	combout => \DUT|MEMORY|mySRAM~379_combout\);

-- Location: LCCOMB_X58_Y51_N26
\DUT|MEMORY|mySRAM~380\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~380_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~379_combout\ & ((\DUT|MEMORY|mySRAM~243_q\))) # (!\DUT|MEMORY|mySRAM~379_combout\ & (\DUT|MEMORY|mySRAM~211_q\)))) # (!\SW[3]~input_o\ & (((\DUT|MEMORY|mySRAM~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~211_q\,
	datac => \DUT|MEMORY|mySRAM~243_q\,
	datad => \DUT|MEMORY|mySRAM~379_combout\,
	combout => \DUT|MEMORY|mySRAM~380_combout\);

-- Location: LCCOMB_X55_Y50_N22
\DUT|MEMORY|mySRAM~381\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~381_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~378_combout\)) # (!\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~380_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~378_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \DUT|MEMORY|mySRAM~380_combout\,
	combout => \DUT|MEMORY|mySRAM~381_combout\);

-- Location: FF_X56_Y52_N9
\DUT|MEMORY|mySRAM~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~219_q\);

-- Location: FF_X55_Y52_N23
\DUT|MEMORY|mySRAM~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~155_q\);

-- Location: LCCOMB_X55_Y52_N22
\DUT|MEMORY|mySRAM~375\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~375_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~219_q\)) # (!\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~155_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~219_q\,
	datac => \DUT|MEMORY|mySRAM~155_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~375_combout\);

-- Location: FF_X56_Y52_N31
\DUT|MEMORY|mySRAM~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~251_q\);

-- Location: FF_X55_Y52_N29
\DUT|MEMORY|mySRAM~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~187_q\);

-- Location: LCCOMB_X56_Y52_N30
\DUT|MEMORY|mySRAM~376\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~376_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~375_combout\ & (\DUT|MEMORY|mySRAM~251_q\)) # (!\DUT|MEMORY|mySRAM~375_combout\ & ((\DUT|MEMORY|mySRAM~187_q\))))) # (!\SW[2]~input_o\ & (\DUT|MEMORY|mySRAM~375_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~375_combout\,
	datac => \DUT|MEMORY|mySRAM~251_q\,
	datad => \DUT|MEMORY|mySRAM~187_q\,
	combout => \DUT|MEMORY|mySRAM~376_combout\);

-- Location: FF_X58_Y53_N11
\DUT|MEMORY|mySRAM~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~171_q\);

-- Location: FF_X58_Y53_N29
\DUT|MEMORY|mySRAM~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~235_q\);

-- Location: LCCOMB_X58_Y53_N10
\DUT|MEMORY|mySRAM~382\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~382_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~235_q\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~171_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~171_q\,
	datad => \DUT|MEMORY|mySRAM~235_q\,
	combout => \DUT|MEMORY|mySRAM~382_combout\);

-- Location: FF_X57_Y53_N11
\DUT|MEMORY|mySRAM~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~267_q\);

-- Location: FF_X57_Y53_N13
\DUT|MEMORY|mySRAM~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~203_q\);

-- Location: LCCOMB_X57_Y53_N10
\DUT|MEMORY|mySRAM~383\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~383_combout\ = (\DUT|MEMORY|mySRAM~382_combout\ & (((\DUT|MEMORY|mySRAM~267_q\)) # (!\SW[2]~input_o\))) # (!\DUT|MEMORY|mySRAM~382_combout\ & (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~203_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~382_combout\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~267_q\,
	datad => \DUT|MEMORY|mySRAM~203_q\,
	combout => \DUT|MEMORY|mySRAM~383_combout\);

-- Location: LCCOMB_X55_Y50_N4
\DUT|MEMORY|mySRAM~384\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~384_combout\ = (\DUT|MEMORY|mySRAM~381_combout\ & (((\DUT|MEMORY|mySRAM~383_combout\) # (!\SW[0]~input_o\)))) # (!\DUT|MEMORY|mySRAM~381_combout\ & (\DUT|MEMORY|mySRAM~376_combout\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~381_combout\,
	datab => \DUT|MEMORY|mySRAM~376_combout\,
	datac => \SW[0]~input_o\,
	datad => \DUT|MEMORY|mySRAM~383_combout\,
	combout => \DUT|MEMORY|mySRAM~384_combout\);

-- Location: FF_X55_Y51_N13
\DUT|MEMORY|mySRAM~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~67_q\);

-- Location: FF_X55_Y51_N27
\DUT|MEMORY|mySRAM~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~75_q\);

-- Location: FF_X54_Y51_N23
\DUT|MEMORY|mySRAM~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~51_q\);

-- Location: LCCOMB_X54_Y51_N24
\DUT|MEMORY|mySRAM~59feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~59feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \DUT|MEMORY|mySRAM~59feeder_combout\);

-- Location: FF_X54_Y51_N25
\DUT|MEMORY|mySRAM~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~59feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~59_q\);

-- Location: LCCOMB_X54_Y51_N22
\DUT|MEMORY|mySRAM~385\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~385_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\DUT|MEMORY|mySRAM~59_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~51_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~51_q\,
	datad => \DUT|MEMORY|mySRAM~59_q\,
	combout => \DUT|MEMORY|mySRAM~385_combout\);

-- Location: LCCOMB_X55_Y51_N26
\DUT|MEMORY|mySRAM~386\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~386_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~385_combout\ & ((\DUT|MEMORY|mySRAM~75_q\))) # (!\DUT|MEMORY|mySRAM~385_combout\ & (\DUT|MEMORY|mySRAM~67_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~67_q\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~75_q\,
	datad => \DUT|MEMORY|mySRAM~385_combout\,
	combout => \DUT|MEMORY|mySRAM~386_combout\);

-- Location: FF_X55_Y53_N9
\DUT|MEMORY|mySRAM~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~27_q\);

-- Location: FF_X55_Y53_N19
\DUT|MEMORY|mySRAM~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~43_q\);

-- Location: FF_X56_Y53_N1
\DUT|MEMORY|mySRAM~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~35_q\);

-- Location: FF_X56_Y53_N19
\DUT|MEMORY|mySRAM~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~19_q\);

-- Location: LCCOMB_X56_Y53_N18
\DUT|MEMORY|mySRAM~389\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~389_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~35_q\)) # (!\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~35_q\,
	datac => \DUT|MEMORY|mySRAM~19_q\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~389_combout\);

-- Location: LCCOMB_X55_Y53_N18
\DUT|MEMORY|mySRAM~390\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~390_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~389_combout\ & ((\DUT|MEMORY|mySRAM~43_q\))) # (!\DUT|MEMORY|mySRAM~389_combout\ & (\DUT|MEMORY|mySRAM~27_q\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~389_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~27_q\,
	datac => \DUT|MEMORY|mySRAM~43_q\,
	datad => \DUT|MEMORY|mySRAM~389_combout\,
	combout => \DUT|MEMORY|mySRAM~390_combout\);

-- Location: FF_X58_Y49_N31
\DUT|MEMORY|mySRAM~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~83_q\);

-- Location: FF_X58_Y49_N1
\DUT|MEMORY|mySRAM~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~99_q\);

-- Location: LCCOMB_X58_Y49_N30
\DUT|MEMORY|mySRAM~387\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~387_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\DUT|MEMORY|mySRAM~99_q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~83_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~83_q\,
	datad => \DUT|MEMORY|mySRAM~99_q\,
	combout => \DUT|MEMORY|mySRAM~387_combout\);

-- Location: FF_X57_Y49_N31
\DUT|MEMORY|mySRAM~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~107_q\);

-- Location: FF_X57_Y49_N29
\DUT|MEMORY|mySRAM~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~91_q\);

-- Location: LCCOMB_X57_Y49_N30
\DUT|MEMORY|mySRAM~388\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~388_combout\ = (\DUT|MEMORY|mySRAM~387_combout\ & (((\DUT|MEMORY|mySRAM~107_q\)) # (!\SW[0]~input_o\))) # (!\DUT|MEMORY|mySRAM~387_combout\ & (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~91_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~387_combout\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~107_q\,
	datad => \DUT|MEMORY|mySRAM~91_q\,
	combout => \DUT|MEMORY|mySRAM~388_combout\);

-- Location: LCCOMB_X56_Y49_N26
\DUT|MEMORY|mySRAM~391\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~391_combout\ = (\SW[3]~input_o\ & (((\DUT|MEMORY|mySRAM~388_combout\) # (\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~390_combout\ & ((!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~390_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~388_combout\,
	datad => \SW[2]~input_o\,
	combout => \DUT|MEMORY|mySRAM~391_combout\);

-- Location: FF_X54_Y50_N17
\DUT|MEMORY|mySRAM~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~131_q\);

-- Location: FF_X56_Y50_N13
\DUT|MEMORY|mySRAM~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~139_q\);

-- Location: FF_X55_Y50_N21
\DUT|MEMORY|mySRAM~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~115_q\);

-- Location: FF_X55_Y50_N3
\DUT|MEMORY|mySRAM~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~123_q\);

-- Location: LCCOMB_X55_Y50_N20
\DUT|MEMORY|mySRAM~392\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~392_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~123_q\))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~115_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~115_q\,
	datad => \DUT|MEMORY|mySRAM~123_q\,
	combout => \DUT|MEMORY|mySRAM~392_combout\);

-- Location: LCCOMB_X56_Y50_N12
\DUT|MEMORY|mySRAM~393\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~393_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~392_combout\ & ((\DUT|MEMORY|mySRAM~139_q\))) # (!\DUT|MEMORY|mySRAM~392_combout\ & (\DUT|MEMORY|mySRAM~131_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~131_q\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~139_q\,
	datad => \DUT|MEMORY|mySRAM~392_combout\,
	combout => \DUT|MEMORY|mySRAM~393_combout\);

-- Location: LCCOMB_X56_Y49_N28
\DUT|MEMORY|mySRAM~394\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~394_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~391_combout\ & ((\DUT|MEMORY|mySRAM~393_combout\))) # (!\DUT|MEMORY|mySRAM~391_combout\ & (\DUT|MEMORY|mySRAM~386_combout\)))) # (!\SW[2]~input_o\ & 
-- (((\DUT|MEMORY|mySRAM~391_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~386_combout\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~391_combout\,
	datad => \DUT|MEMORY|mySRAM~393_combout\,
	combout => \DUT|MEMORY|mySRAM~394_combout\);

-- Location: LCCOMB_X56_Y49_N6
\DUT|MEMORY|mySRAM~395\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~395_combout\ = (\SW[4]~input_o\ & (\DUT|MEMORY|mySRAM~384_combout\)) # (!\SW[4]~input_o\ & ((\DUT|MEMORY|mySRAM~394_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DUT|MEMORY|mySRAM~384_combout\,
	datac => \SW[4]~input_o\,
	datad => \DUT|MEMORY|mySRAM~394_combout\,
	combout => \DUT|MEMORY|mySRAM~395_combout\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LCCOMB_X54_Y50_N26
\DUT|MEMORY|mySRAM~196feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~196feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \DUT|MEMORY|mySRAM~196feeder_combout\);

-- Location: FF_X54_Y50_N27
\DUT|MEMORY|mySRAM~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~196feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~196_q\);

-- Location: FF_X57_Y50_N11
\DUT|MEMORY|mySRAM~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~260_q\);

-- Location: FF_X58_Y50_N19
\DUT|MEMORY|mySRAM~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~228_q\);

-- Location: FF_X57_Y50_N25
\DUT|MEMORY|mySRAM~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~164_q\);

-- Location: LCCOMB_X57_Y50_N24
\DUT|MEMORY|mySRAM~396\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~396_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~228_q\)) # (!\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~164_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~228_q\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~164_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~396_combout\);

-- Location: LCCOMB_X57_Y50_N10
\DUT|MEMORY|mySRAM~397\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~397_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~396_combout\ & ((\DUT|MEMORY|mySRAM~260_q\))) # (!\DUT|MEMORY|mySRAM~396_combout\ & (\DUT|MEMORY|mySRAM~196_q\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~196_q\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~260_q\,
	datad => \DUT|MEMORY|mySRAM~396_combout\,
	combout => \DUT|MEMORY|mySRAM~397_combout\);

-- Location: FF_X59_Y51_N29
\DUT|MEMORY|mySRAM~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~180_q\);

-- Location: FF_X58_Y51_N31
\DUT|MEMORY|mySRAM~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~244_q\);

-- Location: FF_X59_Y51_N19
\DUT|MEMORY|mySRAM~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~148_q\);

-- Location: LCCOMB_X58_Y51_N20
\DUT|MEMORY|mySRAM~212feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~212feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \DUT|MEMORY|mySRAM~212feeder_combout\);

-- Location: FF_X58_Y51_N21
\DUT|MEMORY|mySRAM~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~212feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~212_q\);

-- Location: LCCOMB_X59_Y51_N18
\DUT|MEMORY|mySRAM~400\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~400_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~212_q\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~148_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~148_q\,
	datad => \DUT|MEMORY|mySRAM~212_q\,
	combout => \DUT|MEMORY|mySRAM~400_combout\);

-- Location: LCCOMB_X58_Y51_N30
\DUT|MEMORY|mySRAM~401\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~401_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~400_combout\ & ((\DUT|MEMORY|mySRAM~244_q\))) # (!\DUT|MEMORY|mySRAM~400_combout\ & (\DUT|MEMORY|mySRAM~180_q\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~180_q\,
	datac => \DUT|MEMORY|mySRAM~244_q\,
	datad => \DUT|MEMORY|mySRAM~400_combout\,
	combout => \DUT|MEMORY|mySRAM~401_combout\);

-- Location: FF_X55_Y52_N17
\DUT|MEMORY|mySRAM~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~188_q\);

-- Location: FF_X55_Y52_N3
\DUT|MEMORY|mySRAM~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~156_q\);

-- Location: LCCOMB_X55_Y52_N2
\DUT|MEMORY|mySRAM~398\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~398_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~188_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~156_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~188_q\,
	datac => \DUT|MEMORY|mySRAM~156_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~398_combout\);

-- Location: FF_X56_Y52_N5
\DUT|MEMORY|mySRAM~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~220_q\);

-- Location: FF_X56_Y52_N7
\DUT|MEMORY|mySRAM~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~252_q\);

-- Location: LCCOMB_X56_Y52_N6
\DUT|MEMORY|mySRAM~399\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~399_combout\ = (\DUT|MEMORY|mySRAM~398_combout\ & (((\DUT|MEMORY|mySRAM~252_q\) # (!\SW[3]~input_o\)))) # (!\DUT|MEMORY|mySRAM~398_combout\ & (\DUT|MEMORY|mySRAM~220_q\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~398_combout\,
	datab => \DUT|MEMORY|mySRAM~220_q\,
	datac => \DUT|MEMORY|mySRAM~252_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~399_combout\);

-- Location: LCCOMB_X57_Y50_N20
\DUT|MEMORY|mySRAM~402\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~402_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~399_combout\))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~401_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~401_combout\,
	datad => \DUT|MEMORY|mySRAM~399_combout\,
	combout => \DUT|MEMORY|mySRAM~402_combout\);

-- Location: FF_X58_Y53_N9
\DUT|MEMORY|mySRAM~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~236_q\);

-- Location: FF_X57_Y53_N15
\DUT|MEMORY|mySRAM~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~268_q\);

-- Location: FF_X58_Y53_N19
\DUT|MEMORY|mySRAM~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~172_q\);

-- Location: FF_X57_Y53_N21
\DUT|MEMORY|mySRAM~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~204_q\);

-- Location: LCCOMB_X58_Y53_N18
\DUT|MEMORY|mySRAM~403\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~403_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\DUT|MEMORY|mySRAM~204_q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~172_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~172_q\,
	datad => \DUT|MEMORY|mySRAM~204_q\,
	combout => \DUT|MEMORY|mySRAM~403_combout\);

-- Location: LCCOMB_X57_Y53_N14
\DUT|MEMORY|mySRAM~404\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~404_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~403_combout\ & ((\DUT|MEMORY|mySRAM~268_q\))) # (!\DUT|MEMORY|mySRAM~403_combout\ & (\DUT|MEMORY|mySRAM~236_q\)))) # (!\SW[3]~input_o\ & (((\DUT|MEMORY|mySRAM~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~236_q\,
	datac => \DUT|MEMORY|mySRAM~268_q\,
	datad => \DUT|MEMORY|mySRAM~403_combout\,
	combout => \DUT|MEMORY|mySRAM~404_combout\);

-- Location: LCCOMB_X57_Y50_N18
\DUT|MEMORY|mySRAM~405\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~405_combout\ = (\DUT|MEMORY|mySRAM~402_combout\ & (((\DUT|MEMORY|mySRAM~404_combout\) # (!\SW[1]~input_o\)))) # (!\DUT|MEMORY|mySRAM~402_combout\ & (\DUT|MEMORY|mySRAM~397_combout\ & (\SW[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~397_combout\,
	datab => \DUT|MEMORY|mySRAM~402_combout\,
	datac => \SW[1]~input_o\,
	datad => \DUT|MEMORY|mySRAM~404_combout\,
	combout => \DUT|MEMORY|mySRAM~405_combout\);

-- Location: FF_X56_Y53_N21
\DUT|MEMORY|mySRAM~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~36_q\);

-- Location: FF_X55_Y53_N3
\DUT|MEMORY|mySRAM~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~44_q\);

-- Location: FF_X55_Y53_N5
\DUT|MEMORY|mySRAM~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~28_q\);

-- Location: FF_X56_Y53_N27
\DUT|MEMORY|mySRAM~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~20_q\);

-- Location: LCCOMB_X56_Y53_N26
\DUT|MEMORY|mySRAM~410\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~410_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~28_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~20_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~28_q\,
	datac => \DUT|MEMORY|mySRAM~20_q\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~410_combout\);

-- Location: LCCOMB_X55_Y53_N2
\DUT|MEMORY|mySRAM~411\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~411_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~410_combout\ & ((\DUT|MEMORY|mySRAM~44_q\))) # (!\DUT|MEMORY|mySRAM~410_combout\ & (\DUT|MEMORY|mySRAM~36_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~36_q\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~44_q\,
	datad => \DUT|MEMORY|mySRAM~410_combout\,
	combout => \DUT|MEMORY|mySRAM~411_combout\);

-- Location: FF_X54_Y51_N9
\DUT|MEMORY|mySRAM~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~60_q\);

-- Location: FF_X55_Y51_N15
\DUT|MEMORY|mySRAM~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~76_q\);

-- Location: FF_X54_Y51_N15
\DUT|MEMORY|mySRAM~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~52_q\);

-- Location: FF_X55_Y51_N5
\DUT|MEMORY|mySRAM~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~68_q\);

-- Location: LCCOMB_X54_Y51_N14
\DUT|MEMORY|mySRAM~408\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~408_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~68_q\))) # (!\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~52_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~52_q\,
	datad => \DUT|MEMORY|mySRAM~68_q\,
	combout => \DUT|MEMORY|mySRAM~408_combout\);

-- Location: LCCOMB_X55_Y51_N14
\DUT|MEMORY|mySRAM~409\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~409_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~408_combout\ & ((\DUT|MEMORY|mySRAM~76_q\))) # (!\DUT|MEMORY|mySRAM~408_combout\ & (\DUT|MEMORY|mySRAM~60_q\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~408_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~60_q\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~76_q\,
	datad => \DUT|MEMORY|mySRAM~408_combout\,
	combout => \DUT|MEMORY|mySRAM~409_combout\);

-- Location: LCCOMB_X56_Y49_N12
\DUT|MEMORY|mySRAM~412\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~412_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~409_combout\))) # (!\SW[2]~input_o\ & (\DUT|MEMORY|mySRAM~411_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~411_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~409_combout\,
	datad => \SW[2]~input_o\,
	combout => \DUT|MEMORY|mySRAM~412_combout\);

-- Location: FF_X55_Y50_N15
\DUT|MEMORY|mySRAM~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~116_q\);

-- Location: LCCOMB_X54_Y50_N28
\DUT|MEMORY|mySRAM~132feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~132feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \DUT|MEMORY|mySRAM~132feeder_combout\);

-- Location: FF_X54_Y50_N29
\DUT|MEMORY|mySRAM~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~132feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~132_q\);

-- Location: LCCOMB_X55_Y50_N14
\DUT|MEMORY|mySRAM~413\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~413_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\DUT|MEMORY|mySRAM~132_q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~116_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~116_q\,
	datad => \DUT|MEMORY|mySRAM~132_q\,
	combout => \DUT|MEMORY|mySRAM~413_combout\);

-- Location: FF_X56_Y50_N29
\DUT|MEMORY|mySRAM~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~140_q\);

-- Location: LCCOMB_X56_Y50_N6
\DUT|MEMORY|mySRAM~124feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~124feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \DUT|MEMORY|mySRAM~124feeder_combout\);

-- Location: FF_X56_Y50_N7
\DUT|MEMORY|mySRAM~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~124feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~124_q\);

-- Location: LCCOMB_X56_Y50_N28
\DUT|MEMORY|mySRAM~414\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~414_combout\ = (\DUT|MEMORY|mySRAM~413_combout\ & (((\DUT|MEMORY|mySRAM~140_q\)) # (!\SW[0]~input_o\))) # (!\DUT|MEMORY|mySRAM~413_combout\ & (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~124_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~413_combout\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~140_q\,
	datad => \DUT|MEMORY|mySRAM~124_q\,
	combout => \DUT|MEMORY|mySRAM~414_combout\);

-- Location: FF_X58_Y49_N29
\DUT|MEMORY|mySRAM~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~100_q\);

-- Location: FF_X57_Y49_N19
\DUT|MEMORY|mySRAM~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~108_q\);

-- Location: FF_X58_Y49_N7
\DUT|MEMORY|mySRAM~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~84_q\);

-- Location: FF_X57_Y49_N25
\DUT|MEMORY|mySRAM~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~92_q\);

-- Location: LCCOMB_X58_Y49_N6
\DUT|MEMORY|mySRAM~406\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~406_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~92_q\))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~84_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~84_q\,
	datad => \DUT|MEMORY|mySRAM~92_q\,
	combout => \DUT|MEMORY|mySRAM~406_combout\);

-- Location: LCCOMB_X57_Y49_N18
\DUT|MEMORY|mySRAM~407\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~407_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~406_combout\ & ((\DUT|MEMORY|mySRAM~108_q\))) # (!\DUT|MEMORY|mySRAM~406_combout\ & (\DUT|MEMORY|mySRAM~100_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|MEMORY|mySRAM~100_q\,
	datac => \DUT|MEMORY|mySRAM~108_q\,
	datad => \DUT|MEMORY|mySRAM~406_combout\,
	combout => \DUT|MEMORY|mySRAM~407_combout\);

-- Location: LCCOMB_X56_Y49_N2
\DUT|MEMORY|mySRAM~415\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~415_combout\ = (\DUT|MEMORY|mySRAM~412_combout\ & (((\DUT|MEMORY|mySRAM~414_combout\)) # (!\SW[3]~input_o\))) # (!\DUT|MEMORY|mySRAM~412_combout\ & (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~412_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~414_combout\,
	datad => \DUT|MEMORY|mySRAM~407_combout\,
	combout => \DUT|MEMORY|mySRAM~415_combout\);

-- Location: LCCOMB_X56_Y49_N8
\DUT|MEMORY|mySRAM~416\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~416_combout\ = (\SW[4]~input_o\ & (\DUT|MEMORY|mySRAM~405_combout\)) # (!\SW[4]~input_o\ & ((\DUT|MEMORY|mySRAM~415_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[4]~input_o\,
	datac => \DUT|MEMORY|mySRAM~405_combout\,
	datad => \DUT|MEMORY|mySRAM~415_combout\,
	combout => \DUT|MEMORY|mySRAM~416_combout\);

-- Location: FF_X54_Y51_N27
\DUT|MEMORY|mySRAM~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~53_q\);

-- Location: FF_X54_Y51_N1
\DUT|MEMORY|mySRAM~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~61_q\);

-- Location: LCCOMB_X54_Y51_N26
\DUT|MEMORY|mySRAM~427\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~427_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\) # ((\DUT|MEMORY|mySRAM~61_q\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~53_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~53_q\,
	datad => \DUT|MEMORY|mySRAM~61_q\,
	combout => \DUT|MEMORY|mySRAM~427_combout\);

-- Location: FF_X55_Y51_N11
\DUT|MEMORY|mySRAM~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~77_q\);

-- Location: FF_X55_Y51_N1
\DUT|MEMORY|mySRAM~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~69_q\);

-- Location: LCCOMB_X55_Y51_N10
\DUT|MEMORY|mySRAM~428\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~428_combout\ = (\DUT|MEMORY|mySRAM~427_combout\ & (((\DUT|MEMORY|mySRAM~77_q\)) # (!\SW[1]~input_o\))) # (!\DUT|MEMORY|mySRAM~427_combout\ & (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~69_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~427_combout\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~77_q\,
	datad => \DUT|MEMORY|mySRAM~69_q\,
	combout => \DUT|MEMORY|mySRAM~428_combout\);

-- Location: LCCOMB_X54_Y50_N20
\DUT|MEMORY|mySRAM~133feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~133feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \DUT|MEMORY|mySRAM~133feeder_combout\);

-- Location: FF_X54_Y50_N21
\DUT|MEMORY|mySRAM~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~133feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~133_q\);

-- Location: FF_X56_Y50_N3
\DUT|MEMORY|mySRAM~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~141_q\);

-- Location: FF_X55_Y50_N31
\DUT|MEMORY|mySRAM~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~117_q\);

-- Location: FF_X55_Y50_N1
\DUT|MEMORY|mySRAM~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~125_q\);

-- Location: LCCOMB_X55_Y50_N30
\DUT|MEMORY|mySRAM~434\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~434_combout\ = (\SW[1]~input_o\ & (\SW[0]~input_o\)) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~125_q\))) # (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~117_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~117_q\,
	datad => \DUT|MEMORY|mySRAM~125_q\,
	combout => \DUT|MEMORY|mySRAM~434_combout\);

-- Location: LCCOMB_X56_Y50_N2
\DUT|MEMORY|mySRAM~435\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~435_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~434_combout\ & ((\DUT|MEMORY|mySRAM~141_q\))) # (!\DUT|MEMORY|mySRAM~434_combout\ & (\DUT|MEMORY|mySRAM~133_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~434_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~133_q\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~141_q\,
	datad => \DUT|MEMORY|mySRAM~434_combout\,
	combout => \DUT|MEMORY|mySRAM~435_combout\);

-- Location: FF_X58_Y49_N3
\DUT|MEMORY|mySRAM~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~85_q\);

-- Location: FF_X58_Y49_N5
\DUT|MEMORY|mySRAM~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~101_q\);

-- Location: LCCOMB_X58_Y49_N2
\DUT|MEMORY|mySRAM~429\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~429_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\DUT|MEMORY|mySRAM~101_q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~85_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~85_q\,
	datad => \DUT|MEMORY|mySRAM~101_q\,
	combout => \DUT|MEMORY|mySRAM~429_combout\);

-- Location: FF_X57_Y49_N3
\DUT|MEMORY|mySRAM~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~109_q\);

-- Location: FF_X57_Y49_N17
\DUT|MEMORY|mySRAM~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~93_q\);

-- Location: LCCOMB_X57_Y49_N2
\DUT|MEMORY|mySRAM~430\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~430_combout\ = (\DUT|MEMORY|mySRAM~429_combout\ & (((\DUT|MEMORY|mySRAM~109_q\)) # (!\SW[0]~input_o\))) # (!\DUT|MEMORY|mySRAM~429_combout\ & (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~93_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~429_combout\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~109_q\,
	datad => \DUT|MEMORY|mySRAM~93_q\,
	combout => \DUT|MEMORY|mySRAM~430_combout\);

-- Location: FF_X55_Y53_N13
\DUT|MEMORY|mySRAM~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~29_q\);

-- Location: FF_X55_Y53_N15
\DUT|MEMORY|mySRAM~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~45_q\);

-- Location: FF_X56_Y53_N25
\DUT|MEMORY|mySRAM~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~37_q\);

-- Location: FF_X56_Y53_N7
\DUT|MEMORY|mySRAM~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~21_q\);

-- Location: LCCOMB_X56_Y53_N6
\DUT|MEMORY|mySRAM~431\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~431_combout\ = (\SW[0]~input_o\ & (((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~37_q\)) # (!\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~21_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~37_q\,
	datac => \DUT|MEMORY|mySRAM~21_q\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~431_combout\);

-- Location: LCCOMB_X55_Y53_N14
\DUT|MEMORY|mySRAM~432\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~432_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~431_combout\ & ((\DUT|MEMORY|mySRAM~45_q\))) # (!\DUT|MEMORY|mySRAM~431_combout\ & (\DUT|MEMORY|mySRAM~29_q\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~431_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~29_q\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~45_q\,
	datad => \DUT|MEMORY|mySRAM~431_combout\,
	combout => \DUT|MEMORY|mySRAM~432_combout\);

-- Location: LCCOMB_X56_Y49_N10
\DUT|MEMORY|mySRAM~433\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~433_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~430_combout\) # ((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (((\DUT|MEMORY|mySRAM~432_combout\ & !\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~430_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~432_combout\,
	datad => \SW[2]~input_o\,
	combout => \DUT|MEMORY|mySRAM~433_combout\);

-- Location: LCCOMB_X56_Y49_N4
\DUT|MEMORY|mySRAM~436\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~436_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~433_combout\ & ((\DUT|MEMORY|mySRAM~435_combout\))) # (!\DUT|MEMORY|mySRAM~433_combout\ & (\DUT|MEMORY|mySRAM~428_combout\)))) # (!\SW[2]~input_o\ & 
-- (((\DUT|MEMORY|mySRAM~433_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~428_combout\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~435_combout\,
	datad => \DUT|MEMORY|mySRAM~433_combout\,
	combout => \DUT|MEMORY|mySRAM~436_combout\);

-- Location: FF_X56_Y52_N29
\DUT|MEMORY|mySRAM~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~221_q\);

-- Location: FF_X55_Y52_N7
\DUT|MEMORY|mySRAM~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~157_q\);

-- Location: LCCOMB_X55_Y52_N6
\DUT|MEMORY|mySRAM~417\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~417_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~221_q\)) # (!\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~157_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~221_q\,
	datac => \DUT|MEMORY|mySRAM~157_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~417_combout\);

-- Location: FF_X56_Y52_N11
\DUT|MEMORY|mySRAM~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~253_q\);

-- Location: FF_X55_Y52_N21
\DUT|MEMORY|mySRAM~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~189_q\);

-- Location: LCCOMB_X56_Y52_N10
\DUT|MEMORY|mySRAM~418\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~418_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~417_combout\ & (\DUT|MEMORY|mySRAM~253_q\)) # (!\DUT|MEMORY|mySRAM~417_combout\ & ((\DUT|MEMORY|mySRAM~189_q\))))) # (!\SW[2]~input_o\ & (\DUT|MEMORY|mySRAM~417_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~417_combout\,
	datac => \DUT|MEMORY|mySRAM~253_q\,
	datad => \DUT|MEMORY|mySRAM~189_q\,
	combout => \DUT|MEMORY|mySRAM~418_combout\);

-- Location: LCCOMB_X54_Y50_N6
\DUT|MEMORY|mySRAM~197feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~197feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \DUT|MEMORY|mySRAM~197feeder_combout\);

-- Location: FF_X54_Y50_N7
\DUT|MEMORY|mySRAM~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~197feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~197_q\);

-- Location: FF_X57_Y50_N17
\DUT|MEMORY|mySRAM~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~165_q\);

-- Location: LCCOMB_X57_Y50_N16
\DUT|MEMORY|mySRAM~419\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~419_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~197_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~165_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~197_q\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~165_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~419_combout\);

-- Location: FF_X57_Y50_N31
\DUT|MEMORY|mySRAM~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~261_q\);

-- Location: FF_X58_Y50_N25
\DUT|MEMORY|mySRAM~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~229_q\);

-- Location: LCCOMB_X57_Y50_N30
\DUT|MEMORY|mySRAM~420\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~420_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~419_combout\ & (\DUT|MEMORY|mySRAM~261_q\)) # (!\DUT|MEMORY|mySRAM~419_combout\ & ((\DUT|MEMORY|mySRAM~229_q\))))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~419_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~419_combout\,
	datac => \DUT|MEMORY|mySRAM~261_q\,
	datad => \DUT|MEMORY|mySRAM~229_q\,
	combout => \DUT|MEMORY|mySRAM~420_combout\);

-- Location: LCCOMB_X58_Y51_N4
\DUT|MEMORY|mySRAM~213feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~213feeder_combout\ = \SW[8]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[8]~input_o\,
	combout => \DUT|MEMORY|mySRAM~213feeder_combout\);

-- Location: FF_X58_Y51_N5
\DUT|MEMORY|mySRAM~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~213feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~213_q\);

-- Location: FF_X58_Y51_N19
\DUT|MEMORY|mySRAM~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~245_q\);

-- Location: FF_X59_Y51_N7
\DUT|MEMORY|mySRAM~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~149_q\);

-- Location: FF_X59_Y51_N21
\DUT|MEMORY|mySRAM~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~181_q\);

-- Location: LCCOMB_X59_Y51_N6
\DUT|MEMORY|mySRAM~421\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~421_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\DUT|MEMORY|mySRAM~181_q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~149_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~149_q\,
	datad => \DUT|MEMORY|mySRAM~181_q\,
	combout => \DUT|MEMORY|mySRAM~421_combout\);

-- Location: LCCOMB_X58_Y51_N18
\DUT|MEMORY|mySRAM~422\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~422_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~421_combout\ & ((\DUT|MEMORY|mySRAM~245_q\))) # (!\DUT|MEMORY|mySRAM~421_combout\ & (\DUT|MEMORY|mySRAM~213_q\)))) # (!\SW[3]~input_o\ & (((\DUT|MEMORY|mySRAM~421_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~213_q\,
	datac => \DUT|MEMORY|mySRAM~245_q\,
	datad => \DUT|MEMORY|mySRAM~421_combout\,
	combout => \DUT|MEMORY|mySRAM~422_combout\);

-- Location: LCCOMB_X57_Y49_N0
\DUT|MEMORY|mySRAM~423\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~423_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\DUT|MEMORY|mySRAM~420_combout\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~420_combout\,
	datad => \DUT|MEMORY|mySRAM~422_combout\,
	combout => \DUT|MEMORY|mySRAM~423_combout\);

-- Location: FF_X57_Y53_N5
\DUT|MEMORY|mySRAM~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~205_q\);

-- Location: FF_X57_Y53_N7
\DUT|MEMORY|mySRAM~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~269_q\);

-- Location: FF_X58_Y53_N7
\DUT|MEMORY|mySRAM~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~173_q\);

-- Location: FF_X58_Y53_N25
\DUT|MEMORY|mySRAM~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[8]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~237_q\);

-- Location: LCCOMB_X58_Y53_N6
\DUT|MEMORY|mySRAM~424\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~424_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~237_q\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~173_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~173_q\,
	datad => \DUT|MEMORY|mySRAM~237_q\,
	combout => \DUT|MEMORY|mySRAM~424_combout\);

-- Location: LCCOMB_X57_Y53_N6
\DUT|MEMORY|mySRAM~425\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~425_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~424_combout\ & ((\DUT|MEMORY|mySRAM~269_q\))) # (!\DUT|MEMORY|mySRAM~424_combout\ & (\DUT|MEMORY|mySRAM~205_q\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~205_q\,
	datac => \DUT|MEMORY|mySRAM~269_q\,
	datad => \DUT|MEMORY|mySRAM~424_combout\,
	combout => \DUT|MEMORY|mySRAM~425_combout\);

-- Location: LCCOMB_X57_Y49_N10
\DUT|MEMORY|mySRAM~426\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~426_combout\ = (\DUT|MEMORY|mySRAM~423_combout\ & (((\DUT|MEMORY|mySRAM~425_combout\) # (!\SW[0]~input_o\)))) # (!\DUT|MEMORY|mySRAM~423_combout\ & (\DUT|MEMORY|mySRAM~418_combout\ & (\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~418_combout\,
	datab => \DUT|MEMORY|mySRAM~423_combout\,
	datac => \SW[0]~input_o\,
	datad => \DUT|MEMORY|mySRAM~425_combout\,
	combout => \DUT|MEMORY|mySRAM~426_combout\);

-- Location: LCCOMB_X57_Y49_N12
\DUT|MEMORY|mySRAM~437\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~437_combout\ = (\SW[4]~input_o\ & ((\DUT|MEMORY|mySRAM~426_combout\))) # (!\SW[4]~input_o\ & (\DUT|MEMORY|mySRAM~436_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[4]~input_o\,
	datac => \DUT|MEMORY|mySRAM~436_combout\,
	datad => \DUT|MEMORY|mySRAM~426_combout\,
	combout => \DUT|MEMORY|mySRAM~437_combout\);

-- Location: FF_X58_Y53_N15
\DUT|MEMORY|mySRAM~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~170_q\);

-- Location: FF_X57_Y53_N29
\DUT|MEMORY|mySRAM~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~202_q\);

-- Location: LCCOMB_X58_Y53_N14
\DUT|MEMORY|mySRAM~361\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~361_combout\ = (\SW[2]~input_o\ & ((\SW[3]~input_o\) # ((\DUT|MEMORY|mySRAM~202_q\)))) # (!\SW[2]~input_o\ & (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~170_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~170_q\,
	datad => \DUT|MEMORY|mySRAM~202_q\,
	combout => \DUT|MEMORY|mySRAM~361_combout\);

-- Location: FF_X57_Y53_N3
\DUT|MEMORY|mySRAM~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~266_q\);

-- Location: FF_X58_Y53_N5
\DUT|MEMORY|mySRAM~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~234_q\);

-- Location: LCCOMB_X57_Y53_N2
\DUT|MEMORY|mySRAM~362\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~362_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~361_combout\ & (\DUT|MEMORY|mySRAM~266_q\)) # (!\DUT|MEMORY|mySRAM~361_combout\ & ((\DUT|MEMORY|mySRAM~234_q\))))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~361_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \DUT|MEMORY|mySRAM~361_combout\,
	datac => \DUT|MEMORY|mySRAM~266_q\,
	datad => \DUT|MEMORY|mySRAM~234_q\,
	combout => \DUT|MEMORY|mySRAM~362_combout\);

-- Location: LCCOMB_X58_Y50_N4
\DUT|MEMORY|mySRAM~226feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~226feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \DUT|MEMORY|mySRAM~226feeder_combout\);

-- Location: FF_X58_Y50_N5
\DUT|MEMORY|mySRAM~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~226feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~226_q\);

-- Location: FF_X57_Y50_N1
\DUT|MEMORY|mySRAM~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~162_q\);

-- Location: LCCOMB_X57_Y50_N0
\DUT|MEMORY|mySRAM~354\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~354_combout\ = (\SW[2]~input_o\ & (((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~226_q\)) # (!\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~162_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~226_q\,
	datab => \SW[2]~input_o\,
	datac => \DUT|MEMORY|mySRAM~162_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~354_combout\);

-- Location: FF_X57_Y50_N3
\DUT|MEMORY|mySRAM~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~258_q\);

-- Location: FF_X54_Y50_N15
\DUT|MEMORY|mySRAM~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~194_q\);

-- Location: LCCOMB_X57_Y50_N2
\DUT|MEMORY|mySRAM~355\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~355_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~354_combout\ & (\DUT|MEMORY|mySRAM~258_q\)) # (!\DUT|MEMORY|mySRAM~354_combout\ & ((\DUT|MEMORY|mySRAM~194_q\))))) # (!\SW[2]~input_o\ & (\DUT|MEMORY|mySRAM~354_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~354_combout\,
	datac => \DUT|MEMORY|mySRAM~258_q\,
	datad => \DUT|MEMORY|mySRAM~194_q\,
	combout => \DUT|MEMORY|mySRAM~355_combout\);

-- Location: FF_X55_Y52_N1
\DUT|MEMORY|mySRAM~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~186_q\);

-- Location: FF_X55_Y52_N27
\DUT|MEMORY|mySRAM~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~154_q\);

-- Location: LCCOMB_X55_Y52_N26
\DUT|MEMORY|mySRAM~356\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~356_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~186_q\) # ((\SW[3]~input_o\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~154_q\ & !\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~186_q\,
	datac => \DUT|MEMORY|mySRAM~154_q\,
	datad => \SW[3]~input_o\,
	combout => \DUT|MEMORY|mySRAM~356_combout\);

-- Location: FF_X56_Y52_N19
\DUT|MEMORY|mySRAM~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~250_q\);

-- Location: FF_X56_Y52_N21
\DUT|MEMORY|mySRAM~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~218_q\);

-- Location: LCCOMB_X56_Y52_N18
\DUT|MEMORY|mySRAM~357\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~357_combout\ = (\DUT|MEMORY|mySRAM~356_combout\ & (((\DUT|MEMORY|mySRAM~250_q\)) # (!\SW[3]~input_o\))) # (!\DUT|MEMORY|mySRAM~356_combout\ & (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~218_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~356_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~250_q\,
	datad => \DUT|MEMORY|mySRAM~218_q\,
	combout => \DUT|MEMORY|mySRAM~357_combout\);

-- Location: FF_X59_Y51_N9
\DUT|MEMORY|mySRAM~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~178_q\);

-- Location: FF_X58_Y51_N15
\DUT|MEMORY|mySRAM~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~242_q\);

-- Location: FF_X59_Y51_N23
\DUT|MEMORY|mySRAM~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~146_q\);

-- Location: FF_X58_Y51_N29
\DUT|MEMORY|mySRAM~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~210_q\);

-- Location: LCCOMB_X59_Y51_N22
\DUT|MEMORY|mySRAM~358\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~358_combout\ = (\SW[2]~input_o\ & (\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~210_q\))) # (!\SW[3]~input_o\ & (\DUT|MEMORY|mySRAM~146_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~146_q\,
	datad => \DUT|MEMORY|mySRAM~210_q\,
	combout => \DUT|MEMORY|mySRAM~358_combout\);

-- Location: LCCOMB_X58_Y51_N14
\DUT|MEMORY|mySRAM~359\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~359_combout\ = (\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~358_combout\ & ((\DUT|MEMORY|mySRAM~242_q\))) # (!\DUT|MEMORY|mySRAM~358_combout\ & (\DUT|MEMORY|mySRAM~178_q\)))) # (!\SW[2]~input_o\ & (((\DUT|MEMORY|mySRAM~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \DUT|MEMORY|mySRAM~178_q\,
	datac => \DUT|MEMORY|mySRAM~242_q\,
	datad => \DUT|MEMORY|mySRAM~358_combout\,
	combout => \DUT|MEMORY|mySRAM~359_combout\);

-- Location: LCCOMB_X55_Y50_N24
\DUT|MEMORY|mySRAM~360\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~360_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~357_combout\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((!\SW[1]~input_o\ & \DUT|MEMORY|mySRAM~359_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~357_combout\,
	datab => \SW[0]~input_o\,
	datac => \SW[1]~input_o\,
	datad => \DUT|MEMORY|mySRAM~359_combout\,
	combout => \DUT|MEMORY|mySRAM~360_combout\);

-- Location: LCCOMB_X55_Y50_N18
\DUT|MEMORY|mySRAM~363\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~363_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~360_combout\ & (\DUT|MEMORY|mySRAM~362_combout\)) # (!\DUT|MEMORY|mySRAM~360_combout\ & ((\DUT|MEMORY|mySRAM~355_combout\))))) # (!\SW[1]~input_o\ & 
-- (((\DUT|MEMORY|mySRAM~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~362_combout\,
	datab => \DUT|MEMORY|mySRAM~355_combout\,
	datac => \SW[1]~input_o\,
	datad => \DUT|MEMORY|mySRAM~360_combout\,
	combout => \DUT|MEMORY|mySRAM~363_combout\);

-- Location: FF_X58_Y49_N9
\DUT|MEMORY|mySRAM~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~98_q\);

-- Location: FF_X57_Y49_N7
\DUT|MEMORY|mySRAM~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~106_q\);

-- Location: LCCOMB_X58_Y50_N30
\DUT|MEMORY|mySRAM~90feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~90feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \DUT|MEMORY|mySRAM~90feeder_combout\);

-- Location: FF_X58_Y50_N31
\DUT|MEMORY|mySRAM~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~90feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~90_q\);

-- Location: FF_X58_Y49_N19
\DUT|MEMORY|mySRAM~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~82_q\);

-- Location: LCCOMB_X58_Y49_N18
\DUT|MEMORY|mySRAM~364\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~364_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~90_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~82_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~90_q\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~82_q\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~364_combout\);

-- Location: LCCOMB_X57_Y49_N6
\DUT|MEMORY|mySRAM~365\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~365_combout\ = (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~364_combout\ & ((\DUT|MEMORY|mySRAM~106_q\))) # (!\DUT|MEMORY|mySRAM~364_combout\ & (\DUT|MEMORY|mySRAM~98_q\)))) # (!\SW[1]~input_o\ & (((\DUT|MEMORY|mySRAM~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|MEMORY|mySRAM~98_q\,
	datac => \DUT|MEMORY|mySRAM~106_q\,
	datad => \DUT|MEMORY|mySRAM~364_combout\,
	combout => \DUT|MEMORY|mySRAM~365_combout\);

-- Location: FF_X55_Y50_N9
\DUT|MEMORY|mySRAM~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~484_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~114_q\);

-- Location: FF_X54_Y50_N13
\DUT|MEMORY|mySRAM~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~130_q\);

-- Location: LCCOMB_X55_Y50_N8
\DUT|MEMORY|mySRAM~371\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~371_combout\ = (\SW[1]~input_o\ & ((\SW[0]~input_o\) # ((\DUT|MEMORY|mySRAM~130_q\)))) # (!\SW[1]~input_o\ & (!\SW[0]~input_o\ & (\DUT|MEMORY|mySRAM~114_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~114_q\,
	datad => \DUT|MEMORY|mySRAM~130_q\,
	combout => \DUT|MEMORY|mySRAM~371_combout\);

-- Location: FF_X56_Y50_N31
\DUT|MEMORY|mySRAM~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~485_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~138_q\);

-- Location: FF_X56_Y50_N21
\DUT|MEMORY|mySRAM~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~122_q\);

-- Location: LCCOMB_X56_Y50_N30
\DUT|MEMORY|mySRAM~372\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~372_combout\ = (\DUT|MEMORY|mySRAM~371_combout\ & (((\DUT|MEMORY|mySRAM~138_q\)) # (!\SW[0]~input_o\))) # (!\DUT|MEMORY|mySRAM~371_combout\ & (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~122_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~371_combout\,
	datab => \SW[0]~input_o\,
	datac => \DUT|MEMORY|mySRAM~138_q\,
	datad => \DUT|MEMORY|mySRAM~122_q\,
	combout => \DUT|MEMORY|mySRAM~372_combout\);

-- Location: FF_X55_Y53_N29
\DUT|MEMORY|mySRAM~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~26_q\);

-- Location: FF_X56_Y53_N31
\DUT|MEMORY|mySRAM~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~18_q\);

-- Location: LCCOMB_X56_Y53_N30
\DUT|MEMORY|mySRAM~368\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~368_combout\ = (\SW[0]~input_o\ & ((\DUT|MEMORY|mySRAM~26_q\) # ((\SW[1]~input_o\)))) # (!\SW[0]~input_o\ & (((\DUT|MEMORY|mySRAM~18_q\ & !\SW[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \DUT|MEMORY|mySRAM~26_q\,
	datac => \DUT|MEMORY|mySRAM~18_q\,
	datad => \SW[1]~input_o\,
	combout => \DUT|MEMORY|mySRAM~368_combout\);

-- Location: FF_X55_Y53_N23
\DUT|MEMORY|mySRAM~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~42_q\);

-- Location: FF_X56_Y53_N29
\DUT|MEMORY|mySRAM~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~34_q\);

-- Location: LCCOMB_X55_Y53_N22
\DUT|MEMORY|mySRAM~369\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~369_combout\ = (\DUT|MEMORY|mySRAM~368_combout\ & (((\DUT|MEMORY|mySRAM~42_q\)) # (!\SW[1]~input_o\))) # (!\DUT|MEMORY|mySRAM~368_combout\ & (\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~34_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~368_combout\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~42_q\,
	datad => \DUT|MEMORY|mySRAM~34_q\,
	combout => \DUT|MEMORY|mySRAM~369_combout\);

-- Location: LCCOMB_X54_Y51_N16
\DUT|MEMORY|mySRAM~58feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~58feeder_combout\ = \SW[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[7]~input_o\,
	combout => \DUT|MEMORY|mySRAM~58feeder_combout\);

-- Location: FF_X54_Y51_N17
\DUT|MEMORY|mySRAM~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|MEMORY|mySRAM~58feeder_combout\,
	ena => \DUT|MEMORY|mySRAM~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~58_q\);

-- Location: FF_X54_Y51_N7
\DUT|MEMORY|mySRAM~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~50_q\);

-- Location: FF_X55_Y51_N29
\DUT|MEMORY|mySRAM~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~66_q\);

-- Location: LCCOMB_X54_Y51_N6
\DUT|MEMORY|mySRAM~366\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~366_combout\ = (\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\DUT|MEMORY|mySRAM~66_q\))) # (!\SW[1]~input_o\ & (\DUT|MEMORY|mySRAM~50_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \DUT|MEMORY|mySRAM~50_q\,
	datad => \DUT|MEMORY|mySRAM~66_q\,
	combout => \DUT|MEMORY|mySRAM~366_combout\);

-- Location: FF_X55_Y51_N23
\DUT|MEMORY|mySRAM~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	asdata => \SW[7]~input_o\,
	sload => VCC,
	ena => \DUT|MEMORY|mySRAM~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|MEMORY|mySRAM~74_q\);

-- Location: LCCOMB_X55_Y51_N22
\DUT|MEMORY|mySRAM~367\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~367_combout\ = (\DUT|MEMORY|mySRAM~366_combout\ & (((\DUT|MEMORY|mySRAM~74_q\) # (!\SW[0]~input_o\)))) # (!\DUT|MEMORY|mySRAM~366_combout\ & (\DUT|MEMORY|mySRAM~58_q\ & ((\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~58_q\,
	datab => \DUT|MEMORY|mySRAM~366_combout\,
	datac => \DUT|MEMORY|mySRAM~74_q\,
	datad => \SW[0]~input_o\,
	combout => \DUT|MEMORY|mySRAM~367_combout\);

-- Location: LCCOMB_X56_Y49_N0
\DUT|MEMORY|mySRAM~370\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~370_combout\ = (\SW[3]~input_o\ & (((\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & ((\SW[2]~input_o\ & ((\DUT|MEMORY|mySRAM~367_combout\))) # (!\SW[2]~input_o\ & (\DUT|MEMORY|mySRAM~369_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~369_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~367_combout\,
	datad => \SW[2]~input_o\,
	combout => \DUT|MEMORY|mySRAM~370_combout\);

-- Location: LCCOMB_X56_Y49_N18
\DUT|MEMORY|mySRAM~373\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~373_combout\ = (\SW[3]~input_o\ & ((\DUT|MEMORY|mySRAM~370_combout\ & ((\DUT|MEMORY|mySRAM~372_combout\))) # (!\DUT|MEMORY|mySRAM~370_combout\ & (\DUT|MEMORY|mySRAM~365_combout\)))) # (!\SW[3]~input_o\ & 
-- (((\DUT|MEMORY|mySRAM~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~365_combout\,
	datab => \SW[3]~input_o\,
	datac => \DUT|MEMORY|mySRAM~372_combout\,
	datad => \DUT|MEMORY|mySRAM~370_combout\,
	combout => \DUT|MEMORY|mySRAM~373_combout\);

-- Location: LCCOMB_X56_Y49_N24
\DUT|MEMORY|mySRAM~374\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|MEMORY|mySRAM~374_combout\ = (\SW[4]~input_o\ & (\DUT|MEMORY|mySRAM~363_combout\)) # (!\SW[4]~input_o\ & ((\DUT|MEMORY|mySRAM~373_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~363_combout\,
	datac => \SW[4]~input_o\,
	datad => \DUT|MEMORY|mySRAM~373_combout\,
	combout => \DUT|MEMORY|mySRAM~374_combout\);

-- Location: LCCOMB_X56_Y49_N22
\DUT|SSEG_F_DEC|Mux7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_F_DEC|Mux7~0_combout\ = (\DUT|MEMORY|mySRAM~395_combout\ & (!\DUT|MEMORY|mySRAM~416_combout\ & (\DUT|MEMORY|mySRAM~437_combout\ & \DUT|MEMORY|mySRAM~374_combout\))) # (!\DUT|MEMORY|mySRAM~395_combout\ & (\DUT|MEMORY|mySRAM~416_combout\ $ 
-- (((!\DUT|MEMORY|mySRAM~437_combout\ & \DUT|MEMORY|mySRAM~374_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~395_combout\,
	datab => \DUT|MEMORY|mySRAM~416_combout\,
	datac => \DUT|MEMORY|mySRAM~437_combout\,
	datad => \DUT|MEMORY|mySRAM~374_combout\,
	combout => \DUT|SSEG_F_DEC|Mux7~0_combout\);

-- Location: LCCOMB_X56_Y49_N16
\DUT|SSEG_F_DEC|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_F_DEC|Mux6~0_combout\ = (\DUT|MEMORY|mySRAM~395_combout\ & ((\DUT|MEMORY|mySRAM~374_combout\ & ((\DUT|MEMORY|mySRAM~437_combout\))) # (!\DUT|MEMORY|mySRAM~374_combout\ & (\DUT|MEMORY|mySRAM~416_combout\)))) # (!\DUT|MEMORY|mySRAM~395_combout\ & 
-- (\DUT|MEMORY|mySRAM~416_combout\ & (\DUT|MEMORY|mySRAM~437_combout\ $ (\DUT|MEMORY|mySRAM~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~395_combout\,
	datab => \DUT|MEMORY|mySRAM~416_combout\,
	datac => \DUT|MEMORY|mySRAM~437_combout\,
	datad => \DUT|MEMORY|mySRAM~374_combout\,
	combout => \DUT|SSEG_F_DEC|Mux6~0_combout\);

-- Location: LCCOMB_X57_Y49_N14
\DUT|SSEG_F_DEC|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_F_DEC|Mux5~0_combout\ = (\DUT|MEMORY|mySRAM~416_combout\ & (\DUT|MEMORY|mySRAM~437_combout\ & ((\DUT|MEMORY|mySRAM~395_combout\) # (!\DUT|MEMORY|mySRAM~374_combout\)))) # (!\DUT|MEMORY|mySRAM~416_combout\ & (!\DUT|MEMORY|mySRAM~374_combout\ & 
-- (\DUT|MEMORY|mySRAM~395_combout\ & !\DUT|MEMORY|mySRAM~437_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~416_combout\,
	datab => \DUT|MEMORY|mySRAM~374_combout\,
	datac => \DUT|MEMORY|mySRAM~395_combout\,
	datad => \DUT|MEMORY|mySRAM~437_combout\,
	combout => \DUT|SSEG_F_DEC|Mux5~0_combout\);

-- Location: LCCOMB_X56_Y49_N14
\DUT|SSEG_F_DEC|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_F_DEC|Mux4~0_combout\ = (\DUT|MEMORY|mySRAM~395_combout\ & ((\DUT|MEMORY|mySRAM~416_combout\ & ((\DUT|MEMORY|mySRAM~374_combout\))) # (!\DUT|MEMORY|mySRAM~416_combout\ & (\DUT|MEMORY|mySRAM~437_combout\ & !\DUT|MEMORY|mySRAM~374_combout\)))) # 
-- (!\DUT|MEMORY|mySRAM~395_combout\ & (!\DUT|MEMORY|mySRAM~437_combout\ & (\DUT|MEMORY|mySRAM~416_combout\ $ (\DUT|MEMORY|mySRAM~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~395_combout\,
	datab => \DUT|MEMORY|mySRAM~416_combout\,
	datac => \DUT|MEMORY|mySRAM~437_combout\,
	datad => \DUT|MEMORY|mySRAM~374_combout\,
	combout => \DUT|SSEG_F_DEC|Mux4~0_combout\);

-- Location: LCCOMB_X56_Y49_N20
\DUT|SSEG_F_DEC|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_F_DEC|Mux3~0_combout\ = (\DUT|MEMORY|mySRAM~395_combout\ & (((!\DUT|MEMORY|mySRAM~437_combout\ & \DUT|MEMORY|mySRAM~374_combout\)))) # (!\DUT|MEMORY|mySRAM~395_combout\ & ((\DUT|MEMORY|mySRAM~416_combout\ & (!\DUT|MEMORY|mySRAM~437_combout\)) # 
-- (!\DUT|MEMORY|mySRAM~416_combout\ & ((\DUT|MEMORY|mySRAM~374_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~395_combout\,
	datab => \DUT|MEMORY|mySRAM~416_combout\,
	datac => \DUT|MEMORY|mySRAM~437_combout\,
	datad => \DUT|MEMORY|mySRAM~374_combout\,
	combout => \DUT|SSEG_F_DEC|Mux3~0_combout\);

-- Location: LCCOMB_X57_Y49_N8
\DUT|SSEG_F_DEC|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_F_DEC|Mux2~0_combout\ = (\DUT|MEMORY|mySRAM~416_combout\ & (((!\DUT|MEMORY|mySRAM~395_combout\ & \DUT|MEMORY|mySRAM~437_combout\)))) # (!\DUT|MEMORY|mySRAM~416_combout\ & (!\DUT|MEMORY|mySRAM~437_combout\ & ((\DUT|MEMORY|mySRAM~374_combout\) # 
-- (\DUT|MEMORY|mySRAM~395_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~416_combout\,
	datab => \DUT|MEMORY|mySRAM~374_combout\,
	datac => \DUT|MEMORY|mySRAM~395_combout\,
	datad => \DUT|MEMORY|mySRAM~437_combout\,
	combout => \DUT|SSEG_F_DEC|Mux2~0_combout\);

-- Location: LCCOMB_X56_Y49_N30
\DUT|SSEG_F_DEC|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|SSEG_F_DEC|Mux1~0_combout\ = (\DUT|MEMORY|mySRAM~437_combout\) # ((\DUT|MEMORY|mySRAM~395_combout\ & ((!\DUT|MEMORY|mySRAM~374_combout\) # (!\DUT|MEMORY|mySRAM~416_combout\))) # (!\DUT|MEMORY|mySRAM~395_combout\ & (\DUT|MEMORY|mySRAM~416_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|MEMORY|mySRAM~395_combout\,
	datab => \DUT|MEMORY|mySRAM~416_combout\,
	datac => \DUT|MEMORY|mySRAM~437_combout\,
	datad => \DUT|MEMORY|mySRAM~374_combout\,
	combout => \DUT|SSEG_F_DEC|Mux1~0_combout\);

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

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(7) <= \HEX4[7]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(7) <= \HEX5[7]~output_o\;
END structure;


