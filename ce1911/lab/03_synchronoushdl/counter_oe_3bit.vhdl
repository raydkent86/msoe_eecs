--------------------------------------
--
-- counter_oe_3bit.vhdl
--
-- created 3/23/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- unsigned odd/even wrapping 3 bit
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

entity counter_oe_3bit is
    port (
			i_clk:	in std_logic; 
			i_rstb:	in std_logic;
			i_dir:	in std_logic;

			o_cnt: 	out std_logic_vector(2 downto 0)
    );
end entity;

architecture behavioral of counter_oe_3bit is

	signal cnt_sig: unsigned(2 downto 0);
	
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
				if (cnt_sig(0) and '1') then
					cnt_sig <= cnt_sig + 1;
				else
					cnt_sig <= cnt_sig + 2;
				end if;
			else
				if (cnt_sig(0) nand '1') then
					cnt_sig <= cnt_sig - 1;
				else
					cnt_sig <= cnt_sig - 2;
				end if;
			end if;
	  end if;
   end process;
	
	--
	-- Output section
	--
	o_cnt <= std_logic_vector(cnt_sig);
	
end behavioral;
