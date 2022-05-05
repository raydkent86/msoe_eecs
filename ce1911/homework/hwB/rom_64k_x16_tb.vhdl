----------------------------------------
-- created 04/21/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- rom_64k_x16_tb.vhdl
-- rev 0
----------------------------------------
--
-- testbench for HDL ROM homework
-- brute force
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_64k_x16_tb is
	-- no entry - testbench
end entity;

architecture testbench of rom_64k_x16_tb is
	signal CLK: std_logic;
	signal ADDR: std_logic_vector(14 downto 0);
	signal DATA: std_logic_vector(15 downto 0);
	
	constant PER: time := 20 ns;
	
	-- component prototype
	component rom_64k_x16_v2 IS
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (14 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	end component;
	
	begin
		-- device under test
		DUT: rom_64k_x16_v2
		port map
		(
			address	 => ADDR,
			clock	 => CLK,
			q	 => DATA
		);
		
		-- clock process
		clock: process
		begin
			-- initialize
			CLK <= '0';
			
			-- infinite l00p
			loop
				wait for PER/2;
				CLK <= not CLK;
			end loop;
		end process;
		
		-- run process
		run: process
		begin
			-- initialize input
			ADDR <= (others => '0');
			
			-- test all values
			for i in 0 to 32767 loop
				wait for 2 * PER;
				ADDR <= std_logic_vector(to_unsigned(i, 15));
			end loop;
		end process;
end architecture;
