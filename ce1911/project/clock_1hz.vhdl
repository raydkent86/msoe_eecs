--------------------------------------
--
-- clock_1hz.vhdl
--
-- created 2/20/18
-- tj
--
-- rev 0
----------------------------------------
--
-- 1Hz clock divider for use with DE10 Labs
--
-- assumes a 50MHz external clock 
--
----------------------------------------
--
-- Inputs: rstb, clk_50MHz
-- Outputs: clk_out
--
----------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_1hz is
	port (
			i_clk_50MHz :	in std_logic; 
			i_rstb :			in std_logic; 

			o_clk_1Hz :		out std_logic
	);
end entity;

architecture behavioral of clock_1hz is
   --
	-- constants and parameters 
	--
	constant CLOCKS_PER_HALF_PERIOD:	signed(25 downto 0) := to_signed(((50_000_000 / 2 / 1) - 2), 26);
	--
	-- internal signals
	--
	signal cnt:			signed(25 downto 0);
	signal clk_sig:	std_logic;
	
begin 
	process(i_clk_50MHz, i_rstb)
      begin
		--
		-- reset
		--
		if (i_rstb = '0') then
			cnt <= CLOCKS_PER_HALF_PERIOD;
			clk_sig <= '0';
		elsif (rising_edge(i_clk_50MHz) ) then
			cnt <= cnt - 1;
           	--
			-- check if half way
			--
			if (cnt < 0) then
            cnt <= CLOCKS_PER_HALF_PERIOD;
				clk_sig <= not clk_sig;
         end if;
		end if;
   end process;
	
	--
	-- Output logic
	--
	o_clk_1Hz <= clk_sig;
	
end behavioral;
