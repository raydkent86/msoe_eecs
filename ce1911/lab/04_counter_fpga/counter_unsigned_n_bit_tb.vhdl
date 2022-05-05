------------------------------
--
-- counter_unsigned_n_bit_tb.vhdl
--
-- created: 1/26/18
-- by: johnsontimoj
-- rev: 0
--
-- testbench for n bit counter
-- of counter_unsigned_n_bit.vhdl
--
-- using n = 5
--
-- brute force implementation
--
-------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity counter_unsigned_n_bit_tb is
	generic(
				Ntb: natural := 5
	);
	-- no port entry - testbench
end entity;

architecture testbench of counter_unsigned_n_bit_tb is
	signal	CLK:	std_logic;
	signal	RSTB:	std_logic;
	
	signal	CNT:	std_logic_vector((Ntb - 1) downto 0);
	
	constant	PER:	time	:=20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	COMPONENT counter_unsigned_n_bit
		GENERIC ( N : INTEGER := 4 );
		PORT
		(
			i_clk		:	 IN STD_LOGIC;
			i_rstb	:	 IN STD_LOGIC;
			o_cnt		:	 OUT STD_LOGIC_VECTOR(n-1 DOWNTO 0)
		);
	END COMPONENT;
	-----------------------------------
	
	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: counter_unsigned_n_bit
		generic map(
						N => Ntb
		)
		port map(
					i_rstb 	=> RSTB,
					i_clk 	=> CLK,
					o_cnt 	=> CNT
		);


	-------------------------------------
	-- Test processes
	-------------------------------------
	-- Clock process
	clock: process		-- note - no sensitivity list allowed
	begin
		CLK <= '0';
		wait for PER;
		infinite: loop
			CLK <= not CLK; wait for PER/2;
		end loop;				
	end process clock;
	
	-- Reset process
	reset: process		-- note - no sensitivity list allowed
	begin
		RSTB <= '0'; wait for 1.5*PER;
		RSTB <= '1'; wait;
	end process reset;
	
	-- Run process
   -- no run process
	
	-------------------------------------
	-- End test processes
	-------------------------------------
	
end architecture;