--------------------------------------
--
-- vending_machine_fsm_de10.vhdl
--
-- created 4/25/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- DE10 implementation for vending
-- machine hardware
-- (vending_machine_fsm.vhdl)
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity vending_machine_fsm_de10 is
	port(
			CLOCK_50:	in		std_logic;
			SW:			in 	std_logic_vector(8 downto 0);
			KEY:			in		std_logic_vector(0 downto 0);
	
			LEDR:			out	std_logic_vector(4 downto 0);
			HEX0:			out	std_logic_vector(7 downto 0);
			HEX1:			out	std_logic_vector(7 downto 0);
			HEX2:			out	std_logic_vector(7 downto 0);
			HEX3:			out	std_logic_vector(7 downto 0);
			HEX4:			out	std_logic_vector(7 downto 0);
			HEX5:			out	std_logic_vector(7 downto 0)
	);
end entity;

architecture HW of vending_machine_fsm_de10 is

	signal CLK_SIG:	std_logic;
	signal KEYN:		std_logic_vector(0 downto 0); -- correction for active-low buttons
	signal HEX0_CODE: std_logic_vector(5 downto 0);
	signal HEX1_CODE: std_logic_vector(5 downto 0);
	signal HEX2_CODE: std_logic_vector(5 downto 0);
	signal HEX3_CODE: std_logic_vector(5 downto 0);
	signal HEX4_CODE: std_logic_vector(5 downto 0);
	signal HEX5_CODE: std_logic_vector(5 downto 0);

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

	component vending_machine_fsm is
	port
	(
		i_clk: 			in std_logic;
		i_rstb: 		in std_logic;
		
		i_nickel:		in std_logic; -- nickel in (switch, clock activated)
		i_dime:			in std_logic; -- dime in (switch, clock activated)
		i_quarter:		in std_logic; -- quarter in (switch, clock activated)
		i_cancel:		in std_logic; -- cancel (button, async)
		i_chip1:		in std_logic; -- chip item 1 (switch)
		i_chip2:		in std_logic; -- chip item 2 (switch)
		i_candy1:		in std_logic; -- candy item 1 (switch)
		i_candy2:		in std_logic; -- candy item 2 (switch)
		i_candy3:		in std_logic; -- candy item 3 (switch)
		
		-- seven-segment output to decoders
		o_sseg0:		out std_logic_vector(5 downto 0);
		o_sseg1:		out std_logic_vector(5 downto 0);
		o_sseg2:		out std_logic_vector(5 downto 0);
		o_sseg3:		out std_logic_vector(5 downto 0);
		o_sseg4:		out std_logic_vector(5 downto 0);
		o_sseg5:		out std_logic_vector(5 downto 0);
		
		-- LED output bus
		o_led:			out std_logic_vector(4 downto 0)
	);
	end component;
	
	component SEG7DECODE is  
	port(
		A: in std_logic_vector(5 downto 0);  
		SEG: out std_logic_vector(7 downto 0)
	); 
	end component; 
	-----------------------------------
	
	begin
	
	-- flip buttons
	KEYN(0) <= not KEY(0);
		
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
	DUT: vending_machine_fsm
		port map
		(
			i_clk => CLK_SIG,
			i_rstb => SW(0),
			
			i_nickel => SW(1),
			i_dime => SW(2),
			i_quarter => SW(3),
			i_cancel => KEYN(0),
			i_chip1 => SW(4),
			i_chip2 => SW(5),
			i_candy1 => SW(6),
			i_candy2 => SW(7),
			i_candy3 => SW(8),
			
			o_sseg0 => HEX0_CODE,
			o_sseg1 => HEX1_CODE,
			o_sseg2 => HEX2_CODE,
			o_sseg3 => HEX3_CODE,
			o_sseg4 => HEX4_CODE,
			o_sseg5 => HEX5_CODE,
			
			o_led => LEDR
		);
		
	-- 7seg decoders
	HEX0DEC: SEG7DECODE
		port map
		(
			A => HEX0_CODE,
			SEG => HEX0
		);
	
	HEX1DEC: SEG7DECODE
		port map
		(
			A => HEX1_CODE,
			SEG => HEX1
		);
	
	HEX2DEC: SEG7DECODE
		port map
		(
			A => HEX2_CODE,
			SEG => HEX2
		);
	
	HEX3DEC: SEG7DECODE
		port map
		(
			A => HEX3_CODE,
			SEG => HEX3
		);
	
	HEX4DEC: SEG7DECODE
		port map
		(
			A => HEX4_CODE,
			SEG => HEX4
		);
	
	HEX5DEC: SEG7DECODE
		port map
		(
			A => HEX5_CODE,
			SEG => HEX5
		);

end architecture;
