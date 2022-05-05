--------------------------------------
--
-- vending_machine_fsm_tb.vhdl
--
-- created 4/25/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- Testbench for vending_machine_fsm.vhdl
-- (vending machine FSM)
-- brute force implementation
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity vending_machine_fsm_tb is
	-- no entry - testbench
end entity;

architecture testbench of vending_machine_fsm_tb is
	signal CLK: std_logic;
	signal RSTB: std_logic;
	signal N: std_logic; 	-- nickel
	signal D: std_logic; 	-- dime
	signal Q: std_logic; 	-- quarter
	signal C: std_logic; 	-- cancel
	signal CHIP1: std_logic;
	signal CHIP2: std_logic;
	signal CANDY1: std_logic;
	signal CANDY2: std_logic;
	signal CANDY3: std_logic;
	
	signal SSEG0: std_logic_vector(5 downto 0);	-- sseg0 encoded
	signal SSEG1: std_logic_vector(5 downto 0);	-- sseg1 encoded
	signal SSEG2: std_logic_vector(5 downto 0);	-- sseg2 encoded
	signal SSEG3: std_logic_vector(5 downto 0);	-- sseg3 encoded
	signal SSEG4: std_logic_vector(5 downto 0);	-- sseg4 encoded
	signal SSEG5: std_logic_vector(5 downto 0);	-- sseg5 encoded
	
	signal LED: std_logic_vector(4 downto 0);

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component vending_machine_fsm is
	port
	(
		i_clk: 			in std_logic;
		i_rstb: 		in std_logic;
		
		i_nickel:		in std_logic; -- nickel in (switch, clock activated)
		i_dime:			in std_logic; -- dime in (switch, clock activated)
		i_quarter:		in std_logic; -- quarter in (switch, clock activated)
		i_cancel:		in std_logic; -- cancel (button, async)
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
	end component;
	-----------------------------------
	
	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: vending_machine_fsm
		port map
		(
			i_clk => CLK,
			i_rstb => RSTB,
			
			i_nickel => N,
			i_dime => D,
			i_quarter => Q,
			i_cancel => C,
			i_chip1 => CHIP1,
			i_chip2 => CHIP2,
			i_candy1 => CANDY1,
			i_candy2 => CANDY2,
			i_candy3 => CANDY3,
			
			o_sseg0 => SSEG0,
			o_sseg1 => SSEG1,
			o_sseg2 => SSEG2,
			o_sseg3 => SSEG3,
			o_sseg4 => SSEG4,
			o_sseg5 => SSEG5,
			
			o_led => LED
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
		-- initialize everything and power up
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 5;
		
		-- five dimes then chip1
		N <= '0';
		D <= '1';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 5;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '1';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 2;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 5;
		
		-- four dimes, five nickels, then candy2
		N <= '0';
		D <= '1';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 4;
		N <= '1';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 5;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '1';
		CANDY3 <= '0';
		wait for PER * 2;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 5;
		
		-- two quarters then candy1, then one dime and candy1
		N <= '0';
		D <= '0';
		Q <= '1';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 2;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '1';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 2;
		N <= '0';
		D <= '1';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 1;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '1';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 2;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 5;
		
		-- 1n, 1d, 1q, c2, 1n, c2, cancel
		N <= '1';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 1;
		N <= '0';
		D <= '1';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 1;
		N <= '0';
		D <= '0';
		Q <= '1';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 1;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '1';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 2;
		N <= '1';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 1;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '1';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 2;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '1';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 1;
		N <= '0';
		D <= '0';
		Q <= '0';
		C <= '0';
		CHIP1 <= '0';
		CHIP2 <= '0';
		CANDY1 <= '0';
		CANDY2 <= '0';
		CANDY3 <= '0';
		wait for PER * 15;
	end process run;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
