--
-- created 03/25/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- counter_sel_mod12_4bit.vhdl
-- rev 0
----------------------------------------
--
-- 4 bit counter with mod12 mode for hw
-- problem
----------------------------------------
--
-- Inputs: rstb, clk, mode
-- Outputs: cnt[3:0]
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_sel_mod12_4bit is
	port
	(
		i_clk: in std_logic;
		i_rstb: in std_logic;
		i_mode: in std_logic; -- 0 for mod16, 1 for mod12
		o_cnt: out std_logic_vector(3 downto 0)
	);
end entity;

architecture behavioral of counter_sel_mod12_4bit is
signal cnt_sig: unsigned(3 downto 0);
begin
	process(i_clk, i_rstb, i_mode, cnt_sig)
	begin
		if (i_rstb = '0') then
			cnt_sig <= to_unsigned(0, 4);
		elsif (rising_edge(i_clk)) then
			if ((i_mode = '1') and (cnt_sig > 10)) then
				-- mod12 behavior (for instance, 14 % 12 = 2,
				-- therefore the next value would be 2 + 1 = 14 - 12 + 1 = 3
				cnt_sig <= cnt_sig - 11;
			else
				cnt_sig <= cnt_sig + 1; -- automatically wraps when mod12 mode off
			end if;
		end if;
	end process;
	
	-- output logic
	o_cnt <= std_logic_vector(cnt_sig);
end architecture;
