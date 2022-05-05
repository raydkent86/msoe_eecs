-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: ORBFA.vhd
-- DESCRIPTION: Implements a full adder using a with-select statement

-- include IEEE standard logic signal library
library ieee;
use ieee.std_logic_1164.all;

-- describe full adder symbol
entity ORBFA is
	port(
		ABCIN: in std_logic_vector(2 downto 0); -- input bits in vector form
		S: out std_logic; -- sum
		COUT: out std_logic -- carry out
	);
end entity ORBFA;

-- describe signal path using with/select mux
architecture MULTIPLEXER of ORBFA is
	begin
		-- sum bit: low for everything except when only one bit is active or all bits are active
		with ABCIN select
			S <=	'1' when B"001",
					'1' when B"010",
					'1' when B"100",
					'1' when B"111",
					'0' when others;
		
		-- carry bit: high for everything except when all bits are low or only one bit is active
		with ABCIN select
			COUT <= '0' when B"000",
					  '0' when B"001",
					  '0' when B"010",
					  '0' when B"100",
					  '1' when others;
		
	end architecture MULTIPLEXER;
