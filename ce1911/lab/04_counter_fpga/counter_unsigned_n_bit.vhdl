--------------------------------------
--
-- counter_unsigned_n_bit.vhdl
--
-- created 2/29/17
-- tj
--
-- rev 0
----------------------------------------
--
-- n bit up-counter example
--
----------------------------------------
--
-- Inputs: rstb, clk
-- Outputs: cnt[n-1:0]
--
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_unsigned_n_bit is
   generic(
				N: natural := 4
	);
	port (
			i_clk :	in std_logic; 
			i_rstb :	in std_logic; 

			o_cnt : 	out std_logic_vector((N-1) downto 0)
	);
end entity;

architecture behavioral of counter_unsigned_n_bit is
	
	--
	-- internal signals
	--
	signal cnt_sig:	unsigned((N-1) downto 0);
	
begin 
	
   process(i_clk, i_rstb)
	begin
		--
		-- reset
		--
		if (i_rstb = '0') then
			cnt_sig <= (others => '0');
		--
		-- rising clk edge
		--
		elsif (rising_edge(i_clk)) then
			cnt_sig <= cnt_sig + 1;
		end if;
   end process;
	
	--
	-- Output logic
	--
	o_cnt <= std_logic_vector(cnt_sig);
	
end behavioral;
