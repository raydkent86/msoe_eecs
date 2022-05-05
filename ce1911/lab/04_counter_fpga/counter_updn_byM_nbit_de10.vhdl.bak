------------------------------
--
-- counter_unsigned_n_bit_de10.vhdl
--
-- created: 4/6/20
-- by: johnsontimoj
-- rev: 0
--
-- DE10 implementation for N bit counter
-- of counter_unsigned_n_bit.vhdl
--
-------------------------------
library ieee;
use ieee.std_logic_1164.all;

entity counter_unsigned_n_bit_de10 is
	generic(
				N: positive := 8
	);
	port(
			CLOCK_50:	in		std_logic;
			SW:			in		std_logic_vector(0 downto 0);
	
			LEDR:			out	std_logic_vector((N - 1) downto 0)
	);
end entity;

architecture HW of counter_unsigned_n_bit_de10 is

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

	COMPONENT counter_unsigned_n_bit
		generic(
				N: natural := 4
				);
	port (
			i_clk :	in std_logic; 
			i_rstb :	in std_logic; 

			o_cnt : 	out std_logic_vector((N-1) downto 0)
			);
	END COMPONENT;
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

	DUT: counter_unsigned_n_bit
		generic map(
						n => N
		)
		port map(
					i_clk 	=> CLK_SIG, 
					i_rstb 	=> SW(0),

					o_cnt		=> LEDR((N - 1) downto 0)
					);

end architecture;