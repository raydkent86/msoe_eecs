----------------------------------------
-- created 04/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- color_fsm.vhdl
-- rev 0
----------------------------------------
--
-- color FSM homework
----------------------------------------
--
-- Inputs: rstb, clk, din
-- Outputs: detect
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity color_fsm is
	port
	(
		i_clk: in std_logic;
		i_rstb: in std_logic;
		i_din: in std_logic;
		
		o_detect: out std_logic
	);
end entity;

architecture behavioral of color_fsm is
	-- state signals
	type COLOR_TYPE is (red, green, yellow, orange, blue);
	signal color: COLOR_TYPE;
	signal color_next: COLOR_TYPE;
	begin
		-- next state logic
		process(all)
		begin
			case color is
				when red =>
					if (i_din = '1') then
						color_next <= green;
					else
						color_next <= red;
					end if;
				when green =>
					if (i_din = '1') then
						color_next <= green;
					else
						color_next <= yellow;
					end if;
				when yellow =>
					if (i_din = '1') then
						color_next <= orange;
					else
						color_next <= red;
					end if;
				when orange =>
					if (i_din = '1') then
						color_next <= green;
					else
						color_next <= blue;
					end if;
				when blue =>
					if (i_din = '1') then
						color_next <= yellow;
					else
						color_next <= red;
					end if;
				when others =>
					color_next <= red; -- default to red if timing errors occur
			end case;
		end process;
		
		-- register logic
		process(i_clk, i_rstb)
		begin
			if (i_rstb = '0') then
				color <= red;
			elsif (rising_edge(i_clk)) then
				color <= color_next;
			end if;
		end process;
		
		-- output logic
		process(all)
		begin
			case color is
				when yellow =>
					o_detect <= '1';
				when blue =>
					o_detect <= '1';
				when others =>
					o_detect <= '0';
			end case;
		end process;
end architecture;
