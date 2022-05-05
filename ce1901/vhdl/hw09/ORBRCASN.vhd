---- NAME: Owen Bailey
---- COURSE AND SECTION: CE 1901 031
---- FILE: ORBRCASN.vhd
---- DESCRIPTION: Implementation of an N-bit-wide ripple carry adder/subtractor

-- include IEEE standard logic signal library
library ieee;
use ieee.std_logic_1164.all;

-- describe N-bit RCAS symbol
-- INPUT: A, B: N-bit-wide data
-- 		 SUB: subtraction flag
-- OUTPUT: S: sum
--         C: carry out/unsigned overflow
--			  OV: signed overflow
entity ORBRCASN is
	generic ( N : natural := 8);
	port(
		A : in std_logic_vector(N-1 downto 0);		-- operand 1
		B : in std_logic_vector(N-1 downto 0);		-- operand 2
		SUB : in std_logic;								-- subtracts when active
		S : out std_logic_vector(N-1 downto 0);	-- sum
		C : out std_logic; 								-- carry out/unsigned overflow
		OV : out std_logic								-- signed overflow
	);
end entity ORBRCASN;

-- structural implementation of RCASN using for/generate
architecture STRUCT of ORBRCASN is
	-- full adder component
	component ORBFA is
	port(
		A: in std_logic;
		B: in std_logic;
		CIN: in std_logic;
		S: out std_logic; -- sum
		COUT: out std_logic -- carry out
	);
	end component ORBFA;
	
	
	
	-- carry bus
	signal CARRY : std_logic_vector(N-1 downto 0);
	
	-- mux output to go to B
	signal TO_B : std_logic_vector(N-1 downto 0);
	
	begin
		-- form TO_B
		mux_addsubtract : for I in 0 to N-1 generate
			with SUB select
				TO_B(I) <= B(I) when '0',
							  not B(I) when '1';
		end generate mux_addsubtract;
		
		-- first full adder
		fa0 : ORBFA port map(
									A => A(0),
									B => TO_B(0),
									CIN => SUB,
									S => S(0),
									COUT => CARRY(0)
									);
		
		-- subsequent full adders
		bitslice_fa : for I in 1 to N-1 generate
			faN: ORBFA port map(
									  A => A(I),
									  B => TO_B(I),
									  CIN => CARRY(I-1),
									  S => S(I),
									  COUT => CARRY(I)
									 );
		end generate bitslice_fa;
		
		-- overflow bit (circuit only for signed ints)
		OV <= CARRY(N-1) xor CARRY(N-2);
		
	end architecture STRUCT;
									
