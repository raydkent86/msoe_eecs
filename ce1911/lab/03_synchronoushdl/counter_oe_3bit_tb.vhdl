------------------------------
--
-- counter_oe_3bit_tb.vhdl
--
-- created 3/23/2022
-- Owen Bailey - CE 1911 011
-- rev: 0
--
-- testbench for unsigned odd/even
-- wrapping 3 bit counter of
-- counter_oe_3bit.vhdl
--
-------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity counter_oe_3bit_tb is
	-- no entry - testbench
end entity;

architecture testbench of counter_oe_3bit_tb is
	signal	CLK:		std_logic;
	signal	RSTB:		std_logic;
	signal	DIR:		std_logic;
	
	signal	CNT:		std_logic_vector(2 downto 0);
	
	constant PER:		time	:= 20 ns;

	--------------------------------
	-- Component prototype
	---------------------------------
COMPONENT counter_oe_3bit
	PORT
	(
		i_clk		:	 IN STD_LOGIC;
		i_rstb	:	 IN STD_LOGIC;
		i_dir		:	 IN STD_LOGIC;
		o_cnt		:	 OUT STD_LOGIC_VECTOR(2 downto 0)
	);
END COMPONENT;
	-----------------------------------
	
	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: counter_oe_3bit
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