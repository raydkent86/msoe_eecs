----------------------------------------
-- created 05/01/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- lab8_part2.vhdl
-- rev 0
----------------------------------------
--
-- Lab 8 assignment, part 2
-- Hardware for inferred 256-bit
-- RAM in a x8
--
----------------------------------------
--
-- Inputs: 	rstb, addr[4..0]
-- Outputs: addr_sseg_A/B and data_sseg_E/F
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab8_part2 is
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
end entity;

architecture behavioral of lab8_part2 is
	component ram_256_x8_inferred_lab8 is
        generic
        (
            mem_width:	positive := 8;
            mem_depth:	positive := 32 -- 2^5
        );
        port
        (
            i_clk: 			in std_logic;
            i_web:		    in std_logic;
            i_addr:		    in std_logic_vector(4 downto 0);
            i_data_in:	    in std_logic_vector(7 downto 0);
		
            o_data_out:	    out std_logic_vector(7 downto 0)
        );
    end component;
	
	component SEG7DECODE is  
		port(
			A: in std_logic_vector(5 downto 0);
			SEG: out std_logic_vector(7 downto 0)
		); 
	end component;
	
	signal ADDR_SSEG_A_CODE:	std_logic_vector(5 downto 0);
	signal ADDR_SSEG_B_CODE:	std_logic_vector(5 downto 0);
	signal DATA_OUT:		    std_logic_vector(7 downto 0);
	signal DATA_SSEG_E_CODE:	std_logic_vector(5 downto 0);
	signal DATA_SSEG_F_CODE:	std_logic_vector(5 downto 0);
	
	begin
		-- memory
		MEMORY: ram_256_x8_inferred_lab8
		port map
		(
			i_clk => i_clk,
            i_web => i_we_b,
			i_addr => i_addr,
            i_data_in => i_data,
			o_data_out => DATA_OUT
		);
		
		-- 7seg decoders
		SSEG_A_DEC: SEG7DECODE
		port map
		(
			A => ADDR_SSEG_A_CODE,
			SEG => o_addr_sseg_A
		);
		
		SSEG_B_DEC: SEG7DECODE
		port map
		(
			A => ADDR_SSEG_B_CODE,
			SEG => o_addr_sseg_B
		);
		
		SSEG_E_DEC: SEG7DECODE
		port map
		(
			A => DATA_SSEG_E_CODE,
			SEG => o_data_sseg_E
		);
		
		SSEG_F_DEC: SEG7DECODE
		port map
		(
			A => DATA_SSEG_F_CODE,
			SEG => o_data_sseg_F
		);
		
		-- seven-segment code logic for data and address
		DATA_SSEG_F_CODE <= "00" & DATA_OUT(7 downto 4);
		DATA_SSEG_E_CODE <= "00" & DATA_OUT(3 downto 0);
        ADDR_SSEG_B_CODE <= "00000" & i_addr(4 downto 4);
		ADDR_SSEG_A_CODE <= "00" & i_addr(3 downto 0);

end architecture;
