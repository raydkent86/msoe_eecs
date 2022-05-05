--------------------------------------
--
-- lab8_part1_tb.vhdl
--
-- created 4/27/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- Testbench for lab8_part1.vhdl (ROM
-- hardware)
-- brute force implementation
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity lab8_part1_tb is
	-- no entry - testbench
end entity;

architecture testbench of lab8_part1_tb is
	signal CLK: std_logic;
	signal ADDR: std_logic_vector(4 downto 0);
	
	signal SSEGA: std_logic_vector(7 downto 0);	-- sseg0 decoded
	signal SSEGB: std_logic_vector(7 downto 0);	-- sseg1 decoded
	signal SSEGE: std_logic_vector(7 downto 0);	-- sseg4 decoded
	signal SSEGF: std_logic_vector(7 downto 0);	-- sseg5 decoded

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component lab8_part1 is
	port
	(
		i_clk:	in std_logic;
		i_addr:	in std_logic_vector(4 downto 0);
		
		o_addr_sseg_A:	out std_logic_vector (7 downto 0);
		o_addr_sseg_B:	out std_logic_vector (7 downto 0);
		o_data_sseg_E:	out std_logic_vector (7 downto 0);
		o_data_sseg_F:	out std_logic_vector (7 downto 0)
	);
	end component;
	-----------------------------------
	
	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: lab8_part1
		port map
		(
			i_clk => CLK,
			i_addr => ADDR,
			
			o_addr_sseg_A => SSEGA,
			o_addr_sseg_B => SSEGB,
			o_data_sseg_E => SSEGE,
			o_data_sseg_F => SSEGF
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
	
	-- no reset process
	
	-- Run Process
	run: process
	begin
		ADDR <= 5X"00";
		wait for PER * 2;
		ADDR <= 5X"01";
		wait for PER * 2;
		ADDR <= 5X"02";
		wait for PER * 2;
		ADDR <= 5X"03";
		wait for PER * 2;
		ADDR <= 5X"04";
		wait for PER * 2;
		ADDR <= 5X"05";
		wait for PER * 2;
		ADDR <= 5X"06";
		wait for PER * 2;
		ADDR <= 5X"07";
		wait for PER * 2;
		ADDR <= 5X"08";
		wait for PER * 2;
		ADDR <= 5X"09";
		wait for PER * 2;
		ADDR <= 5X"0A";
		wait for PER * 2;
		ADDR <= 5X"0B";
		wait for PER * 2;
		ADDR <= 5X"0C";
		wait for PER * 2;
		ADDR <= 5X"0D";
		wait for PER * 2;
		ADDR <= 5X"0E";
		wait for PER * 2;
		ADDR <= 5X"0F";
		wait for PER * 2;
		ADDR <= 5X"10";
		wait for PER * 2;
		ADDR <= 5X"11";
		wait for PER * 2;
		ADDR <= 5X"12";
		wait for PER * 2;
		ADDR <= 5X"13";
		wait for PER * 2;
		ADDR <= 5X"14";
		wait for PER * 2;
		ADDR <= 5X"15";
		wait for PER * 2;
		ADDR <= 5X"16";
		wait for PER * 2;
		ADDR <= 5X"17";
		wait for PER * 2;
		ADDR <= 5X"18";
		wait for PER * 2;
		ADDR <= 5X"19";
		wait for PER * 2;
		ADDR <= 5X"1A";
		wait for PER * 2;
		ADDR <= 5X"1B";
		wait for PER * 2;
		ADDR <= 5X"1C";
		wait for PER * 2;
		ADDR <= 5X"1D";
		wait for PER * 2;
		ADDR <= 5X"1E";
		wait for PER * 2;
		ADDR <= 5X"1F";
		wait for PER * 2;
		
	end process run;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
