--------------------------------------
--
-- counter_updn_byM_nbit_de10.vhdl
--
-- created 4/04/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- DE10 implementation for n-bit up-down
-- counter with variable increments
-- (counter_updn_byM_nbit.vhdl)
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity counter_updn_byM_nbit_de10 is
	generic(
				Ntb: positive := 8;
				Mtb: positive := 3
	);
	port(
			CLOCK_50:	in		std_logic;
			SW:			in		std_logic_vector(9 downto 0);
	
			LEDR:			out	std_logic_vector((Ntb - 1) downto 0)
	);
end entity;

architecture HW of counter_updn_byM_nbit_de10 is

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

	component counter_updn_byM_nbit is
   generic(
				N: natural := 4;
				M: natural := 2 -- width of counter select
	);
	port (
			i_clk :	in std_logic; 
			i_rstb :	in std_logic;
			i_dir : in std_logic;
			i_run : in std_logic;
			i_ammt: in std_logic_vector((M-1) downto 0);
			

			o_cnt : 	out std_logic_vector((N-1) downto 0)
	);
	end component;
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

	DUT: counter_updn_byM_nbit
		generic map(
						N => Ntb,
						M => Mtb
		)
		port map(
					i_clk 	=> CLK_SIG, 
					i_rstb 	=> SW(0),
					i_dir		=> SW(1),
					i_run		=> sw(2),
					i_ammt	=> SW(((Mtb - 1) + 3) downto 3),

					o_cnt		=> LEDR((Ntb - 1) downto 0)
					);

end architecture;