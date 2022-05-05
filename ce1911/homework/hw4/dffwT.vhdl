--
-- created 03/21/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- dffwT.vhdl
-- rev 0
----------------------------------------
--
-- special DFF with toggle mode
----------------------------------------
--
-- Inputs: clk, rstb, din, t
-- Outputs: q
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity dffwT is
	port
	(
		i_clk: in std_logic;
		i_rstb: in std_logic;
		i_din: in std_logic;
		i_t: in std_logic;
		o_q: out std_logic
	);
end entity;

architecture behavioral of dffwT is
signal QOUT: std_logic;
begin
	process(i_clk, i_rstb, i_t, QOUT)
	begin
		if (i_rstb = '0') then
			QOUT <= '0';
		elsif (rising_edge(i_clk)) then
			if (i_t = '1') then
				QOUT <= not QOUT;
			else
				QOUT <= i_din;
			end if;
		end if;
		o_q <= QOUT;
	end process;
end architecture;
