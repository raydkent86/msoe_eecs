--------------------------------------
--
-- lab8_part2_de10.vhdl
--
-- created 05/01/2022
-- Owen Bailey - CE 1911 011
--
-- rev 0
----------------------------------------
--
-- DE10 implementation for ROM hardware
-- (lab8_part2.vhdl)
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity lab8_part2_de10 is
	port(
			CLOCK_50:	in		std_logic;
			SW:			in 	    std_logic_vector(9 downto 0);
            KEY:        in      std_logic_vector(0 downto 0); -- button for rstb

			HEX0:		out	    std_logic_vector(7 downto 0);
			HEX1:		out	    std_logic_vector(7 downto 0);
			HEX4:		out	    std_logic_vector(7 downto 0);
			HEX5:		out	    std_logic_vector(7 downto 0)
	);
end entity;

architecture HW of lab8_part2_de10 is

	signal CLK_SIG:	std_logic;
    signal DATA_SIG: std_logic_vector(7 downto 0);

	--------------------------------
	-- Component prototypes
	---------------------------------
	component clock_1Hz
    port
    (
        i_clk_50MHz	:	 IN STD_LOGIC;
        i_rstb		:	 IN STD_LOGIC;
        o_clk_1Hz	:	 OUT STD_LOGIC
	);
	end component;

	component lab8_part2 is
	port
	(
		i_clk:	in std_logic;
        i_we_b: in std_logic;
		i_addr:	in std_logic_vector(4 downto 0);
        i_data: in std_logic_vector(7 downto 0);
		
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

        -- double up data bits on SW(8 downto 5)
        DATA_SIG(7 downto 6) <= SW(8) & SW(8);
        DATA_SIG(5 downto 4) <= SW(7) & SW(7);
        DATA_SIG(3 downto 2) <= SW(6) & SW(6);
        DATA_SIG(1 downto 0) <= SW(5) & SW(5);
        
        -- clock divider
        CK: clock_1Hz
            port map
            (
                i_clk_50MHz		=>	 CLOCK_50,
                i_rstb			=>	 KEY(0),
                o_clk_1Hz		=>	 CLK_SIG
            );
        
        -- device under test
        DUT: lab8_part2
            port map
            (
                i_clk => CLK_SIG,
                i_we_b => SW(9), -- WE_B to last switch
                i_addr => SW(4 downto 0),
                i_data => DATA_SIG,
                
                o_addr_sseg_A => HEX0,
                o_addr_sseg_B => HEX1,
                o_data_sseg_E => HEX4,
                o_data_sseg_F => HEX5
            );
end architecture;
