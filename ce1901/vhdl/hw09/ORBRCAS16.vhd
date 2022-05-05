---- NAME: Owen Bailey
---- COURSE AND SECTION: CE 1901 031
---- FILE: ORBRCAS16.vhd
---- DESCRIPTION: Implementation of an N-bit-wide ripple carry adder/subtractor

-- include IEEE standard logic signal library
library ieee;
use ieee.std_logic_1164.all;

-- describe 16-bit RCAS symbol
-- INPUT: A, B: 16-bit-wide data
-- 		 SUB: subtraction flag
-- OUTPUT: S: sum
--         C: carry out/unsigned overflow
--			  OV: signed overflow
entity ORBRCAS16 is
	port(
		A : in std_logic_vector(15 downto 0);		-- operand 1
		B : in std_logic_vector(15 downto 0);		-- operand 2
		SUB : in std_logic;								-- subtracts when active
		S : out std_logic_vector(15 downto 0);		-- sum
		C : out std_logic; 								-- carry out/unsigned overflow
		OV : out std_logic								-- signed overflow
	);
end entity ORBRCAS16;

architecture STRUCT of ORBRCAS16 is
	component ORBRCASN is
		generic ( N : natural := 8);
		port(
			A : in std_logic_vector(N-1 downto 0);		-- operand 1
			B : in std_logic_vector(N-1 downto 0);		-- operand 2
			SUB : in std_logic;								-- subtracts when active
			S : out std_logic_vector(N-1 downto 0);	-- sum
			C : out std_logic; 								-- carry out/unsigned overflow
			OV : out std_logic								-- signed overflow
		);
	end component ORBRCASN;
	begin
		rcas: ORBRCASN generic map (N => 16)
							port map(
										A => A,
										B => B,
										SUB => SUB,
										S => S,
										C => C,
										OV => OV
										);
	end architecture STRUCT;
