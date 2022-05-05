-- ff1_tb.vhd
-- created 3/18/22  orb
-- rev0
-- practice flip-flop file

library ieee;
use ieee.std_logic_1164.all;

entity ff1_8_tb is
	-- no entry (testbench)
end entity;

architecture behavioral of ff1_8_tb is
	signal RSTB: std_logic;
	signal CLK: std_logic;
	signal D: std_logic_vector(7 downto 0);
	signal Q: std_logic_vector(7 downto 0);
	
	constant PER: time := 20 ns;
	
	component ff1_8 is
	port
	(
		i_rstb: in std_logic;
		i_clk: in std_logic;
		i_d: in std_logic_vector(7 downto 0);
		o_q: out std_logic_vector(7 downto 0)
	);
	end component;
	begin
		dut: ff1_8
			port map
			(
				i_rstb => RSTB,
				i_clk => CLK,
				i_d => D,
				o_q => Q
			);
		clock: process
			begin
				-- initialize
				CLK <= '0';
				
				-- infinite l00p
				loop
					wait for PER/2;
					CLK <= not CLK;
				end loop;
		end process;
		
		reset: process
			begin
				-- initialize
				RSTB <= '0';
				
				wait for PER * 2;
				
				RSTB <= '1';
				
				-- wait forever
				wait;
		end process;
		
		data: process
			begin
				-- initialize
				D <= B"01011010";
				
				-- toggle
				loop
					wait for PER * 3;
					D <= not D;
				end loop;
		end process;
end architecture;
