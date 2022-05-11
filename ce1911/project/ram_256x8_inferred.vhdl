----------------------------------------
-- created 05/06/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- ram_256x8_inferred.vhdl
-- rev 1
----------------------------------------
--
-- Lab 9 (Project)
-- Data Memory
-- 256-word (256B) single-port inferred
-- RAM in a x8 configuration based on
-- the design from Lab 8
--
----------------------------------------
-- Inputs: 	clk, web, addr, data_in
-- Outputs: data_out
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_256x8_inferred is
	port
	(
		i_clk: 			in std_logic;
		i_web:		    in std_logic; -- write-enable-not
		i_addr:		    in std_logic_vector(7 downto 0); -- address
		i_data_in:	    in std_logic_vector(7 downto 0); -- data in
		
		o_data_out:	    out std_logic_vector(7 downto 0) -- data out
	);
end entity;

architecture behavioral of ram_256x8_inferred is
	type sram_type is array (0 to 255) of std_logic_vector(7 downto 0);
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
