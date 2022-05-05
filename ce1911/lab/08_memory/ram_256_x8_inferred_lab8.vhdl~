----------------------------------------
-- created 04/25/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- ram_inferred_16g_x32_hw12.vhdl
-- rev 0
----------------------------------------
--
-- inferred RAM homework
-- 
----------------------------------------
--
-- Inputs: 	clk, web_a, web_b, addr_a,
-- 			addr_b, data_in_a, data_in_b
-- Outputs: data_out_a, data_out_b
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_inferred_16g_x32_hw12 is
	generic
	(
		mem_width:	positive := 32;
		mem_depth:	positive	:= 536870912 -- 2^29
	);
	port
	(
		i_clk: 			in std_logic;
		i_web_a:			in std_logic;
		i_web_b:			in std_logic;
		i_addr_a:		in std_logic_vector(29 downto 0);
		i_addr_b:		in std_logic_vector(29 downto 0);
		i_data_in_a:	in std_logic_vector(32 downto 0);
		i_data_in_b:	in std_logic_vector(32 downto 0);
		
		o_data_out_a:	out std_logic_vector(32 downto 0);
		o_data_out_b:	out std_logic_vector(32 downto 0)
	);
end entity;

architecture behavioral of ram_inferred_16g_x32_hw12 is
	type sram_type is array (0 to 536870911) of std_logic_vector(31 downto 0);
	signal mySRAM: sram_type;
	begin
		-- write process - two writes for two enables
		process(i_clk)
		begin
			if(rising_edge(i_clk)) then
				-- read logic for A
				if (i_web_a = '0') then
					mySRAM(to_integer(unsigned(i_addr_a))) <= i_data_in_a;
				end if;
				if (i_web_b = '0') then
					mySRAM(to_integer(unsigned(i_addr_b))) <= i_data_in_b;
				end if;
			end if;
		end process;
		
		-- async read
		o_data_out_a <= mySRAM(to_integer(unsigned(i_addr_a)));
		o_data_out_b <= mySRAM(to_integer(unsigned(i_addr_b)));
end architecture;
