--------------------------------------
--
-- counter_sat_oe_nbit.vhdl
--
-- created 3/23/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- unsigned odd/even non-wrapping N bit
-- counter
--
----------------------------------------
--
-- Inputs: clk, rstb, dir (0 --> up)
-- Outputs: cnt
--
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_sat_oe_nbit is
	generic (
		N: positive := 8
	);
   port (
			i_clk:	in std_logic; 
			i_rstb:	in std_logic;
			i_dir:	in std_logic;

			o_cnt: 	out std_logic_vector((N - 1) downto 0)
	);
end entity;

architecture behavioral of counter_sat_oe_nbit is

	signal cnt_sig: unsigned((N - 1) downto 0);
	
begin 
   --
	-- counter section
	--
	process(i_clk, i_rstb)
	begin
		if (i_rstb = '0') then
			cnt_sig <= (others => '0');
		elsif (rising_edge(i_clk)) then
			if (i_dir = '0') then
				if (cnt_sig < ((2 ** N) - 2)) then
					if (cnt_sig(0) and '1') then
						cnt_sig <= cnt_sig + 1;
					else
						cnt_sig <= cnt_sig + 2;
					end if;
				end if;
			else
				if (cnt_sig > 1) then
					if (cnt_sig(0) nand '1') then
						cnt_sig <= cnt_sig - 1;
					else
						cnt_sig <= cnt_sig - 2;
					end if;
				end if;
			end if;
	  end if;
   end process;
	
	--
	-- Output section
	--
	o_cnt <= std_logic_vector(cnt_sig);
	
end behavioral;
