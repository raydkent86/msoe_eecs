----------------------------------------
-- created 04/20/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- vending_machine_fsm.vhdl
-- rev 0
----------------------------------------
--
-- Lab 7 assignment
-- advanced HDL FSM for vending machine
-- hardware controller
----------------------------------------
--
-- Inputs: 	rstb, clk, nickel, dime,
--		   	quarter, cancel, chip1-2,
--         	candy1-3
-- Outputs: sseg0-6, led0-4
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity vending_machine_fsm is
	port
	(
		i_clk: 			in std_logic;
		i_rstb: 		in std_logic;
		
		i_nickel:		in std_logic; -- nickel in (switch, clock activated)
		i_dime:			in std_logic; -- dime in (switch, clock activated)
		i_quarter:		in std_logic; -- quarter in (switch, clock activated)
		i_cancel:		in std_logic; -- cancel (button)
		i_chip1:		in std_logic; -- chip item 1 (switch)
		i_chip2:		in std_logic; -- chip item 2 (switch)
		i_candy1:		in std_logic; -- candy item 1 (switch)
		i_candy2:		in std_logic; -- candy item 2 (switch)
		i_candy3:		in std_logic; -- candy item 3 (switch)
		
		-- seven-segment output to decoders
		o_sseg0:		out std_logic_vector(5 downto 0);
		o_sseg1:		out std_logic_vector(5 downto 0);
		o_sseg2:		out std_logic_vector(5 downto 0);
		o_sseg3:		out std_logic_vector(5 downto 0);
		o_sseg4:		out std_logic_vector(5 downto 0);
		o_sseg5:		out std_logic_vector(5 downto 0);
		
		-- LED output bus
		o_led:			out std_logic_vector(4 downto 0)
	);
end entity;

architecture behavioral of vending_machine_fsm is
	
	type STATE_TYPE is (IDLE, VEND, INSUFF, CANCEL);
	signal state: 		STATE_TYPE;
	signal state_next:	STATE_TYPE;
	signal DIR:			std_logic;
	signal CENTS:		natural; -- cannot have negative money
	
	-- generalizes chips and candy
	signal CHIP:		std_logic;
	signal CANDY:		std_logic;
	
	-- no encoded 7seg signals in here after last time - looked like latches in RTL
	
	begin
		-- chip and candy mapping
		CHIP <= i_chip1 or i_chip2;
		CANDY <= i_candy1 or i_candy2 or i_candy3;
		
		-- next state logic
		process(all)
		begin
			case state is
				when IDLE =>
					if (i_cancel = '1') then
						state_next <= CANCEL; -- cancel takes priority
					elsif (((CHIP = '1') and (CENTS >= 50))
							or ((CANDY = '1') and (CENTS >= 60))) then
						state_next <= VEND;
					elsif (((CHIP = '1') and (not (CENTS >= 50)))
							or ((CANDY = '1') and (not (CENTS >= 60)))) then
						state_next <= INSUFF;
					else
						state_next <= IDLE;
					end if;
				when VEND =>
					state_next <= IDLE;
				when INSUFF =>
					if (i_cancel = '1') then
						state_next <= CANCEL;
					else
						-- cycle between idle and insufficient states if item remains selected
						-- this will flash the "insufficient" when an item remains selected
						-- system will reject all coins when in insufficient state for convenience
						state_next <= IDLE;
					end if;
				when CANCEL =>
					-- stay in cancel state as long as button is depressed, otherwise return to idle
					if (i_cancel = '1') then
						state_next <= CANCEL;
					else
						state_next <= IDLE;
					end if;
				when others =>
					-- reset the machine if timing messes up
					state_next <= CANCEL;
			end case;
		end process;
		
		-- register logic
		process(i_clk, i_rstb)
		begin
			if(i_rstb = '0') then
				-- set permanent idle state and reset money when reset is active
				CENTS <= 0;
				state <= IDLE;
			elsif (rising_edge(i_clk)) then
				-- money logic
				if ((state = VEND) or (state = CANCEL)) then
					CENTS <= 0;
				elsif (state = IDLE) then
					-- if statement because better hardware than converting inputs to ints and *-ing
					-- bigger coins take precedence
					if (i_quarter = '1') then
						CENTS <= CENTS + 25;
					elsif (i_dime = '1') then
						CENTS <= CENTS + 10;
					elsif (i_nickel = '1') then
						CENTS <= CENTS + 5;
					end if;
				end if;
				
				-- set next state
				state <= state_next;
			end if;
		end process;
		
		-- output logic
		process(all)
		begin
			case state is
				when IDLE =>
					-- ###### | blank
					o_sseg5 <= std_logic_vector(to_unsigned((CENTS mod 1000000) / 100000, 6));
					o_sseg4 <= std_logic_vector(to_unsigned((CENTS mod 100000) / 10000, 6));
					o_sseg3 <= std_logic_vector(to_unsigned((CENTS mod 10000) / 1000, 6));
					o_sseg2 <= std_logic_vector(to_unsigned((CENTS mod 1000) / 100, 6));
					o_sseg1 <= std_logic_vector(to_unsigned((CENTS mod 100) / 10, 6));
					o_sseg0 <= std_logic_vector(to_unsigned(CENTS mod 10, 6));
					o_led <= (others => '0');
				when VEND =>
					-- VEND # | LED of item
					o_sseg5 <= 6X"1F";
					o_sseg4 <= 6X"0E";
					o_sseg3 <= 6X"17";
					o_sseg2 <= 6X"0D";
					o_sseg1 <= 6X"3F";
					
					-- priority goes right to left
					if (i_chip1 = '1') then
						o_sseg0 <= 6X"01";
						o_led <= "00001";
					elsif (i_chip2 = '1') then
						o_sseg0 <= 6X"02";
						o_led <= "00010";
					elsif (i_candy1 = '1') then
						o_sseg0 <= 6X"03";
						o_led <= "00100";
					elsif (i_candy2 = '1') then
						o_sseg0 <= 6X"04";
						o_led <= "01000";
					elsif (i_candy3 = '1') then
						o_sseg0 <= 6X"05";
						o_led <= "10000";
					else
						o_sseg0 <= 6X"0E";
						o_led <= "11111";
					end if;
				when INSUFF =>
					-- --##-- | blank
					o_sseg5 <= 6X"24";
					o_sseg4 <= 6X"24";
					o_sseg1 <= 6X"24";
					o_sseg0 <= 6X"24";
					
					if (CHIP = '1') then
						o_sseg3 <= 6X"05";
						o_sseg2 <= 6X"00";
					else
						o_sseg3 <= 6X"06";
						o_sseg2 <= 6X"00";
					end if;
					o_led <= (others => '0');
				when CANCEL =>
					-- CANCEL | all
					o_sseg5 <= 6X"0C";
					o_sseg4 <= 6X"0A";
					o_sseg3 <= 6X"17";
					o_sseg2 <= 6X"0C";
					o_sseg1 <= 6X"0E";
					o_sseg0 <= 6X"15";
					o_led <= (others => '1');
				when others =>
					-- 888888 | all
					o_sseg5 <= 6X"08";
					o_sseg4 <= 6X"08";
					o_sseg3 <= 6X"08";
					o_sseg2 <= 6X"08";
					o_sseg1 <= 6X"08";
					o_sseg0 <= 6X"08";
					o_led <= (others => '1');
			end case;
		end process;
end architecture;
