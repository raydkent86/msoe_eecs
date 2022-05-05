--------------------------------------
--
-- counter_gray_3bit_de10.vhdl
--
-- created 4/04/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- DE10 implementation for 3-bit Gray code
-- counter (counter_gray_3bit.bdf/vhdl)
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity counter_gray_3bit_de10 is
	port(
			CLOCK_50:	in		std_logic;
			SW:			in 	std_logic_vector(1 downto 0);
	
			LEDR:			out	std_logic_vector(2 downto 0)
	);
end entity;

architecture HW of counter_gray_3bit_de10 is

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

	component counter_gray_3bit is
   PORT
	(
		i_dir :  IN  STD_LOGIC;
		i_rstb :  IN  STD_LOGIC;
		i_clk :  IN  STD_LOGIC;
		o_q :  OUT  STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
	END component;
	-----------------------------------
	
	begin
		
	------------------------------------
	-- Implementation
	------------------------------------
	CK: clock_1Hz
		port map(
			i_clk_50MHz		=>	 CLOCK_50,
			i_rstb			=>	 SW(0),
			o_clk_1Hz		=>	 CLK_SIG
		);

	DUT: counter_gray_3bit
		port map(
					i_clk 	=> CLK_SIG, 
					i_rstb 	=> SW(0),
					i_dir		=> SW(1),
					
					o_q		=> LEDR
					);

end architecture;
