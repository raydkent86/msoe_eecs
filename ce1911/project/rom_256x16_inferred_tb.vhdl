----------------------------------------
-- created 05/06/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- rom_256x16_inferred_tb.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Instruction Memory Testbench
-- Testbench for single-cycle processor
-- instruction memory
-- Brute force approach
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_256x16_inferred_tb is
	-- no entry - testbench
end entity;

architecture testbench of rom_256x16_inferred_tb is
	signal CLK: std_logic;
	signal ADDR: unsigned(7 downto 0);

    signal DATA: std_logic_vector(15 downto 0);

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component rom_256x16_inferred is
    port
    (
        i_clk:  in std_logic;
        i_addr: in std_logic_vector(7 downto 0); -- 2^8

        o_data: out std_logic_vector(15 downto 0)
    );
    end component;
	-----------------------------------
	
begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: rom_256x16_inferred
		port map
		(
			i_clk => CLK,
			i_addr => std_logic_vector(ADDR),
			
			o_data => DATA
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
        ADDR <= 8X"0000";
        wait for PER * 4;
        for I in 0 to 255 loop
            ADDR <= ADDR + 8X"0001";
            wait for PER * 1;
        end loop;
	end process;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
