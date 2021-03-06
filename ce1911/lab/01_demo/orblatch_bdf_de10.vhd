library ieee;
use ieee.std_logic_1164.all;

entity orblatch_bdf_de10 is
	port(
		SW: in std_logic_vector(1 downto 0);
		LEDR: out std_logic_vector(0 downto 0)
		);
end entity;

architecture physical of orblatch_bdf_de10 is
	COMPONENT orblatch_bdf
			PORT
			(
				i_clk		:	 IN STD_LOGIC;
				i_d		:	 IN STD_LOGIC;
				o_q		:	 OUT STD_LOGIC
			);
	END COMPONENT;
	
	begin
		design: orblatch_bdf
			port map
			(
				i_clk => SW(0),
				i_d => SW(1),
				o_q => LEDR(0)
			);
	end architecture;