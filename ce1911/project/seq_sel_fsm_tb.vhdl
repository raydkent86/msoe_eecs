----------------------------------------
-- created 05/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- seq_sel_fsm_tb.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Sequence Selector Testbench
-- Testbench for single-cycle processor
-- program selector and counter
-- Brute force approach
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seq_sel_fsm_tb is
	-- no entry - testbench
end entity;

architecture testbench of seq_sel_fsm_tb is
    signal CLK: std_logic;
    signal RSTB: std_logic;
    signal START: std_logic;
    signal START_ADDRESS: std_logic_vector(2 downto 0);
    signal LEN: std_logic_vector(4 downto 0);

    signal ADDR: std_logic_vector(7 downto 0);
    signal DONE: std_logic;

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component seq_sel_fsm is
    port
    (
        i_clk: in std_logic;
        i_rstb: in std_logic;
        i_start: in std_logic;
        i_start_address: in std_logic_vector(2 downto 0);
        i_len: in std_logic_vector(4 downto 0);

        o_addr: out std_logic_vector(7 downto 0);
        o_done: out std_logic
    );
    end component;
	-----------------------------------
	
begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: seq_sel_fsm
	port map
	(
        i_clk => CLK,
        i_rstb => RSTB,
        i_start => START,
        i_start_address => START_ADDRESS,
        i_len => LEN,

        o_addr => ADDR,
        o_done => DONE
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
        
        START_ADDRESS <= 3X"0";
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
        START_ADDRESS <= 3X"2";
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
        START_ADDRESS <= 3X"5";
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
