----------------------------------------
-- created 04/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- color_fsm_tb.vhdl
-- rev 0
----------------------------------------
--
-- testbench for color FSM homework\
-- brute force
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity color_fsm_tb is
	-- testbench - no entry
end entity;

architecture behavioral of color_fsm_tb is
	signal CLK: std_logic;
	signal RSTB: std_logic;
	signal DIN: std_logic;
	signal DETECT: std_logic;
	
	constant PER: time := 50 ns;
	
	-- component prototype
	component color_fsm is
	port
	(
		i_clk: in std_logic;
		i_rstb: in std_logic;
		i_din: in std_logic;
		
		o_detect: out std_logic
	);
	end component;
	
	begin
		-- device under test
		DUT: color_fsm
		port map
		(
			i_clk => CLK,
			i_rstb => RSTB,
			i_din => DIN,
			o_detect => DETECT
		);
		
		-- clock process
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
		
		-- reset process
		reset: process
		begin
			-- initialize
			RSTB <= '0';
			
			wait for PER * 2;
			
			RSTB <= '1';
			
			-- wait forever
			wait;
		end process;
		
		-- run process
		run: process
		begin
			-- initialize input
			DIN <= '0';
			
			-- wait for reset;
			wait for 3 * PER;
			
			-- variations on input
			DIN <= '0'; -- to red
			wait for 3 * PER;
			DIN <= '1'; -- to green
			wait for 5 * PER;
			DIN <= '0'; -- to yellow
			wait for 1 * PER;
			DIN <= '1'; -- to orange
			wait for 1 * PER;
			DIN <= '0'; -- to blue
			wait for 1 * PER;
			DIN <= '1'; -- to yellow
			wait for 1 * PER;
		end process;
end architecture;
