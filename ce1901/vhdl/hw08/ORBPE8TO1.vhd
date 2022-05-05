-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: ORBPE8TO1.vhd
-- DESCRIPTION: Implements an eight-to-one priority encoder using a when/else statement

-- include IEEE standard logic signal library
library ieee;
use ieee.std_logic_1164.all;

-- describe priority encoder symbol
entity ORBPE8TO1 is
	port(
		A: in std_logic_vector(7 downto 0); -- input bits
		Y: out std_logic_vector(2 downto 0); -- sum
		NONE: out std_logic -- none flag
	);
end entity ORBPE8TO1;

-- describe signal path using with/select mux
architecture ENCODER of ORBPE8TO1 is
	begin
		-- configure priority encoder outputs
		Y <= B"111" when (A(7) = '1') else
			  B"110" when (A(6) = '1') else
			  B"101" when (A(5) = '1') else
			  B"100" when (A(4) = '1') else
			  B"011" when (A(3) = '1') else
			  B"010" when (A(2) = '1') else
			  B"001" when (A(1) = '1') else
			  B"000" when (A(0) = '1');
		
		-- configure none flag to activate when all inputs inactive
		NONE <= '1' when (A = B"00000000") else
				  '0';
	end architecture ENCODER;