-- Today we're going to do a finite state machine in VHDL-land. Dr. Johnson gave a bunch of spec for
-- the Sumo Bot we're going to use, and we're going to implement this stuff as an FSM. We will have
-- to build an FSM with 7400 chips this lab period (because Dr. Meier couldn't get his teeth
-- entirely out of the class) but for now we're making one the way we actually will in the real
-- world.

-------------------
-- sumo_ex.vhd
-- 4/04/22		orb
-- fsm example using sumo bot
--
-- inputs:	rstb, clk, ir, line
-- outputs:	motr, motl
-------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumo_ex is
	port
	(
		i_clk: 		in std_logic;
		i_rstb: 	in std_logic;
		i_ir: 		in std_logic;
		i_line: 	in std_logic;
		
		o_motr: 	out std_logic_vector(3 downto 0); -- motor amplitude
		o_motl: 	out std_logic_vector(3 downto 0)
	);
end entity;

architecture behavioral of sumo_ex is
	-- state signals
	type STATE_TYPE is (search, attack, stop, spin, panic); -- enumerated type def!
	signal state: 		STATE_TYPE;
	signal state_next: 	STATE_TYPE;
	
	begin
		-- next state logic
		process(all) -- fudgery
		begin
			case state is
				when search =>
					if (i_line = '1') then
						state_next <= stop;
					elsif (i_ir = '1') then
						state_next <= attack;
					else
						state_next <= search;
					end if;
				when attack =>
					if (i_line = '1') then
						state_next <= stop;
					elsif (i_ir = '1') then
						state_next <= attack;
					else
						state_next <= search;
					end if;
				when stop =>
					state_next <= spin; -- state always goes into panic when stopped
				when spin =>
					if (i_line = '1') then
						state_next <= stop;
					elsif (i_ir = '1') then
						state_next <= attack;
					else
						state_next <= search;
					end if;
				when others =>
					state_next <= panic; -- panic stop if the timing fucks up
			end case;
		end process;
		
		-- register logic
		process(i_clk, i_rstb)
		begin
			if (i_rstb = '0') then
				state <= search;
			elsif (rising_edge(i_clk)) then
				state <= state_next;
			end if;
		end process;
		
		-- output logic
		process(all) -- lazy much?
		begin
			case state is
				when search =>
					o_motl <= std_logic_vector(to_unsigned(10, 4));
					o_motr <= std_logic_vector(to_unsigned(5, 4));
				when attack =>
					o_motl <= std_logic_vector(to_unsigned(15, 4));
					o_motr <= std_logic_vector(to_unsigned(15, 4));
				when stop =>
					o_motl <= (others => '0');
					o_motr <= (others => '0');
				when spin =>
					o_motl <= std_logic_vector(to_unsigned(5, 4));
					o_motr <= std_logic_vector(to_unsigned(15, 4));
				when others =>
					o_motl <= (others => '0');
					o_motr <= (others => '0');
			end case;
		end process;
end architecture;
