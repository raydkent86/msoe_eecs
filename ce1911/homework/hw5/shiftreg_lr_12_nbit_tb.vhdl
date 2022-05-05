--
-- created 03/25/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- shiftreg_lr_12_nbit_tb.vhdl
-- rev 0
----------------------------------------
--
-- testbench for n bit lr, 1/2 bit shift
-- register of shiftreg_lr_12_nbit.vhdl
--
-- brute force implementation
----------------------------------------
--
-- Inputs: clk, rstb, din, set
-- Outputs: q
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity shiftreg_lr_12_nbit_tb is
	generic
	(
		M: natural := 8;
		TB_INIT: natural := 150
	);
	-- no entry - testbench
end entity;

architecture testbench of shiftreg_lr_12_nbit_tb is
	signal CLK: std_logic;
	signal RSTB: std_logic;
	signal AMT: std_logic;
	signal SHIFT: std_logic;
	signal DIR: std_logic;
	signal REG_OUT: std_logic_vector((M - 1) downto 0);
	constant PER: time := 20 ns;
	
	-- component prototype
	component shiftreg_lr_12_nbit is
	generic
	(
		N: natural := 8; 		-- bit width
		init: natural := 150 -- initialization value
	);
	port
	(
		i_clk: in std_logic;
		i_rstb: in std_logic;
		i_amt: in std_logic; -- 0 for 1, 1 for 2
		i_shift: in std_logic; -- 0 for no shift
		i_dir: in std_logic; -- 0 for left, 1 for right
		o_reg_out: out std_logic_vector((N - 1) downto 0)
	);
	end component;
	
	begin
		DUT: shiftreg_lr_12_nbit
		generic map
		(
			N => M,
			init => TB_INIT
		)
		port map
		(
			i_clk => CLK,
			i_rstb => RSTB,
			i_amt => AMT,
			i_shift => SHIFT,
			i_dir => DIR,
			o_reg_out => REG_OUT
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
		AMT <= '0';
		SHIFT <= '0';
		DIR <= '0';
		wait for 3 * PER;
		-- verify no shift
		wait for 2 * PER;
		-- verify shift left 1
		SHIFT <= '1';
		AMT <= '0';
		DIR <= '0';
		wait for 4 * PER;
		-- verify shift left 2
		AMT <= '1';
		DIR <= '0';
		wait for 4 * PER;
		-- verify shift right 1
		AMT <= '0';
		DIR <= '1';
		wait for 4 * PER;
		-- verify shift right 2
		AMT <= '1';
		DIR <= '1';
		wait for 4 * PER;
	end process;
-- end test processes
end architecture;
