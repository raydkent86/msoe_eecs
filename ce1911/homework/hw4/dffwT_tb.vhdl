--
-- created 03/21/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- dffwS_tb.vhdl
-- rev 0
----------------------------------------
--
-- testbench for dff with set of
-- dffwS.vhdl
----------------------------------------
--
-- Inputs: clk, rstb, din, set
-- Outputs: q
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity dffwT_tb is
	-- no entry - testbench
end entity;

architecture testbench of dffwT_tb is
	signal CLK: std_logic;
	signal RSTB: std_logic;
	signal DIN: std_logic;
	signal T: std_logic;
	signal Q: std_logic;
	constant PER: time := 20 ns;
	
	-- component prototype
	component dffwT is
	port
	(
		i_clk: in std_logic;
		i_rstb: in std_logic;
		i_din: in std_logic;
		i_t: in std_logic;
		o_q: out std_logic
	);
	end component;
	
	begin
		DUT: dffwT
		port map
		(
			i_clk => CLK,
			i_rstb => RSTB,
			i_din => DIN,
			i_t => T,
			o_q => Q
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
		-- init inputs
		DIN <= '0';
		T <= '0';
		wait for 2 * PER; -- wait for reset
		
		-- verify normal operation
		DIN <= '1'; wait for 3 * PER;
		DIN <= '0'; wait for 3 * PER;
		DIN <= '1'; wait for 3 * PER;
		DIN <= '0'; wait for 3 * PER;
		
		-- verify toggle operation
		T <= '1';
		DIN <= '1'; wait for 4 * PER;
		DIN <= '0'; wait for 4 * PER;
		
		-- verify normal operation
		T <= '0';
		DIN <= '1'; wait for 3 * PER;
		DIN <= '0'; wait for 3 * PER;
		DIN <= '1'; wait for 3 * PER;
		DIN <= '0'; wait for 3 * PER;
	end process;
-- end test processes
end architecture;
