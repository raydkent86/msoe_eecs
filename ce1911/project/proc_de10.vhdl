----------------------------------------
-- created 05/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- proc_de10.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Single-Cycle Processor Hardware
-- DE10 implementation for the CE 1911
-- single-cycle processor
--
----------------------------------------
--
-- Inputs:  CLOCK_50, SW[9..0],
--          KEY[1..0]
-- Outputs: HEX0, HEX1, HEX2, HEX3,
--          HEX5, LEDR[9..0]
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity proc_de10 is
    port
    (
        CLOCK_50: in std_logic;
        SW: in std_logic_vector(9 downto 0);
        KEY: in std_logic_vector(1 downto 0);

        HEX0: out std_logic_vector(7 downto 0);
        HEX1: out std_logic_vector(7 downto 0);
        HEX2: out std_logic_vector(7 downto 0);
        HEX3: out std_logic_vector(7 downto 0);
        HEX5: out std_logic_vector(7 downto 0);
        LEDR: out std_logic_vector(9 downto 0)
        );
end entity;

architecture hardware of proc_de10 is
    -- internal signals
    signal CLK_SIG: std_logic;
    signal REGA_DATA: std_logic_vector(7 downto 0);
    signal REGB_DATA: std_logic_vector(7 downto 0);
    signal REGC_DATA: std_logic_vector(7 downto 0);
    signal REGD_DATA: std_logic_vector(7 downto 0);
    signal SSEG_AC_IN_SIG: std_logic_vector(7 downto 0);
    signal SSEG_BD_IN_SIG: std_logic_vector(7 downto 0);
    signal SET_SIG: std_logic;
    signal DONE_SIG: std_logic;

    -- component prototypes
    -- processor
    component proc is
    port
    (
        i_clk: in std_logic;
        i_rstb: in std_logic;
        i_start: in std_logic;
        i_len: in std_logic_vector(4 downto 0);
        i_start_loc: in std_logic_vector(2 downto 0);

        o_set: out std_logic;
        o_done: out std_logic;
        o_regA_data: out std_logic_vector(7 downto 0);
        o_regB_data: out std_logic_vector(7 downto 0);
        o_regC_data: out std_logic_vector(7 downto 0);
        o_regD_data: out std_logic_vector(7 downto 0)
    );
    end component;

    -- clock divider
    component clock_1hz is
	port (
			i_clk_50MHz :	in std_logic; 
			i_rstb :			in std_logic; 

			o_clk_1Hz :		out std_logic
	);
    end component;

    -- seven-segment decoder
    component sseg is
    port
    (
        i_nibble_in: in std_logic_vector(3 downto 0);
        i_blank: in std_logic;

        o_sseg_out: out std_logic_vector(7 downto 0)
    );
    end component;
begin
    -- component instantiation
    processor: proc
    port map
    (
        i_clk => CLK_SIG,
        i_rstb => SW(3),
        i_start => not KEY(0),
        i_len => SW(9 downto 5),
        i_start_loc => SW(2 downto 0),

        o_set => SET_SIG,
        o_done => DONE_SIG,
        o_regA_data => REGA_DATA,
        o_regB_data => REGB_DATA,
        o_regC_data => REGC_DATA,
        o_regD_data => REGD_DATA
    );

    CK: clock_1Hz
    port map
    (
        i_clk_50MHz => CLOCK_50,
        i_rstb => SW(3),

        o_clk_1Hz => CLK_SIG
    );

    -- register A/C least sig. digit
    SS0: sseg
    port map
    (
        i_nibble_in => SSEG_AC_IN_SIG(3 downto 0),
        i_blank => '0',
            
        o_sseg_out => HEX0
        );

    -- register A/C most sig. digit
    SS1: sseg
    port map
    (
        i_nibble_in => SSEG_AC_IN_SIG(7 downto 4),
        i_blank => '0',
            
        o_sseg_out => HEX1
    );

    -- register B/D least sig. digit
    SS2: sseg
    port map
    (
        i_nibble_in => SSEG_BD_IN_SIG(3 downto 0),
        i_blank => '0',
            
        o_sseg_out => HEX2
        );

    -- register B/D most sig. digit
    SS3: sseg
    port map
    (
        i_nibble_in => SSEG_BD_IN_SIG(7 downto 4),
        i_blank => '0',
            
        o_sseg_out => HEX3
    );

    -- ALU "set" output
    SS5: sseg
    port map
    (
        i_nibble_in => "000" & SET_SIG,
        i_blank => '0',
            
        o_sseg_out => HEX5
    );

    -- output muxes
    with SW(4) select
        SSEG_AC_IN_SIG <= REGA_DATA when '0',
                          REGC_DATA when others;

    with SW(4) select
        SSEG_BD_IN_SIG <= REGB_DATA when '0',
                          REGD_DATA when others;

    -- all LEDs light when done
    LEDR <= DONE_SIG & DONE_SIG & DONE_SIG & DONE_SIG & DONE_SIG & DONE_SIG
            & DONE_SIG & DONE_SIG & DONE_SIG & DONE_SIG;
end architecture;
