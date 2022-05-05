--
-- created 03/21/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- dffwS.vhdl
-- rev 0
----------------------------------------
--
-- special DFF with synchronous set
----------------------------------------
--
-- Inputs: clk, rstb, din, set
-- Outputs: q
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity dffwS is
	port
	(
		i_clk: in std_logic;
		i_rstb: in std_logic;
		i_din: in std_logic;
		i_set: in std_logic;
		o_q: out std_logic
	);
end entity;

architecture behavioral of dffwS is
begin
	process(i_clk, i_rstb, i_set)
	begin
		if (i_rstb = '0') then
			o_q <= '0';
		elsif (rising_edge(i_clk)) then
			if (i_set = '1') then
				o_q <= '1';
			else
				o_q <= i_din;
			end if;
		end if;
	end process;
end architecture;
