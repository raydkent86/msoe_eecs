-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: CONTROLLER.vhd
-- DESCRIPTION: Implements a motion controller for the Digibot using muxes

-- include ieee standard logic signal library  
library ieee; 
use ieee.std_logic_1164.all;
 
-- describe the functional block diagram symbol 
entity CONTROLLER is
	port(
		CLR: 	in std_logic_vector(2 downto 0); 
		RDIR: out std_logic; 
		REN: 	out std_logic;
		LEN: 	out std_logic;
		LDIR:	out std_logic;
		HEX5CTRL: out std_logic_vector(5 downto 0);
		HEX4CTRL: out std_logic_vector(5 downto 0);
		HEX3CTRL: out std_logic_vector(5 downto 0);
		HEX2CTRL: out std_logic_vector(5 downto 0);
		HEX1CTRL: out std_logic_vector(5 downto 0);
		HEX0CTRL: out std_logic_vector(5 downto 0)
	);
end entity CONTROLLER; 
 
-- describe signals and vectors using multiplexer with-select syntax 
architecture MULTIPLEXER of CONTROLLER is  
begin  
 
		with CLR select  
		RDIR <= 	'1' when B"001", 	-- minterm 1 
					'1' when B"011", 	-- minterm 3 
					'0' when others; 	-- don’t cares and logic-0 
			  
		with CLR select  
		REN <= 	'0' when B"000",	-- minterm 0 low
					'0' when B"010",	-- minterm 2 low
					'1' when others;	-- don't cares and logic-1

		with CLR select  
		LEN <= 	'0' when B"000",	-- minterm 0 low
					'0' when B"001", 	-- minterm 1 low
					'1' when others;	-- don't cares and logic-1
		  
		with CLR select  
		LDIR <= 	'1' when B"010",	-- minterm 2
					'1' when B"011", 	-- minterm 3
					'0' when others;	-- don't cares and logic-0
		  
		HEX5CTRL <= 6X"3F"; -- display 5 is always blank

		with CLR select  
		HEX4CTRL <= 6X"1B" when B"010", -- R
						6X"3F" when others; -- display 4 is only active for "RIGHT" 
					  
		with CLR select  
		HEX3CTRL <=	6X"1C" when B"000", -- S
						6X"15" when B"001", -- L
						6X"12" when B"010", -- I
						6X"3F" when B"011", -- blank
						6X"0B" when others; -- B
				  
		with CLR select  
		HEX2CTRL <=	6X"1D" when B"000", -- T
						6X"0E" when B"001", -- E
						6X"10" when B"010", -- G
						6X"3F" when B"011", -- blank
						6X"0A" when others; -- A
				  
		with CLR select  
		HEX1CTRL <= 6X"18" when B"000", -- O
						6X"0F" when B"001", -- F
						6X"11" when B"010", -- H
						6X"10" when B"011", -- G
						6X"0C" when others; -- C
				  
		with CLR select  
		HEX0CTRL <= 6X"19" when B"000", -- P
						6X"1D" when B"001", -- T
						6X"1D" when B"010", -- T
						6X"18" when B"011", -- O
						6X"14" when others; -- K
           
end architecture MULTIPLEXER;