----------------------------------------
-- created 05/10/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- reg_file_4x8b_tb.vhdl
-- rev 1
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
	signal ADDR1: std_logic_vector(1 downto 0);
    signal ADDR2: std_logic_vector(1 downto 0);
    signal ADDR_W: std_logic_vector(1 downto 0);
    signal DATA_W: std_logic_vector(7 downto 0);

    signal DATA1: std_logic_vector(7 downto 0);
    signal DATA2: std_logic_vector(7 downto 0);

    signal REG_A: std_logic_vector(7 downto 0);
    signal REG_B: std_logic_vector(7 downto 0);
    signal REG_C: std_logic_vector(7 downto 0);
    signal REG_D: std_logic_vector(7 downto 0);

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component reg_file_4x8b is
	port
    (
        i_clk:      in std_logic;
        i_we_b:     in std_logic;
        i_addr1:   in std_logic_vector(1 downto 0);
        i_addr2:   in std_logic_vector(1 downto 0);
        i_addr_W:   in std_logic_vector(1 downto 0);
        i_data_W:   in std_logic_vector(7 downto 0);

        o_data1:   out std_logic_vector(7 downto 0);
        o_data2:   out std_logic_vector(7 downto 0);

        o_regA_data: out std_logic_vector(7 downto 0);
        o_regB_data: out std_logic_vector(7 downto 0);
        o_regC_data: out std_logic_vector(7 downto 0);
        o_regD_data: out std_logic_vector(7 downto 0)
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
			i_addr1 => ADDR1,
            i_addr2 => ADDR2,
            i_addr_W => ADDR_W,
            i_data_W => DATA_W,
			
			o_data1 => DATA1,
            o_data2 => DATA2,

            o_regA_data => REG_A,
            o_regB_data => REG_B,
            o_regC_data => REG_C,
            o_regD_data => REG_D
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
        ADDR1 <= "00";
        ADDR2 <= "00";
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
        -- cycle through address 1
        ADDR1 <= "01";
        wait for PER * 2;
        ADDR1 <= "10";
        wait for PER * 2;
        ADDR1 <= "11";
        wait for PER * 2;
        ADDR1 <= "00";
        -- cycle through address 2
        ADDR2 <= "01";
        wait for PER * 2;
        ADDR2 <= "10";
        wait for PER * 2;
        ADDR2 <= "11";
        wait for PER * 2;
        ADDR2 <= "00";

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
        -- cycle through address 1
        ADDR1 <= "01";
        wait for PER * 2;
        ADDR1 <= "10";
        wait for PER * 2;
        ADDR1 <= "11";
        wait for PER * 2;
        ADDR1 <= "00";
        -- cycle through address 2
        ADDR2 <= "01";
        wait for PER * 2;
        ADDR2 <= "10";
        wait for PER * 2;
        ADDR2 <= "11";
        wait for PER * 2;
        ADDR2 <= "00";

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
        -- cycle through address 1
        ADDR1 <= "01";
        wait for PER * 2;
        ADDR1 <= "10";
        wait for PER * 2;
        ADDR1 <= "11";
        wait for PER * 2;
        ADDR1 <= "00";
        -- cycle through address 2
        ADDR2 <= "01";
        wait for PER * 2;
        ADDR2 <= "10";
        wait for PER * 2;
        ADDR2 <= "11";
        wait for PER * 2;
        ADDR2 <= "00";
        wait for PER * 4;
	end process;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
