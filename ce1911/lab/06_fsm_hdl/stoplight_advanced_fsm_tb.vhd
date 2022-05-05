--------------------------------------
--
-- counter_gray_3bit_tb.vhdl
--
-- created 4/17/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- Testbench for stoplight_advanced_fsm.vhdl
-- (stoplight controller FSM)
-- brute force implementation
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity stoplight_advanced_fsm_tb is
	-- no entry - testbench
end entity;

architecture testbench of stoplight_advanced_fsm_tb is
	signal CLK: std_logic;
	signal RSTB: std_logic;
	signal PWR_FAIL: std_logic; 	-- power failure indicator
	signal MAINT: std_logic; 	-- maintenance mode toggle
	signal EMERGENCY_A: std_logic; 	-- emergency vehicle on axis A
	signal EMERGENCY_B: std_logic; 	-- emergency vehicle on axis B
	
	signal A_RED: std_logic;	-- axis A red
	signal A_YELLOW: std_logic;	-- axis A yellow
	signal A_GREEN: std_logic;	-- axis A green
	signal B_RED: std_logic;	-- axis B red
	signal B_YELLOW: std_logic;	-- axis B yellow
	signal B_GREEN: std_logic;	-- axis B green
	
	signal SSEG_A1: std_logic_vector(7 downto 0);	-- 7seg A1 decoded
	signal SSEG_A0: std_logic_vector(7 downto 0);	-- 7seg A0 decoded
	signal SSEG_B1: std_logic_vector(7 downto 0);	-- 7seg B1 decoded
	signal SSEG_B0: std_logic_vector(7 downto 0);	-- 7seg B0 decoded

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component stoplight_advanced_fsm is
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
	end component;
	-----------------------------------
	
	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: stoplight_advanced_fsm
		port map
		(
			i_clk => CLK,
			i_rstb => RSTB,
			i_pwr_fail => PWR_FAIL,
			i_maint => MAINT,
			i_emergency_a => EMERGENCY_A,
			i_emergency_b => EMERGENCY_B,
			o_A_red => A_RED,
			o_A_yellow => A_YELLOW,
			o_A_green => A_GREEN,
			o_B_red => B_RED,
			o_B_yellow => B_YELLOW,
			o_B_green => B_GREEN,
			o_sseg_A1 => SSEG_A1,
			o_sseg_A0 => SSEG_A0,
			o_sseg_B1 => SSEG_B1,
			o_sseg_B0 => SSEG_B0
		);


	-------------------------------------
	-- Test processes
	-------------------------------------
	
   -- Clock process
	clock: process		-- note - no sensitivity list allowed
	begin
		CLK <= '0';
		wait for PER/2;
		infinite: loop
			CLK <= not CLK; wait for PER/2;
		end loop;			
	end process;
	
	-- Reset process
	reset: process		-- note - no sensitivity list allowed
	begin
		RSTB <= '0'; wait for PER*2;
		RSTB <= '1'; wait;
	end process reset;
	
	-- Run Process
	run: process
	begin
		-- test main state
		PWR_FAIL <= '0';
		MAINT <= '0';
		EMERGENCY_A <= '0';
		EMERGENCY_B <= '0';
		wait for PER * 20;
		
		-- test power fail state
		PWR_FAIL <= '1';
		MAINT <= '0';
		EMERGENCY_A <= '0';
		EMERGENCY_B <= '0';
		wait for PER * 10;
		
		-- test maintenance state
		PWR_FAIL <= '0';
		MAINT <= '1';
		EMERGENCY_A <= '0';
		EMERGENCY_B <= '0';
		wait for PER * 10;
		
		-- test main state
		PWR_FAIL <= '0';
		MAINT <= '0';
		EMERGENCY_A <= '0';
		EMERGENCY_B <= '0';
		wait for PER * 15;
		
		-- test emergency vehicle in A state
		PWR_FAIL <= '0';
		MAINT <= '0';
		EMERGENCY_A <= '1';
		EMERGENCY_B <= '0';
		wait for PER * 15;
		
		-- test emergency vehicle in B state
		PWR_FAIL <= '0';
		MAINT <= '0';
		EMERGENCY_A <= '0';
		EMERGENCY_B <= '1';
		wait for PER * 15;
	end process run;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
