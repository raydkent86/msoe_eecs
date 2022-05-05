--
-- created 03/25/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- shiftreg_lr_12_nbit.vhdl
-- rev 0
----------------------------------------
--
-- n bit 1/2 bit L/R shift register hw
-- problem
----------------------------------------
--
-- Inputs: rstb, clk, amt, dir, shift
-- Outputs: reg_out[7:0]
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shiftreg_lr_12_nbit is
	generic
	(
		N: natural := 8; 		-- bit width
		init: natural := 150 -- initialization value
	);
	port
	(
		i_clk: in std_logic;
		i_rstb: in std_logic;
		i_amt: in std_logic; -- 0 for 1, 1 for 2
		i_shift: in std_logic; -- 0 for no shift
		i_dir: in std_logic; -- 0 for left, 1 for right
		o_reg_out: out std_logic_vector((N - 1) downto 0)
	);
end entity;

architecture behavioral of shiftreg_lr_12_nbit is
signal reg_out_sig: std_logic_vector((N - 1) downto 0);
begin
	process(i_clk, i_rstb, reg_out_sig)
	begin
		-- reset
		if (i_rstb = '0') then
			reg_out_sig <= std_logic_vector(to_unsigned(init, N));
		-- rising clock edge
		elsif (rising_edge(i_clk)) then
			-- shifting
			if (i_shift = '0') then
				reg_out_sig <= reg_out_sig;
			elsif (i_dir = '0') then
				if (i_amt = '0') then
					reg_out_sig <= reg_out_sig(((N - 1) - 1) downto 0) & reg_out_sig(N - 1); -- go left one bit
				else
					reg_out_sig <= reg_out_sig(((N - 1) - 2) downto 0) & reg_out_sig((N - 1) downto (N - 2)); -- go left two bits
				end if;
			elsif (i_dir = '1') then
				if (i_amt = '0') then
					reg_out_sig <= reg_out_sig(0) & reg_out_sig((N - 1) downto 1); -- go right one bit
				else
					reg_out_sig <= reg_out_sig(1 downto 0) & reg_out_sig((N - 1) downto 2); -- go right two bits
				end if;
			end if;
		end if;
	end process;
	
	-- output logic
	o_reg_out <= reg_out_sig;
end architecture;
