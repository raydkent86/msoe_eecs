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

-- DATE "04/04/2022 09:48:36"

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

ENTITY 	counter_updn_byM_nbit_de10 IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(7 DOWNTO 0)
	);
END counter_updn_byM_nbit_de10;

-- Design Ports Information
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF counter_updn_byM_nbit_de10 IS
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
SIGNAL ww_LEDR : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CK|clk_sig~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
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
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \DUT|Add0~0_combout\ : std_logic;
SIGNAL \DUT|cnt_sig[0]~9_cout\ : std_logic;
SIGNAL \DUT|cnt_sig[0]~10_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \DUT|Add0~1_combout\ : std_logic;
SIGNAL \DUT|cnt_sig[0]~11\ : std_logic;
SIGNAL \DUT|cnt_sig[1]~12_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \DUT|Add0~2_combout\ : std_logic;
SIGNAL \DUT|cnt_sig[1]~13\ : std_logic;
SIGNAL \DUT|cnt_sig[2]~14_combout\ : std_logic;
SIGNAL \DUT|cnt_sig[2]~15\ : std_logic;
SIGNAL \DUT|cnt_sig[3]~16_combout\ : std_logic;
SIGNAL \DUT|cnt_sig[3]~17\ : std_logic;
SIGNAL \DUT|cnt_sig[4]~18_combout\ : std_logic;
SIGNAL \DUT|cnt_sig[4]~19\ : std_logic;
SIGNAL \DUT|cnt_sig[5]~20_combout\ : std_logic;
SIGNAL \DUT|cnt_sig[5]~21\ : std_logic;
SIGNAL \DUT|cnt_sig[6]~22_combout\ : std_logic;
SIGNAL \DUT|cnt_sig[6]~23\ : std_logic;
SIGNAL \DUT|cnt_sig[7]~24_combout\ : std_logic;
SIGNAL \DUT|cnt_sig\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CK|cnt\ : std_logic_vector(25 DOWNTO 0);

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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\CK|clk_sig~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CK|clk_sig~q\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
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
	i => \DUT|cnt_sig\(0),
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
	i => \DUT|cnt_sig\(1),
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
	i => \DUT|cnt_sig\(2),
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
	i => \DUT|cnt_sig\(3),
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
	i => \DUT|cnt_sig\(4),
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
	i => \DUT|cnt_sig\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|cnt_sig\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|cnt_sig\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

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

-- Location: LCCOMB_X44_Y52_N6
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

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: FF_X44_Y52_N7
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

-- Location: LCCOMB_X44_Y52_N8
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

-- Location: FF_X44_Y52_N9
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

-- Location: LCCOMB_X44_Y52_N10
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

-- Location: FF_X44_Y52_N11
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

-- Location: LCCOMB_X44_Y52_N12
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

-- Location: FF_X44_Y52_N13
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

-- Location: LCCOMB_X44_Y52_N14
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

-- Location: FF_X44_Y52_N15
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

-- Location: LCCOMB_X44_Y52_N16
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

-- Location: FF_X44_Y52_N17
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

-- Location: LCCOMB_X44_Y52_N18
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

-- Location: FF_X44_Y52_N19
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

-- Location: LCCOMB_X44_Y52_N20
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

-- Location: FF_X44_Y52_N21
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

-- Location: LCCOMB_X44_Y52_N22
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

-- Location: FF_X44_Y52_N23
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

-- Location: LCCOMB_X44_Y52_N24
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

-- Location: FF_X44_Y52_N25
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

-- Location: LCCOMB_X44_Y52_N26
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

-- Location: FF_X44_Y52_N27
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

-- Location: LCCOMB_X44_Y52_N28
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

-- Location: FF_X44_Y52_N29
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

-- Location: LCCOMB_X44_Y52_N30
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

-- Location: FF_X44_Y52_N31
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

-- Location: LCCOMB_X44_Y51_N0
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

-- Location: FF_X44_Y51_N1
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

-- Location: LCCOMB_X44_Y51_N2
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

-- Location: FF_X44_Y51_N3
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

-- Location: LCCOMB_X44_Y51_N4
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

-- Location: FF_X44_Y51_N5
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

-- Location: LCCOMB_X44_Y51_N6
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

-- Location: FF_X44_Y51_N7
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

-- Location: LCCOMB_X44_Y51_N8
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

-- Location: FF_X44_Y51_N9
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

-- Location: LCCOMB_X44_Y51_N10
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

-- Location: FF_X44_Y51_N11
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

-- Location: LCCOMB_X44_Y51_N12
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

-- Location: FF_X44_Y51_N13
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

-- Location: LCCOMB_X44_Y51_N14
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

-- Location: FF_X44_Y51_N15
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

-- Location: LCCOMB_X44_Y51_N16
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

-- Location: FF_X44_Y51_N17
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

-- Location: LCCOMB_X44_Y51_N18
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

-- Location: FF_X44_Y51_N19
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

-- Location: LCCOMB_X44_Y51_N20
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

-- Location: FF_X44_Y51_N21
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

-- Location: LCCOMB_X44_Y51_N22
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

-- Location: FF_X44_Y51_N23
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

-- Location: LCCOMB_X44_Y51_N24
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

-- Location: FF_X44_Y51_N25
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

-- Location: LCCOMB_X44_Y51_N30
\CK|clk_sig~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \CK|clk_sig~0_combout\ = \CK|cnt\(25) $ (\CK|clk_sig~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CK|cnt\(25),
	datad => \CK|clk_sig~q\,
	combout => \CK|clk_sig~0_combout\);

-- Location: LCCOMB_X44_Y51_N28
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

-- Location: FF_X44_Y51_N29
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

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X51_Y53_N24
\DUT|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|Add0~0_combout\ = \SW[1]~input_o\ $ (\SW[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[3]~input_o\,
	combout => \DUT|Add0~0_combout\);

-- Location: LCCOMB_X51_Y53_N6
\DUT|cnt_sig[0]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|cnt_sig[0]~9_cout\ = CARRY(\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => VCC,
	cout => \DUT|cnt_sig[0]~9_cout\);

-- Location: LCCOMB_X51_Y53_N8
\DUT|cnt_sig[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|cnt_sig[0]~10_combout\ = (\DUT|Add0~0_combout\ & ((\DUT|cnt_sig\(0) & (\DUT|cnt_sig[0]~9_cout\ & VCC)) # (!\DUT|cnt_sig\(0) & (!\DUT|cnt_sig[0]~9_cout\)))) # (!\DUT|Add0~0_combout\ & ((\DUT|cnt_sig\(0) & (!\DUT|cnt_sig[0]~9_cout\)) # 
-- (!\DUT|cnt_sig\(0) & ((\DUT|cnt_sig[0]~9_cout\) # (GND)))))
-- \DUT|cnt_sig[0]~11\ = CARRY((\DUT|Add0~0_combout\ & (!\DUT|cnt_sig\(0) & !\DUT|cnt_sig[0]~9_cout\)) # (!\DUT|Add0~0_combout\ & ((!\DUT|cnt_sig[0]~9_cout\) # (!\DUT|cnt_sig\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|Add0~0_combout\,
	datab => \DUT|cnt_sig\(0),
	datad => VCC,
	cin => \DUT|cnt_sig[0]~9_cout\,
	combout => \DUT|cnt_sig[0]~10_combout\,
	cout => \DUT|cnt_sig[0]~11\);

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

-- Location: FF_X51_Y53_N9
\DUT|cnt_sig[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|cnt_sig[0]~10_combout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt_sig\(0));

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

-- Location: LCCOMB_X51_Y53_N2
\DUT|Add0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|Add0~1_combout\ = \SW[1]~input_o\ $ (\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \DUT|Add0~1_combout\);

-- Location: LCCOMB_X51_Y53_N10
\DUT|cnt_sig[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|cnt_sig[1]~12_combout\ = ((\DUT|cnt_sig\(1) $ (\DUT|Add0~1_combout\ $ (!\DUT|cnt_sig[0]~11\)))) # (GND)
-- \DUT|cnt_sig[1]~13\ = CARRY((\DUT|cnt_sig\(1) & ((\DUT|Add0~1_combout\) # (!\DUT|cnt_sig[0]~11\))) # (!\DUT|cnt_sig\(1) & (\DUT|Add0~1_combout\ & !\DUT|cnt_sig[0]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt_sig\(1),
	datab => \DUT|Add0~1_combout\,
	datad => VCC,
	cin => \DUT|cnt_sig[0]~11\,
	combout => \DUT|cnt_sig[1]~12_combout\,
	cout => \DUT|cnt_sig[1]~13\);

-- Location: FF_X51_Y53_N11
\DUT|cnt_sig[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|cnt_sig[1]~12_combout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt_sig\(1));

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

-- Location: LCCOMB_X51_Y53_N28
\DUT|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|Add0~2_combout\ = \SW[5]~input_o\ $ (\SW[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[5]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \DUT|Add0~2_combout\);

-- Location: LCCOMB_X51_Y53_N12
\DUT|cnt_sig[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|cnt_sig[2]~14_combout\ = (\DUT|cnt_sig\(2) & ((\DUT|Add0~2_combout\ & (\DUT|cnt_sig[1]~13\ & VCC)) # (!\DUT|Add0~2_combout\ & (!\DUT|cnt_sig[1]~13\)))) # (!\DUT|cnt_sig\(2) & ((\DUT|Add0~2_combout\ & (!\DUT|cnt_sig[1]~13\)) # (!\DUT|Add0~2_combout\ & 
-- ((\DUT|cnt_sig[1]~13\) # (GND)))))
-- \DUT|cnt_sig[2]~15\ = CARRY((\DUT|cnt_sig\(2) & (!\DUT|Add0~2_combout\ & !\DUT|cnt_sig[1]~13\)) # (!\DUT|cnt_sig\(2) & ((!\DUT|cnt_sig[1]~13\) # (!\DUT|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt_sig\(2),
	datab => \DUT|Add0~2_combout\,
	datad => VCC,
	cin => \DUT|cnt_sig[1]~13\,
	combout => \DUT|cnt_sig[2]~14_combout\,
	cout => \DUT|cnt_sig[2]~15\);

-- Location: FF_X51_Y53_N13
\DUT|cnt_sig[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|cnt_sig[2]~14_combout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt_sig\(2));

-- Location: LCCOMB_X51_Y53_N14
\DUT|cnt_sig[3]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|cnt_sig[3]~16_combout\ = ((\SW[1]~input_o\ $ (\DUT|cnt_sig\(3) $ (!\DUT|cnt_sig[2]~15\)))) # (GND)
-- \DUT|cnt_sig[3]~17\ = CARRY((\SW[1]~input_o\ & ((\DUT|cnt_sig\(3)) # (!\DUT|cnt_sig[2]~15\))) # (!\SW[1]~input_o\ & (\DUT|cnt_sig\(3) & !\DUT|cnt_sig[2]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|cnt_sig\(3),
	datad => VCC,
	cin => \DUT|cnt_sig[2]~15\,
	combout => \DUT|cnt_sig[3]~16_combout\,
	cout => \DUT|cnt_sig[3]~17\);

-- Location: FF_X51_Y53_N15
\DUT|cnt_sig[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|cnt_sig[3]~16_combout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt_sig\(3));

-- Location: LCCOMB_X51_Y53_N16
\DUT|cnt_sig[4]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|cnt_sig[4]~18_combout\ = (\SW[1]~input_o\ & ((\DUT|cnt_sig\(4) & (\DUT|cnt_sig[3]~17\ & VCC)) # (!\DUT|cnt_sig\(4) & (!\DUT|cnt_sig[3]~17\)))) # (!\SW[1]~input_o\ & ((\DUT|cnt_sig\(4) & (!\DUT|cnt_sig[3]~17\)) # (!\DUT|cnt_sig\(4) & 
-- ((\DUT|cnt_sig[3]~17\) # (GND)))))
-- \DUT|cnt_sig[4]~19\ = CARRY((\SW[1]~input_o\ & (!\DUT|cnt_sig\(4) & !\DUT|cnt_sig[3]~17\)) # (!\SW[1]~input_o\ & ((!\DUT|cnt_sig[3]~17\) # (!\DUT|cnt_sig\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|cnt_sig\(4),
	datad => VCC,
	cin => \DUT|cnt_sig[3]~17\,
	combout => \DUT|cnt_sig[4]~18_combout\,
	cout => \DUT|cnt_sig[4]~19\);

-- Location: FF_X51_Y53_N17
\DUT|cnt_sig[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|cnt_sig[4]~18_combout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt_sig\(4));

-- Location: LCCOMB_X51_Y53_N18
\DUT|cnt_sig[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|cnt_sig[5]~20_combout\ = ((\SW[1]~input_o\ $ (\DUT|cnt_sig\(5) $ (!\DUT|cnt_sig[4]~19\)))) # (GND)
-- \DUT|cnt_sig[5]~21\ = CARRY((\SW[1]~input_o\ & ((\DUT|cnt_sig\(5)) # (!\DUT|cnt_sig[4]~19\))) # (!\SW[1]~input_o\ & (\DUT|cnt_sig\(5) & !\DUT|cnt_sig[4]~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|cnt_sig\(5),
	datad => VCC,
	cin => \DUT|cnt_sig[4]~19\,
	combout => \DUT|cnt_sig[5]~20_combout\,
	cout => \DUT|cnt_sig[5]~21\);

-- Location: FF_X51_Y53_N19
\DUT|cnt_sig[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|cnt_sig[5]~20_combout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt_sig\(5));

-- Location: LCCOMB_X51_Y53_N20
\DUT|cnt_sig[6]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|cnt_sig[6]~22_combout\ = (\SW[1]~input_o\ & ((\DUT|cnt_sig\(6) & (\DUT|cnt_sig[5]~21\ & VCC)) # (!\DUT|cnt_sig\(6) & (!\DUT|cnt_sig[5]~21\)))) # (!\SW[1]~input_o\ & ((\DUT|cnt_sig\(6) & (!\DUT|cnt_sig[5]~21\)) # (!\DUT|cnt_sig\(6) & 
-- ((\DUT|cnt_sig[5]~21\) # (GND)))))
-- \DUT|cnt_sig[6]~23\ = CARRY((\SW[1]~input_o\ & (!\DUT|cnt_sig\(6) & !\DUT|cnt_sig[5]~21\)) # (!\SW[1]~input_o\ & ((!\DUT|cnt_sig[5]~21\) # (!\DUT|cnt_sig\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \DUT|cnt_sig\(6),
	datad => VCC,
	cin => \DUT|cnt_sig[5]~21\,
	combout => \DUT|cnt_sig[6]~22_combout\,
	cout => \DUT|cnt_sig[6]~23\);

-- Location: FF_X51_Y53_N21
\DUT|cnt_sig[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|cnt_sig[6]~22_combout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt_sig\(6));

-- Location: LCCOMB_X51_Y53_N22
\DUT|cnt_sig[7]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \DUT|cnt_sig[7]~24_combout\ = \DUT|cnt_sig\(7) $ (\DUT|cnt_sig[6]~23\ $ (!\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|cnt_sig\(7),
	datad => \SW[1]~input_o\,
	cin => \DUT|cnt_sig[6]~23\,
	combout => \DUT|cnt_sig[7]~24_combout\);

-- Location: FF_X51_Y53_N23
\DUT|cnt_sig[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CK|clk_sig~clkctrl_outclk\,
	d => \DUT|cnt_sig[7]~24_combout\,
	clrn => \SW[0]~input_o\,
	ena => \SW[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|cnt_sig\(7));

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

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;
END structure;


