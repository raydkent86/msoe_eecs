--------------------------------------
--
-- stoplight_advanced_fsm_de10.vhdl
--
-- created 4/18/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- DE10 implementation for 3-bit Gray code
-- counter (stoplight_advanced_fsm.vhdl)
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity stoplight_advanced_fsm_de10 is
	port(
			CLOCK_50:	in		std_logic;
			SW:			in 	std_logic_vector(4 downto 0);
	
			LEDR:			out	std_logic_vector(5 downto 0);
			HEX0:			out	std_logic_vector(7 downto 0);
			HEX1:			out	std_logic_vector(7 downto 0);
			HEX2:			out	std_logic_vector(7 downto 0);
			HEX3:			out	std_logic_vector(7 downto 0)
	);
end entity;

architecture HW of stoplight_advanced_fsm_de10 is

	signal CLK_SIG:	std_logic;

	--------------------------------
	-- Component prototypes
	---------------------------------
	COMPONENT clock_3Hz
		port(
			i_clk_50MHz	:	 IN STD_LOGIC;
			i_rstb		:	 IN STD_LOGIC;
			o_clk_3Hz	:	 OUT STD_LOGIC
		);
	END COMPONENT;

	component stoplight_advanced_fsm is
	port
	(
		i_clk: 			in std_logic;
		i_rstb: 		in std_logic;
		i_pwr_fail: 	in std_logic; 	-- power failure indicator
		i_maint:		in std_logic; 	-- maintenance mode toggle
		i_emergency_a: 	in std_logic; 	-- emergency vehicle on axis A
		i_emergency_b: 	in std_logic; 	-- emergency vehicle on axis B
		
		o_A_red:		out std_logic;	-- axis A red
		o_A_yellow:		out std_logic;	-- axis A yellow
		o_A_green:		out std_logic;	-- axis A green
		o_B_red:		out std_logic;	-- axis B red
		o_B_yellow:		out std_logic;	-- axis B yellow
		o_B_green:		out std_logic;	-- axis B green
		
		o_sseg_A1:		out std_logic_vector(7 downto 0);	-- 7seg A1 decoded
		o_sseg_A0:		out std_logic_vector(7 downto 0);	-- 7seg A0 decoded
		o_sseg_B1:		out std_logic_vector(7 downto 0);	-- 7seg B1 decoded
		o_sseg_B0:		out std_logic_vector(7 downto 0)	-- 7seg B0 decoded
	);
	end component;
	-----------------------------------
	
	begin
		
	------------------------------------
	-- Implementation
	------------------------------------
	CK: clock_3Hz
		port map(
			i_clk_50MHz		=>	 CLOCK_50,
			i_rstb			=>	 SW(0),
			o_clk_3Hz		=>	 CLK_SIG
		);
		
	-- B is to the right, A is to the left - sorry
	DUT: stoplight_advanced_fsm
		port map
		(
			i_clk => CLK_SIG,
			i_rstb => SW(0),
			i_pwr_fail => SW(1),
			i_maint => SW(2),
			i_emergency_a => SW(3),
			i_emergency_b => SW(4),
			o_A_red => LEDR(5),
			o_A_yellow => LEDR(4),
			o_A_green => LEDR(3),
			o_B_red => LEDR(2),
			o_B_yellow => LEDR(1),
			o_B_green => LEDR(0),
			o_sseg_A1 => HEX3,
			o_sseg_A0 => HEX2,
			o_sseg_B1 => HEX1,
			o_sseg_B0 => HEX0
		);

end architecture;
