----------------------------------------
-- created 05/01/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- ram_256_x8_inferred_lab8.vhdl
-- rev 0
----------------------------------------
--
-- inferred RAM for lab 8
-- 32 x 8 bits = 256b in a x8 config
-- no library elements
-- 
----------------------------------------
-- Inputs: 	clk, web, addr, data_in
-- Outputs: data_out
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_256_x8_inferred_lab8 is
	generic
	(
		mem_width:	positive := 8;
		mem_depth:	positive := 32 -- 2^5
	);
	port
	(
		i_clk: 			in std_logic;
		i_web:		    in std_logic; -- write-enable-not
		i_addr:		    in std_logic_vector(4 downto 0); -- address
		i_data_in:	    in std_logic_vector(7 downto 0); -- data in
		
		o_data_out:	    out std_logic_vector(7 downto 0) -- data out
	);
end entity;

architecture behavioral of ram_256_x8_inferred_lab8 is
	type sram_type is array (0 to 31) of std_logic_vector(7 downto 0);
	signal mySRAM: sram_type;
	begin
		-- write process
		process(i_clk)
		begin
			if(rising_edge(i_clk)) then
				if (i_web = '0') then
					mySRAM(to_integer(unsigned(i_addr))) <= i_data_in;
				end if;
			end if;
		end process;
		
		-- async read
		o_data_out <= mySRAM(to_integer(unsigned(i_addr)));
end architecture;
