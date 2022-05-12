----------------------------------------
-- created 05/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- proc_tb.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Processor Master Testbench
-- Testbench for single-cycle processor
-- top level entity
-- Brute force approach
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity proc_tb is
	-- no entry - testbench
end entity;

architecture testbench of proc_tb is
    signal CLK: std_logic;
    signal RSTB: std_logic;
    signal START: std_logic;
    signal START_LOC: std_logic_vector(2 downto 0);
    signal LEN: std_logic_vector(4 downto 0);

    signal SET: std_logic;
    signal DONE: std_logic;
    signal REGA_DATA: std_logic_vector(7 downto 0);
    signal REGB_DATA: std_logic_vector(7 downto 0);
    signal REGC_DATA: std_logic_vector(7 downto 0);
    signal REGD_DATA: std_logic_vector(7 downto 0);

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
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
	-----------------------------------
	
begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: proc
	port map
	(
        i_clk => CLK,
        i_rstb => RSTB,
        i_start => START,
        i_len => LEN,
        i_start_loc => START_LOC,

        o_set => SET,
        o_done => DONE,
        o_regA_data => REGA_DATA,
        o_regB_data => REGB_DATA,
        o_regC_data => REGC_DATA,
        o_regD_data => REGD_DATA
    );

	-------------------------------------
	-- Test processes
	-------------------------------------

    -- Clock process
    clock: process		-- note - no sensitivity list allowed
	begin
		CLK <= '0';
		wait for PER/2;
		infinite: loop
			CLK <= not CLK; wait for PER/2;
		end loop;
	end process;
	
	-- no reset process - reset in run
	
	-- Run Process
	run: process
	begin
        -- test FSM how it will be used in the real thing
        -- program 1
        RSTB <= '1';
        START <= '0';
        
        START_LOC <= 3X"0";
        LEN <= 5X"0B"; -- 11
        wait for PER * 3;
        START <= '1';
        wait for PER * 1;
        START <= '0';
        wait for PER * 19;
        RSTB <= '0';
        wait for PER * 5;

        -- program 2
        RSTB <= '1';
        START_LOC <= 3X"2";
        LEN <= 5X"0D"; -- 13
        wait for PER * 3;
        START <= '1';
        wait for PER * 1;
        START <= '0';
        wait for PER * 19;
        RSTB <= '0';
        wait for PER * 5;

        -- program 3
        RSTB <= '1';
        START_LOC <= 3X"5";
        LEN <= 5X"11"; -- 17
        wait for PER * 3;
        START <= '1';
        wait for PER * 1;
        START <= '0';
        wait for PER * 19;
        RSTB <= '0';
        wait for PER * 5;
	end process;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
