----------------------------------------
-- created 05/06/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- ram_256x8_inferred_tb.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Data Memory Testbench
-- Testbench for single-cycle processor
-- data memory
-- Brute force approach
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ram_256x8_inferred_tb is
	-- no entry - testbench
end entity;

architecture testbench of ram_256x8_inferred_tb is
	signal CLK: std_logic;
    signal WE_B: std_logic;
	signal ADDR: unsigned(7 downto 0);
    signal DATA_IN: unsigned(7 downto 0);

    signal DATA_OUT: std_logic_vector(7 downto 0);

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component ram_256x8_inferred is
	port
	(
		i_clk: 			in std_logic;
		i_web:		    in std_logic; -- write-enable-not
		i_addr:		    in std_logic_vector(7 downto 0); -- address
		i_data_in:	    in std_logic_vector(7 downto 0); -- data in
		
		o_data_out:	    out std_logic_vector(7 downto 0) -- data out
	);
    end component;
	-----------------------------------
	
begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: ram_256x8_inferred
		port map
		(
			i_clk => CLK,
            i_web => WE_B,
			i_addr => std_logic_vector(ADDR),
            i_data_in => std_logic_vector(DATA_IN),
			
			o_data_out => DATA_OUT
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
        ADDR <= 8X"00";
        DATA_IN <= 8X"00";
        wait for PER * 4;
        for I in 0 to 9 loop
            ADDR <= ADDR + 8X"0C";
            wait for PER * 2;
        end loop;
        wait for PER * 4;

        -- second run: write
        WE_B <= '0';
        ADDR <= 8X"00";
        DATA_IN <= 8X"00";
        wait for PER * 4;
        for I in 0 to 9 loop
            ADDR <= ADDR + 8X"0C";
            DATA_IN <= DATA_IN + 8X"05"; -- put some quasi-random values in
            wait for PER * 2;
        end loop;
        wait for PER * 4;

        -- third run: no write
        WE_B <= '1';
        ADDR <= 8X"00";
        wait for PER * 4;
        for I in 0 to 9 loop
            ADDR <= ADDR + 8X"0C";
            DATA_IN <= DATA_IN + 8X"05"; -- continue providing values to validate
            wait for PER * 2;
        end loop;
        wait for PER * 4;
	end process;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
