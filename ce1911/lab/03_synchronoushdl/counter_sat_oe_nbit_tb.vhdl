------------------------------
--
-- counter_wrapping_oddeven_3bit_tb.vhdl
--
-- created 3/23/2022
-- Owen Bailey - CE 1911 011
-- rev: 0
--
-- testbench for unsigned odd/even
-- wrapping 3 bit counter of
-- counter_sat_oe_nbit.vhdl
--
-------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity counter_sat_oe_nbit_tb is
	generic(
		M: positive := 4
	);
end entity;

architecture testbench of counter_sat_oe_nbit_tb is
	signal	CLK:		std_logic;
	signal	RSTB:		std_logic;
	signal	DIR:		std_logic;
	
	signal	CNT:		std_logic_vector((M - 1) downto 0);
	
	constant PER:		time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
COMPONENT counter_sat_oe_nbit
	generic (
		N: positive := 8
	);
   port (
			i_clk:	in std_logic; 
			i_rstb:	in std_logic;
			i_dir:	in std_logic;

			o_cnt: 	out std_logic_vector((N - 1) downto 0)
	);
END COMPONENT;
	-----------------------------------
	
	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: counter_sat_oe_nbit
		generic map( N => M)
		port map(
					i_clk 	=> CLK, 
					i_rstb 	=> RSTB,
					i_dir 	=> DIR,

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

  run: process		-- note - no sensitivity list allowed
	begin
		------------------------
		-- Initialize  inputs
		DIR <= '0';
		wait for PER*2;	-- wait for reset
		
		lp: loop
			-- verify count up
			DIR <= '0';
			wait for PER*10;
			
			-- verify count down
			DIR <= '1';
			wait for PER*10;
		end loop;
		
	end process run;
	
	-------------------------------------
	-- End test processes
	-------------------------------------

	
end architecture;