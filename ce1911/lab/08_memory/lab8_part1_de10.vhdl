--------------------------------------
--
-- lab8_part1_de10.vhdl
--
-- created 4/27/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- DE10 implementation for ROM hardware
-- (lab8_part1.vhdl)
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity lab8_part1_de10 is
	port(
			CLOCK_50:	in		std_logic;
			SW:			in 	std_logic_vector(5 downto 0);

			HEX0:			out	std_logic_vector(7 downto 0);
			HEX1:			out	std_logic_vector(7 downto 0);
			HEX4:			out	std_logic_vector(7 downto 0);
			HEX5:			out	std_logic_vector(7 downto 0)
	);
end entity;

architecture HW of lab8_part1_de10 is

	signal CLK_SIG:	std_logic;

	--------------------------------
	-- Component prototypes
	---------------------------------
	COMPONENT clock_1Hz
		port(
			i_clk_50MHz	:	 IN STD_LOGIC;
			i_rstb		:	 IN STD_LOGIC;
			o_clk_1Hz	:	 OUT STD_LOGIC
		);
	END COMPONENT;

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
	-- Implementation
	------------------------------------
	-- clock divider
	CK: clock_1Hz
		port map(
			i_clk_50MHz		=>	 CLOCK_50,
			i_rstb			=>	 SW(0),
			o_clk_1Hz		=>	 CLK_SIG
		);
	
	-- device under test
	DUT: lab8_part1
		port map
		(
			i_clk => CLK_SIG,
			i_addr => SW(5 downto 1),
			
			o_addr_sseg_A => HEX0,
			o_addr_sseg_B => HEX1,
			o_data_sseg_E => HEX4,
			o_data_sseg_F => HEX5
		);

end architecture;
