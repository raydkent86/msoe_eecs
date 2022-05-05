--------------------------------------
--
-- lab8_part2_tb.vhdl
--
-- created 05/01/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- Testbench for lab8_part2.vhdl (RAM
-- hardware)
-- brute force implementation
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity lab8_part2_tb is
	-- no entry - testbench
end entity;

architecture testbench of lab8_part2_tb is
	signal CLK: std_logic;
    signal WE_B: std_logic;
	signal ADDR: std_logic_vector(4 downto 0);
    signal DATA: std_logic_vector(7 downto 0);
	
	signal SSEGA: std_logic_vector(7 downto 0);	-- sseg0 decoded
	signal SSEGB: std_logic_vector(7 downto 0);	-- sseg1 decoded
	signal SSEGE: std_logic_vector(7 downto 0);	-- sseg4 decoded
	signal SSEGF: std_logic_vector(7 downto 0);	-- sseg5 decoded

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component lab8_part2 is
	port
	(
		i_clk:	in std_logic;
        i_we_b: in std_logic;
		i_addr:	in std_logic_vector(4 downto 0);
        i_data: in std_logic_vector(7 downto 0);
		
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
	DUT: lab8_part2
		port map
		(
			i_clk => CLK,
            i_we_b => WE_B,
			i_addr => ADDR,
            i_data => DATA,
			
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
        -- cycle 1: write disabled
        WE_B <= '1';
        DATA <= 8X"00"; -- default data to zero
        
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

        -- cycle 2: write enabled
        WE_B <= '0';
        
        ADDR <= 5X"00";
        DATA <= 8X"01";
		wait for PER * 2;
		ADDR <= 5X"01";
        DATA <= 8X"03";
		wait for PER * 2;
		ADDR <= 5X"02";
        DATA <= 8X"05";
		wait for PER * 2;
		ADDR <= 5X"03";
        DATA <= 8X"07";
		wait for PER * 2;
		ADDR <= 5X"04";
        DATA <= 8X"09";
		wait for PER * 2;
		ADDR <= 5X"05";
        DATA <= 8X"0B";
		wait for PER * 2;
		ADDR <= 5X"06";
        DATA <= 8X"0D";
		wait for PER * 2;
		ADDR <= 5X"07";
        DATA <= 8X"0F";
		wait for PER * 2;
		ADDR <= 5X"08";
        DATA <= 8X"11";
		wait for PER * 2;
		ADDR <= 5X"09";
        DATA <= 8X"13";
		wait for PER * 2;
		ADDR <= 5X"0A";
        DATA <= 8X"15";
		wait for PER * 2;
		ADDR <= 5X"0B";
        DATA <= 8X"17";
		wait for PER * 2;
		ADDR <= 5X"0C";
        DATA <= 8X"19";
		wait for PER * 2;
		ADDR <= 5X"0D";
        DATA <= 8X"1B";
		wait for PER * 2;
		ADDR <= 5X"0E";
        DATA <= 8X"1D";
		wait for PER * 2;
		ADDR <= 5X"0F";
        DATA <= 8X"1F";
		wait for PER * 2;
		ADDR <= 5X"10";
        DATA <= 8X"21";
		wait for PER * 2;
		ADDR <= 5X"11";
        DATA <= 8X"23";
		wait for PER * 2;
		ADDR <= 5X"12";
        DATA <= 8X"25";
		wait for PER * 2;
		ADDR <= 5X"13";
        DATA <= 8X"27";
		wait for PER * 2;
		ADDR <= 5X"14";
        DATA <= 8X"29";
		wait for PER * 2;
		ADDR <= 5X"15";
        DATA <= 8X"2B";
		wait for PER * 2;
		ADDR <= 5X"16";
        DATA <= 8X"2D";
		wait for PER * 2;
		ADDR <= 5X"17";
        DATA <= 8X"2F";
		wait for PER * 2;
		ADDR <= 5X"18";
        DATA <= 8X"31";
		wait for PER * 2;
		ADDR <= 5X"19";
        DATA <= 8X"33";
		wait for PER * 2;
		ADDR <= 5X"1A";
        DATA <= 8X"35";
		wait for PER * 2;
		ADDR <= 5X"1B";
        DATA <= 8X"37";
		wait for PER * 2;
		ADDR <= 5X"1C";
        DATA <= 8X"F9";
		wait for PER * 2;
		ADDR <= 5X"1D";
        DATA <= 8X"FB";
		wait for PER * 2;
		ADDR <= 5X"1E";
        DATA <= 8X"FD";
		wait for PER * 2;
		ADDR <= 5X"1F";
        DATA <= 8X"FF";
		wait for PER * 2;

        -- cycle 3: write disabled
        WE_B <= '1';
        
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
