-- TESTBENCH FOR orblatch_bdf

library ieee;
use ieee.std_logic_1164.all;

entity orblatch_bdf_tb is
	-- no entry - testbench
end entity;

architecture testbench of orblatch_bdf_tb is
	signal CLK: std_logic;
	signal DEE: std_logic; -- lol
	signal QUE: std_logic; -- turbolol
	constant PER: time := 20 ns; -- constant time value
	
	-- autogenerated component prototype
	COMPONENT orblatch_bdf
		PORT
		(
			i_clk		:	 IN STD_LOGIC;
			i_d		:	 IN STD_LOGIC;
			o_q		:	 OUT STD_LOGIC
		);
	END COMPONENT;
	
	begin
		-- device under test (DUT)
		DUT: orblatch_bdf
			port map
			(
				i_clk => CLK,
				i_d => DEE,
				o_q => QUE
			);
		
		-- testing
		brute: process
			begin
				-- initialize inputs
				DEE <= '0';
				CLK <= '0';
				
				-- run
				wait for PER;
				CLK <= '1';
				wait for PER;
				DEE <= '1';
				wait for PER;
				CLK <= '0';
				wait for PER;
				DEE <= '0';
			end process;

	end architecture;
