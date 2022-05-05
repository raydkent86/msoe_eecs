-- ff1.vhd
-- created 3/18/22  orb
-- rev0
-- practice flip-flop file

library ieee;
use ieee.std_logic_1164.all;

entity ff1 is
	port
	(
		i_rstb: in std_logic;
		i_clk: in std_logic;
		i_d: in std_logic;
		o_q: out std_logic
	);
end entity;

architecture behavioral of ff1 is
begin
	process(i_clk, i_rstb)
	begin
		if (i_rstb = '0') then
			o_q <= '0';
		elsif (rising_edge(i_clk)) then -- do NOT use iF (ClK'EveNt AnD cLK = '1'), even though it's all over the web - it's garbage
			o_q <= i_d;
		end if;
	end process;
end architecture;
