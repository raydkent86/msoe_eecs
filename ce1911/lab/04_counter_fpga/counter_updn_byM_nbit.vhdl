--------------------------------------
--
-- counter_updn_byM_nbit.vhdl
--
-- created 4/03/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- n-bit up-down counter with variable
-- increments
--
----------------------------------------
--
-- Inputs: rstb, clk, dir, incr
-- Outputs: cnt[n-1:0]
--
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_updn_byM_nbit is
   generic(
				N: natural := 4;
				M: natural := 2 -- width of counter select
	);
	port (
			i_clk :	in std_logic; 
			i_rstb :	in std_logic;
			i_dir : in std_logic;
			i_run : in std_logic;
			i_ammt: in std_logic_vector((M-1) downto 0);
			

			o_cnt : 	out std_logic_vector((N-1) downto 0)
	);
end entity;

architecture behavioral of counter_updn_byM_nbit is
	
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
			if (i_run = '0') then
				cnt_sig <= cnt_sig;
			else
				if (i_dir = '0') then
					cnt_sig <= cnt_sig + unsigned(i_ammt);
				else
					cnt_sig <= cnt_sig - unsigned(i_ammt);
				end if;
			end if;
		end if;
   end process;
	
	--
	-- Output logic
	--
	o_cnt <= std_logic_vector(cnt_sig);
	
end behavioral;
