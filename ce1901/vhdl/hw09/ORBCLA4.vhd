---- NAME: Owen Bailey
---- COURSE AND SECTION: CE 1901 031
---- FILE: ORBCLA4.vhd
---- DESCRIPTION: Structural implementation of a four-bit carry look-ahead adder

-- include IEEE standard logic signal library
library ieee;
use ieee.std_logic_1164.all;

-- describe four-bit carry look-ahead adder symbol
entity ORBCLA4 is
	port(
		A : in std_logic_vector(3 downto 0);	-- operand 1
		B : in std_logic_vector(3 downto 0);	-- operand 2
		CIN : in std_logic;							-- carry in
		S : out std_logic_vector(3 downto 0);	-- sum
		COUT : out std_logic; 						-- carry out/unsigned overflow
	OV : out std_logic								-- signed overflow
	);
end entity ORBCLA4;

architecture STRUCT of ORBCLA4 is
	-- components
	-- propagate/generate generator
	component PG_GEN is
	port(
		A: in std_logic_vector(3 downto 0); -- first operand in adder
		B: in std_logic_vector(3 downto 0); -- second operand in adder
		G: out std_logic_vector(3 downto 0); -- generate
		P: out std_logic_vector(3 downto 0) -- propagate
	);
	end component PG_GEN;
	
	-- carry value calculator
	component CARRY_CALC is
	port(
		CIN : in std_logic; 							-- carry in
		P : in std_logic_vector(3 downto 0);	-- propagate
		G : in std_logic_vector(3 downto 0);	-- generate
		C : out std_logic_vector(3 downto 0)	-- carrys
	);
	end component CARRY_CALC;
	
	-- full adder
	component ORBFA is
	port(
		A: in std_logic;
		B: in std_logic;
		CIN: in std_logic;
		S: out std_logic; -- sum
		COUT: out std_logic -- carry out
	);
	end component ORBFA;
	
	signal CARRY : std_logic_vector(3 downto 0);
	signal GEN, PROP : std_logic_vector(3 downto 0);
	begin
		-- prop/generate gen
		pg : PG_GEN port map(
									A => A,
									B => B,
									G => GEN,
									P => PROP
									);
									
		-- carry calc
		cc : CARRY_CALC port map(
										CIN => CIN,
										P => PROP,
										G => GEN,
										C => CARRY
										);
		
		-- first bitslice full adder
		fa0 : ORBFA port map(
									A => A(0),
									B => B(0),
									CIN => CIN,
									S => S(0)
									);
		
		
		-- generate three more bitslices for full adders
		bitslice_fa : for I in 1 to 3 generate
			faN : ORBFA port map(
										A => A(I),
										B => B(I),
										CIN => CARRY(I-1),
										S => S(I)
										);
		end generate bitslice_fa;
		
		-- overflows
		COUT <= CARRY(3);
		OV <= CARRY(3) xor CARRY(2);
		
end architecture STRUCT;
		
