-- ff1.vhd
-- created 3/18/22  orb
-- rev0
-- practice n-bit flip-flop file

library ieee;
use ieee.std_logic_1164.all;

entity ff1_n is
	generic
	(
		N: positive := 11 -- wicked weahd
	);
	port
	(
		i_rstb: in std_logic;
		i_clk: in std_logic;
		i_d: in std_logic_vector((N - 1) downto 0);
		o_q: out std_logic_vector((N - 1) downto 0)
	);
end entity;

architecture behavioral of ff1_n is
begin
	process(i_clk, i_rstb)
	begin
		if (i_rstb = '0') then
			o_q <= (others => '0');
		elsif (rising_edge(i_clk)) then -- do NOT use iF (ClK'EveNt AnD cLK = '1'), even though it's all over the web - it's garbage
			o_q <= i_d;
		end if;
	end process;
end architecture;
