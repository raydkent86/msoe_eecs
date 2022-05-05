-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: ORBHA.vhd
-- DESCRIPTION: Implements a half adder using a dataflow equation

-- include IEEE standard logic signal library
library ieee;
use ieee.std_logic_1164.all;

-- describe half adder symbol
entity ORBHA is
	port(
		A, B: in std_logic; -- input bits
		S: out std_logic; -- sum
		COUT: out std_logic -- carry out
	);
end entity ORBHA;

-- describe signal path using dataflow equation
architecture DATAFLOW of ORBHA is
	begin
		S <= A xor B;
		COUT <= A and B;
	end architecture DATAFLOW;
