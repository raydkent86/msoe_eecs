------------------------------
--
-- counter_4bit_tb.vhdl
--
-- created: 1/26/18
-- by: johnsontimoj
-- rev: 0
--
-- testbench for lab 2, 4 bit "good" counter
-- of counter_4bit.vhdl
--
-- brute force implementation
--
-------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity counter_4bit_tb is
	-- no entry - testbench
end entity;

architecture testbench of counter_4bit_tb is
	signal	CLK:	std_logic;
	signal	RSTB:	std_logic;
	
	signal	B0:	std_logic;
	signal	B1:	std_logic;
	signal	B2:	std_logic;
	signal	B3:	std_logic;

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	COMPONENT counter_4bit 
		PORT
		(
			i_rstb	:	 IN STD_LOGIC;
			i_clk		:	 IN STD_LOGIC;
			o_b0		:	 OUT STD_LOGIC;
			o_b1		:	 OUT STD_LOGIC;
			o_b2		:	 OUT STD_LOGIC;
			o_b3		:	 OUT STD_LOGIC
		);
	END COMPONENT;
	-----------------------------------
	
	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: counter_4bit 
		port map(
					i_rstb 	=> RSTB,
					i_clk 	=> CLK,
					o_b0 		=> B0,
					o_b1 		=> B1,
					o_b2 		=> B2,
					o_b3 		=> B3
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
	
	-- Reset process
	reset: process		-- note - no sensitivity list allowed
	begin
		RSTB <= '0'; wait for PER*2;
		RSTB <= '1'; wait;
	end process reset;
	
	-- Run Process
	-- No run process for this design
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;