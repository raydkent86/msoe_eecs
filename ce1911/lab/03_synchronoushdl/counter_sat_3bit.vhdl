--------------------------------------
--
-- counter_sat_3bit.vhdl
--
-- created 2/1/2018
-- tj
--
-- rev 0
----------------------------------------
--
-- saturating 3 bit counter
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

entity counter_sat_3bit is
    port (
			i_clk:	in std_logic; 
			i_rstb:	in std_logic;
			i_dir:	in std_logic;

			o_cnt: 	out std_logic_vector(2 downto 0)
    );
end entity;

architecture behavioral of counter_sat_3bit is

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
				if(cnt_sig < 7) then
					cnt_sig <= cnt_sig + 1;
				end if;
			else
				if (cnt_sig > 0) then
					cnt_sig <= cnt_sig - 1;
				end if;
			end if;
	  end if;
   end process;
	
	--
	-- Output section
	--
	o_cnt <= std_logic_vector(cnt_sig);
	
end behavioral;
