----------------------------------------
-- created 04/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- stoplight_advanced_fsm.vhdl
-- rev 0
----------------------------------------
--
-- Lab 6 assignment
-- advanced HDL FSM for stoplight
-- hardware controller
----------------------------------------
--
-- Inputs: rstb, clk, din
-- Outputs: detect
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity stoplight_advanced_fsm is
	port
	(
		i_clk: 			in std_logic;
		i_rstb: 		in std_logic;
		i_pwr_fail: 	in std_logic; 	-- power failure indicator
		i_maint:		in std_logic; 	-- maintenance mode toggle
		i_emergency_a: 	in std_logic; 	-- emergency vehicle on axis A
		i_emergency_b: 	in std_logic; 	-- emergency vehicle on axis B
		
		o_A_red:		out std_logic;	-- axis A red
		o_A_yellow:		out std_logic;	-- axis A yellow
		o_A_green:		out std_logic;	-- axis A green
		o_B_red:		out std_logic;	-- axis B red
		o_B_yellow:		out std_logic;	-- axis B yellow
		o_B_green:		out std_logic;	-- axis B green
		
		o_sseg_A1:		out std_logic_vector(7 downto 0);	-- 7seg A1 decoded
		o_sseg_A0:		out std_logic_vector(7 downto 0);	-- 7seg A0 decoded
		o_sseg_B1:		out std_logic_vector(7 downto 0);	-- 7seg B1 decoded
		o_sseg_B0:		out std_logic_vector(7 downto 0)	-- 7seg B0 decoded
	);
end entity;

architecture behavioral of stoplight_advanced_fsm is
	-- seven segment decoder
	component SEG7DECODE is  
	port
	(
		A: in std_logic_vector(5 downto 0);  
		SEG: out std_logic_vector(7 downto 0)
	); 
	end component SEG7DECODE; 
	
	type STATE_TYPE is (FAIL, MAINT, RR, RG, RY, GR, YR);
	signal state: 		STATE_TYPE;
	signal state_next:	STATE_TYPE;
	signal DIR:			std_logic;
	signal COUNT:		unsigned(3 downto 0);
	
	-- seven segment values before decoding
	signal SSEGA1_CODE:	std_logic_vector(5 downto 0);
	signal SSEGA0_CODE: std_logic_vector(5 downto 0);
	signal SSEGB1_CODE: std_logic_vector(5 downto 0);
	signal SSEGB0_CODE: std_logic_vector(5 downto 0);
	
	begin
		-- next state logic
		process(all)
		begin
			-- case state is
				-- when FAIL =>
					-- if (i_pwr_fail = '1') then
						-- next_state <= FAIL;
					-- elsif (i_maint = '1') then
						-- next_state <= MAINT;
					-- else
						-- next_state <= RR;
					-- end if;
				-- when MAINT =>
					-- if (i_pwr_fail = '1') then
						-- next_state <= FAIL;
			if (i_pwr_fail = '1') then
				state_next <= FAIL;
			elsif (i_maint = '1') then
				state_next <= MAINT;
			else
				case state is
					when FAIL =>
						state_next <= RR; -- unreachable if either pwr_fail or maint is high
					when MAINT =>
						state_next <= RR; -- same as above
					when RR =>
						if ((DIR = '1') or (i_emergency_b = '1')) then
							state_next <= GR;
						else
							state_next <= RG;
						end if;
					when RG =>
						if (((COUNT = "0111") or (i_emergency_b = '1')) and (i_emergency_a = '0')) then
							state_next <= RY;
						else
							state_next <= RG;
						end if;
					when RY =>
						if (COUNT = "0011") then
							state_next <= RR;
						else
							state_next <= RY;
						end if;
					when GR =>
						if (((COUNT = "0111") or (i_emergency_a = '1')) and (i_emergency_b = '0')) then
							state_next <= YR;
						else
							state_next <= GR;
						end if;
					when YR =>
						if (COUNT = "0011") then
							state_next <= RR;
						else
							state_next <= YR;
						end if;
					when others => -- failsafe state
						state_next <= FAIL;
				end case;
			end if;
		end process;
		
		-- register logic
		process(i_clk, i_rstb)
		begin
			if(i_rstb = '0') then
				state <= RR;
			elsif (rising_edge(i_clk)) then
				if (state_next /= state) then
					COUNT <= "0000";
					-- direction flip to eliminate latch
					if (state = RY) then
						DIR <= '1';
					elsif (state = YR) then
						DIR <= '0';
					end if;
				else
					COUNT <= COUNT + "0001"; -- increment count
				end if;
				state <= state_next;
			end if;
		end process;
		
		-- output logic
		process(all)
		begin
			case state is
				when FAIL =>
					-- flash lights based on count % 2
					if (count(0) = '0') then
						o_A_red <= '1';
						o_B_red <= '1';
					else
						o_A_red <= '0';
						o_B_red <= '0';
					end if;
					
					-- all other lights off
					o_A_yellow <= '0';
					o_A_green <= '0';
					o_B_yellow <= '0';
					o_B_green <= '0';
					
					-- 7segs: FAIL
					SSEGA1_CODE <= 6X"0F"; -- F
					SSEGA0_CODE <= 6X"0A"; -- A
					SSEGB1_CODE <= 6X"12"; -- I
					SSEGB0_CODE <= 6X"15"; -- L
				when MAINT =>
					-- two solid reds, all others off
					o_A_red <= '1';
					o_A_yellow <= '0';
					o_A_green <= '0';
					o_B_red <= '1';
					o_B_yellow <= '0';
					o_B_green <= '0';
					
					-- 7segs: MAIN
					SSEGA1_CODE <= 6X"16"; -- M
					SSEGA0_CODE <= 6X"0A"; -- A
					SSEGB1_CODE <= 6X"12"; -- I
					SSEGB0_CODE <= 6X"17"; -- N
				when RR =>
					o_A_red <= '1';
					o_A_yellow <= '0';
					o_A_green <= '0';
					o_B_red <= '1';
					o_B_yellow <= '0';
					o_B_green <= '0';
					
					-- 7segs: RDRD
					SSEGA1_CODE <= 6X"1B"; -- R
					SSEGA0_CODE <= 6X"0D"; -- D
					SSEGB1_CODE <= 6X"1B"; -- R
					SSEGB0_CODE <= 6X"0D"; -- D
				when RG =>
					o_A_red <= '0';
					o_A_yellow <= '0';
					o_A_green <= '1';
					o_B_red <= '1';
					o_B_yellow <= '0';
					o_B_green <= '0';
					
					-- 7segs: GRRD
					SSEGA1_CODE <= 6X"10"; -- G
					SSEGA0_CODE <= 6X"1B"; -- R
					SSEGB1_CODE <= 6X"1B"; -- R
					SSEGB0_CODE <= 6X"0D"; -- D
				when RY =>
					o_A_red <= '0';
					o_A_yellow <= '1';
					o_A_green <= '0';
					o_B_red <= '1';
					o_B_yellow <= '0';
					o_B_green <= '0';
					
					-- 7segs: YERD
					SSEGA1_CODE <= 6X"22"; -- Y
					SSEGA0_CODE <= 6X"0E"; -- E
					SSEGB1_CODE <= 6X"1B"; -- R
					SSEGB0_CODE <= 6X"0D"; -- D
				when GR =>
					o_A_red <= '1';
					o_A_yellow <= '0';
					o_A_green <= '0';
					o_B_red <= '0';
					o_B_yellow <= '0';
					o_B_green <= '1';
					
					-- 7segs: RDGR
					SSEGA1_CODE <= 6X"1B"; -- R
					SSEGA0_CODE <= 6X"0D"; -- D
					SSEGB1_CODE <= 6X"10"; -- G
					SSEGB0_CODE <= 6X"1B"; -- R
				when YR =>
					o_A_red <= '1';
					o_A_yellow <= '0';
					o_A_green <= '0';
					o_B_red <= '0';
					o_B_yellow <= '1';
					o_B_green <= '0';
					
					-- 7segs: RDYE
					SSEGA1_CODE <= 6X"1B"; -- R
					SSEGA0_CODE <= 6X"0D"; -- D
					SSEGB1_CODE <= 6X"22"; -- Y
					SSEGB0_CODE <= 6X"0E"; -- E
				when others =>
					o_A_red <= '1';
					o_A_yellow <= '1';
					o_A_green <= '1';
					o_B_red <= '1';
					o_B_yellow <= '1';
					o_B_green <= '1';
					
					-- 7segs: 8888
					SSEGA1_CODE <= 6X"08"; -- 8
					SSEGA0_CODE <= 6X"08"; -- 8
					SSEGB1_CODE <= 6X"08"; -- 8
					SSEGB0_CODE <= 6X"08"; -- 8
			end case;
			
			-- emergency 7seg functionality
			if (i_emergency_a = '1') then
				SSEGA1_CODE <= 6X"0E"; -- E
				SSEGA0_CODE <= 6X"16"; -- M
			elsif (i_emergency_b = '1') then
				SSEGB1_CODE <= 6X"0E"; -- E
				SSEGB0_CODE <= 6X"16"; -- M
			end if;
		end process;
		
		-- 7seg mapping
		DECODE_A1: SEG7DECODE
		port map
		(
			A => SSEGA1_CODE,
			SEG => o_sseg_A1
		);
		
		DECODE_A0: SEG7DECODE
		port map
		(
			A => SSEGA0_CODE,
			SEG => o_sseg_A0
		);
		
		DECODE_B1: SEG7DECODE
		port map
		(
			A => SSEGB1_CODE,
			SEG => o_sseg_B1
		);
		
		DECODE_B0: SEG7DECODE
		port map
		(
			A => SSEGB0_CODE,
			SEG => o_sseg_B0
		);
end architecture;
