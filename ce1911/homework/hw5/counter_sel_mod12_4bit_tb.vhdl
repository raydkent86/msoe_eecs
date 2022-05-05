--
-- created 03/25/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- counter_sel_mod12_4bit_tb.vhdl
-- rev 0
----------------------------------------
--
-- testbench for 4 bit counter with
-- mod12 mode
--
-- brute force implementation
----------------------------------------
--
-- Inputs: clk, rstb, din, set
-- Outputs: q
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity counter_sel_mod12_4bit_tb is
	-- no entry - testbench
end entity;

architecture testbench of counter_sel_mod12_4bit_tb is
	signal CLK: std_logic;
	signal RSTB: std_logic;
	signal MODE: std_logic;
	signal CNT: std_logic_vector(3 downto 0);
	constant PER: time := 20 ns;
	
	-- component prototype
	component counter_sel_mod12_4bit is
	port
	(
		i_clk: in std_logic;
		i_rstb: in std_logic;
		i_mode: in std_logic;
		o_cnt: out std_logic_vector(3 downto 0)
	);
	end component;
	
	begin
		DUT: counter_sel_mod12_4bit
		port map
		(
			i_clk => CLK,
			i_rstb => RSTB,
			i_mode => MODE,
			o_cnt => CNT
		);
	
	-- test processes
	-- clock process
	clock: process
	begin
		-- initialize
		CLK <= '0';
		
		-- infinite l00p
		loop
			wait for PER/2;
			CLK <= not CLK;
		end loop;
	end process;
	
	-- reset process
	reset: process
	begin
		-- initialize
		RSTB <= '0';
		
		wait for PER * 2;
		
		RSTB <= '1';
		
		-- wait forever
		wait;
	end process;
	
	-- run process
	run: process
	begin
		-- initialize inputs
		MODE <= '0';
		wait for 3 * PER;
		-- verify mod16
		wait for 20 * PER;
		-- verify mod12
		MODE <= '1';
		wait for 20 * PER;
		-- reset to mod16
		MODE <= '0';
		wait for 20 * PER;
	end process;
-- end test processes
end architecture;
