-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: PG_Gen.vhd
-- DESCRIPTION: Implements a propagate and generate calculator for a four-bit look-ahead adder

-- include IEEE standard logic signal library
library ieee;
use ieee.std_logic_1164.all;

-- describe propagate/generate calculator symbol
entity PG_GEN is
	port(
		A: in std_logic_vector(3 downto 0); -- first operand in adder
		B: in std_logic_vector(3 downto 0); -- second operand in adder
		G: out std_logic_vector(3 downto 0); -- generate
		P: out std_logic_vector(3 downto 0) -- propagate
	);
end entity PG_GEN;

-- define values for generate and propagate terms
architecture DATAFLOW of PG_GEN is
	begin
		gen_prop: for I in 0 to 3 generate
			G(I) <= A(I) and B(I);
			P(I) <= A(I) or B(I);
		end generate gen_prop;
	end architecture DATAFLOW;
