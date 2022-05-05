------------------------------
--
-- counter_updn_byM_nbit_tb.vhdl
--
-- created: 1/26/18
-- by: johnsontimoj
-- rev: 0
--
-- DE10 implementation for N bit count by M up/dn counter
-- of counter_updn_byM_nbit.vhdl
--
-------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity counter_updn_byM_nbit_tb is
	generic(
				N: positive := 16;
				M: positive := 4
	);
	-- no entry - testbench
end entity;

architecture testbench of counter_updn_byM_nbit_tb is
	signal	CLK:		std_logic;
	signal	RSTB:		std_logic;
	signal	DIR:		std_logic;
	signal	RUN:		std_logic;
	signal 	AMMT:		std_logic_vector((M - 1) downto 0);
	
	signal	CNT:		std_logic_vector((N - 1) downto 0);
	
	constant	PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
COMPONENT counter_updn_byM_nbit
	generic(
			n: positive := 8;
			m: positive := 3
	);
	PORT
	(
		i_clk		:	 IN STD_LOGIC;
		i_rstb	:	 IN STD_LOGIC;
		i_dir		:	 IN STD_LOGIC;
		i_run		:	 IN STD_LOGIC;
		i_ammt	:	 IN STD_LOGIC_VECTOR((m - 1) downto 0);
		o_cnt		:	 OUT STD_LOGIC_VECTOR((n - 1) downto 0)
	);
END COMPONENT;
	-----------------------------------
	
	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: counter_updn_byM_nbit
		generic map(
						n => N,
						m => M
		)
		port map(
					i_clk 	=> CLK, 
					i_rstb 	=> RSTB,
					i_dir 	=> DIR,
					i_run 	=> RUN,
					i_ammt  	=> AMMT,

					o_cnt		=> CNT
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
	end process clock;
	
	-- Reset process
	reset: process		-- note - no sensitivity list allowed
	begin
		RSTB <= '0'; wait for PER*2;
		RSTB <= '1'; wait;
	end process reset;
	
	-----------------------------------
	-----------------------------------
	-- this is the complete version of the testbench
	-- it includes testing for wrapping
	-- but takes a very long time
	--------------------------------------
	-------------------------------------
--	running: process		-- note - no sensitivity list allowed
--	begin
--		------------------------
--		-- Initialize  inputs
--		DIR <= '0';
--		RUN <= '0';
--		AMMT <= (others => '0');
--		wait for 2*PER;	-- wait for reset
--		
--		for i in 0 to (2**M - 1) loop
--			-- increment ammt
--			DIR <= '0';			-- start up
--			RUN <= '1';
--			AMMT <= std_logic_vector(to_unsigned(i, M));
--			wait for ((2**N)/(real(i)))*PER;
--			wait for 2*PER;	-- to show wrap
--			
--			RUN <= '0';			-- show pause
--			wait for 4*PER;
--			
--			DIR <= '1';			--switch to down
--			RUN <= '1';
--			wait for ((2**N)/(real(i)))*PER;
--			wait for 2*PER;	-- to reset - wrap is shown at beginning
--			
--			RUN <= '0';			-- show pause
--			wait for 4*PER;			
--		end loop;
--	end process;
	--------------------------------------------
	--------------------------------------------
	
	
	-----------------------------------
	-----------------------------------
	-- this is the limited version of the testbench
	-- it only checks for 5 counts
	-- but is easier to interpret
	--------------------------------------
	-------------------------------------
	-- Run processes
   dr: process		-- note - no sensitivity list allowed
	begin
		------------------------
		-- Initialize  input
		DIR <= '0';
		RUN <= '1';
		wait for 2*PER;	-- wait for reset
		
		dir_lp: loop
			-- toggle dir
			DIR <= '0';
			wait for 160*PER;	
			RUN <= '0';
			wait for 5*PER;	
			DIR <= '1';
			wait for 5*PER;	
			RUN <= '1';
			wait for 160*PER;
		end loop;
	end process dr;
	
	amt: process		-- note - no sensitivity list allowed
	begin
		------------------------
		-- Initialize  input
		AMMT <= (others => '0');
		wait for 2*PER;	-- wait for reset
		
		for i in 0 to (2**M - 1) loop
			-- increment ammt
			AMMT <= std_logic_vector(to_unsigned(i, M));
			wait for 5*PER;	
		end loop;
	end process amt;
	--------------------------------------------
	--------------------------------------------
	
	-------------------------------------
	-- End test processes
	-------------------------------------

	
end architecture;