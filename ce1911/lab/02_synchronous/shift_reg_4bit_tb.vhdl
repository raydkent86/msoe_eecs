------------------------------
--
-- shift_reg_4bit_tb.vhdl
--
-- created: 1/26/18
-- by: johnsontimoj
-- rev: 0
--
-- testbench for 4 bit shift register
-- of shift_reg_4bit.vhdl
--
-- brute force implementation
--
-------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity shift_reg_4bit_tb is
	-- no entry - testbench
end entity;

architecture testbench of shift_reg_4bit_tb is
	signal	CLK:	std_logic;
	signal	RSTB:	std_logic;
	
	signal	DIN:	std_logic;
	signal	SEL:			std_logic_vector(1 downto 0);
	signal	SHIFT_OUT:	std_logic_vector(3 downto 0);
	
	constant PER:	time:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
COMPONENT shift_reg_4bit
	PORT
		(
			i_sel		:	 IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			i_rstb	:	 IN STD_LOGIC;
			i_clk		:	 IN STD_LOGIC;
			i_din		:	 IN STD_LOGIC;
			o_b0		:	 OUT STD_LOGIC;
			o_b1		:	 OUT STD_LOGIC;
			o_b2		:	 OUT STD_LOGIC;
			o_b3		:	 OUT STD_LOGIC
		);
	-----------------------------------
end component;

	begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: shift_reg_4bit
		port map(
					i_sel		=> SEL,
					i_rstb	=> RSTB,
					i_clk		=> CLK,
					i_din		 => DIN,
					o_b0	 	=> SHIFT_OUT(0),
					o_b1	 	=> SHIFT_OUT(1),
					o_b2	 	=> SHIFT_OUT(2),
					o_b3	 	=> SHIFT_OUT(3)
					);


	-------------------------------------
	-- Test processes
	-------------------------------------
	
   -- Clock process
	clock: process		-- note - no sensitivity list allowed
	begin
		CLK <= '0';
		wait for 5 ns;
		infinite: loop
			CLK <= not CLK; wait for PER/2;
		end loop;				
	end process clock;
	
	-- Reset process
	reset: process		-- note - no sensitivity list allowed
	begin
		RSTB <= '0'; wait for 2*PER;
		RSTB <= '1'; wait;
	end process reset;
	
	-- Run Process
	run: process 		-- note - no sensitivity list allowed
	begin
		-- initialize values
		DIN <= '0';
		SEL <= "11";
		
		-- Shift 1 across
		SEL <= "00";
		wait for 2*PER;
		shift_across: for i in 1 to 5 loop
			if (i = 1) then
				DIN <= '1';
			else
				DIN <= '0';
			end if;
			wait for PER;
		end loop shift_across;
		
		-- Shift 1 down and back
		wait for 2*PER;
		-- down
		SEL <= "00";
		shift_down: for i in 1 to 4 loop
			if (i = 1) then
				DIN <= '1';
			else
				DIN <= '0';
			end if;
			wait for PER;
		end loop shift_down;
		-- and back
		SEL <= "01";
		shift_back: for i in 1 to 4 loop
			wait for PER;
		end loop shift_back;	
	
		-- shift 1010 pattern forever
		wait for 2*PER;
		SEL <= "00";
		DIN <= '0';
		infinite: loop
			DIN <= not DIN;
			wait for PER;
		end loop infinite;
	
	end process run;
		
	------------------------------------------
	-- End test processes
	------------------------------------------
					
end architecture;