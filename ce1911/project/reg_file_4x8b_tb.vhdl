----------------------------------------
-- created 05/10/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- reg_file_4x8b_tb.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Register File Testbench
-- Testbench for single-cycle processor
-- register file
-- Brute force approach
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_file_4x8b_tb is
	-- no entry - testbench
end entity;

architecture testbench of reg_file_4x8b_tb is
	signal CLK: std_logic;
    signal WE_B: std_logic;
	signal ADDR_A: std_logic_vector(1 downto 0);
    signal ADDR_B: std_logic_vector(1 downto 0);
    signal ADDR_W: std_logic_vector(1 downto 0);
    signal DATA_W: std_logic_vector(7 downto 0);

    signal DATA_A: std_logic_vector(7 downto 0);
    signal DATA_B: std_logic_vector(7 downto 0);

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component reg_file_4x8b is
	port
    (
        i_clk:      in std_logic;
        i_we_b:     in std_logic;
        i_addr_a:   in std_logic_vector(1 downto 0);
        i_addr_b:   in std_logic_vector(1 downto 0);
        i_addr_W:   in std_logic_vector(1 downto 0);
        i_data_W:   in std_logic_vector(7 downto 0);

        o_data_a:   out std_logic_vector(7 downto 0);
        o_data_b:   out std_logic_vector(7 downto 0)
    );
    end component;
	-----------------------------------
	
begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: reg_file_4x8b
		port map
		(
			i_clk => CLK,
            i_we_b => WE_B,
			i_addr_a => ADDR_A,
            i_addr_b => ADDR_B,
            i_addr_W => ADDR_W,
            i_data_W => DATA_W,
			
			o_data_a => DATA_A,
            o_data_b => DATA_B
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
        -- first run: no write
        WE_B <= '1';
        ADDR_A <= "00";
        ADDR_B <= "00";
        ADDR_W <= "00";
        DATA_W <= 8X"00";
        wait for PER * 4;
        -- cycle through write address (note: does nothing)
        ADDR_W <= "01";
        wait for PER * 2;
        ADDR_W <= "10";
        wait for PER * 2;
        ADDR_W <= "11";
        wait for PER * 2;
        ADDR_W <= "00";
        -- cycle through address A
        ADDR_A <= "01";
        wait for PER * 2;
        ADDR_A <= "10";
        wait for PER * 2;
        ADDR_A <= "11";
        wait for PER * 2;
        ADDR_A <= "00";
        -- cycle through address B
        ADDR_B <= "01";
        wait for PER * 2;
        ADDR_B <= "10";
        wait for PER * 2;
        ADDR_B <= "11";
        wait for PER * 2;
        ADDR_B <= "00";

        -- second run: with write (write values into all registers)
        WE_B <= '0';
        DATA_W <= 8X"28";
        wait for PER * 4;
        -- cycle through write address
        ADDR_W <= "01";
        DATA_W <= 8X"0F";
        wait for PER * 2;
        ADDR_W <= "10";
        DATA_W <= 8X"4C";
        wait for PER * 2;
        ADDR_W <= "11";
        DATA_W <= 8X"D1";
        wait for PER * 2;
        ADDR_W <= "00"; -- D1 will end up writing back into 00
        -- cycle through address A
        ADDR_A <= "01";
        wait for PER * 2;
        ADDR_A <= "10";
        wait for PER * 2;
        ADDR_A <= "11";
        wait for PER * 2;
        ADDR_A <= "00";
        -- cycle through address B
        ADDR_B <= "01";
        wait for PER * 2;
        ADDR_B <= "10";
        wait for PER * 2;
        ADDR_B <= "11";
        wait for PER * 2;
        ADDR_B <= "00";

        -- third run: no write
        WE_B <= '1';
        DATA_W <= 8X"00";
        wait for PER * 4;
        -- cycle through write address (note: does nothing)
        ADDR_W <= "01";
        wait for PER * 2;
        ADDR_W <= "10";
        wait for PER * 2;
        ADDR_W <= "11";
        wait for PER * 2;
        ADDR_W <= "00";
        -- cycle through address A
        ADDR_A <= "01";
        wait for PER * 2;
        ADDR_A <= "10";
        wait for PER * 2;
        ADDR_A <= "11";
        wait for PER * 2;
        ADDR_A <= "00";
        -- cycle through address B
        ADDR_B <= "01";
        wait for PER * 2;
        ADDR_B <= "10";
        wait for PER * 2;
        ADDR_B <= "11";
        wait for PER * 2;
        ADDR_B <= "00";
        wait for PER * 4;
	end process;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
