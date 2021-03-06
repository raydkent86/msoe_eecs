--------------------------------------
--
-- counter_gray_3bit_tb.vhdl
--
-- created 4/11/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- Testbench for counter_gray_3bit.vhdl
-- (three-bit Gray code counter FSM)
-- brute force implementation
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity counter_gray_3bit_tb is
	-- no entry - testbench
end entity;

architecture testbench of counter_gray_3bit_tb is
	signal	DIR:	std_logic;
	signal	CLK:	std_logic;
	signal	RSTB:	std_logic;
	
	signal	Q:		std_logic_vector(2 downto 0);

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	COMPONENT counter_gray_3bit IS 
	PORT
	(
		i_dir :  IN  STD_LOGIC;
		i_rstb :  IN  STD_LOGIC;
		i_clk :  IN  STD_LOGIC;
		o_q :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
	END component;
	-----------------------------------
	
	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: counter_gray_3bit 
		port map(
					i_dir		=> DIR,
					i_rstb 	=> RSTB,
					i_clk 	=> CLK,
					o_q		=> Q
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
	run: process
	begin
		DIR <= '0';
		wait for PER * 10;
		DIR <= '1';
		wait;
	end process run;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;