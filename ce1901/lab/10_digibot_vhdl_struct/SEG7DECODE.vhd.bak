-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: CONTROLLER.vhd
-- DESCRIPTION: Implements a motion controller for the Digibot using muxes

-- include ieee standard logic signal library  
library ieee; 
use ieee.std_logic_1164.all;

-- describe the functional block diagram symbol 
entity SEG7DECODE is  
	port(
		A: in std_logic_vector(5 downto 0);  
		SEG: out std_logic_vector(7 downto 0)
	); 
end entity SEG7DECODE; 

-- describe signals and vectors using multiplexer with-select syntax
architecture MULTIPLEXER of SEG7DECODE is  
begin  

		with A select  
			SEG <= 	8X"C0" when 6X"00", -- 0
						8X"F9" when 6X"01", -- 1
						8X"A4" when 6X"02", -- 2
						8X"B0" when 6X"03", -- 3
						8X"99" when 6X"04", -- 4
						8X"92" when 6X"05", -- 5
						8X"82" when 6X"06", -- 6
						8X"D8" when 6X"07", -- 7
						8X"80" when 6X"08", -- 8
						8X"90" when 6X"09", -- 9
						8X"88" when 6X"0A", -- A
						8X"83" when 6X"0B", -- B
						8X"A7" when 6X"0C", -- C
						8X"A1" when 6X"0D", -- D
						8X"86" when 6X"0E", -- E
						8X"8E" when 6X"0F", -- F
						8X"C2" when 6X"10", -- G
						8X"8B" when 6X"11", -- H
						8X"FB" when 6X"12", -- I
						8X"E1" when 6X"13", -- J
						8X"8A" when 6X"14", -- K
						8X"C7" when 6X"15", -- L
						8X"C8" when 6X"16", -- M
						8X"AB" when 6X"17", -- N
						8X"A3" when 6X"18", -- O
						8X"8C" when 6X"19", -- P
						8X"98" when 6X"1A", -- Q
						8X"AF" when 6X"1B", -- R
						8X"93" when 6X"1C", -- S
						8X"87" when 6X"1D", -- T
						8X"E3" when 6X"1E", -- U
						8X"C1" when 6X"1F", -- V
						8X"81" when 6X"20", -- W
						8X"89" when 6X"21", -- X
						8X"91" when 6X"22", -- Y
						8X"E4" when 6X"23", -- Z
						8X"BF" when 6X"24", -- dash
						8X"F7" when 6X"25", -- underscore
						8X"7F" when 6X"26", -- decimal
						8X"FF" when others; -- blank
 
end architecture MULTIPLEXER;
