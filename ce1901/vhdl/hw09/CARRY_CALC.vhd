---- NAME: Owen Bailey
---- COURSE AND SECTION: CE 1901 031
---- FILE: CARRY_CALC.vhd
---- DESCRIPTION: Implements a carry calculator for a look-ahead adder

-- include IEEE standard logic signal library
library ieee;
use ieee.std_logic_1164.all;

-- describe carry calculator symbol
entity CARRY_CALC is
	port(
		CIN : in std_logic; 							-- carry in
		P : in std_logic_vector(3 downto 0);	-- propagate
		G : in std_logic_vector(3 downto 0);	-- generate
		C : out std_logic_vector(3 downto 0)	-- carrys
	);
end entity CARRY_CALC;

-- define values for generate and propagate terms
architecture DATAFLOW of CARRY_CALC is
	begin
		C(3) <= G(3) or (P(3) and G(2)) or (P(3) and P(2) and G(1))
				  or (P(3) and P(2) and P(1) and G(0)) or (P(3) and P(2) and P(1) and P(0) and CIN);
		C(2) <= G(2) or (P(2) and G(1)) or (P(2) and P(1) and G(0))
				  or (P(2) and P(1) and P(0) and CIN);
		C(1) <= G(1) or (P(1) and G(0)) or (P(1) and P(0) and CIN);
		C(0) <= G(0) or (P(0) and CIN);
	end architecture DATAFLOW;
