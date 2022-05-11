----------------------------------------
-- created 05/06/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- rom_256_x16_inferred.vhdl
-- rev 1
----------------------------------------
--
-- Lab 9 (Project)
-- Register file
-- 4 x 8-bit (4B) three-port register
-- file with two read ports and one
-- write port
--
----------------------------------------
-- Inputs: 	clk, we_b, addr_a, addr_b,
--          addr_W, data_W
-- Outputs: data_a, data_b
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reg_file_4x8b is
    port
    (
        i_clk:      in std_logic;
        i_we_b:     in std_logic;
        i_addr1:   in std_logic_vector(1 downto 0);
        i_addr2:   in std_logic_vector(1 downto 0);
        i_addr_W:   in std_logic_vector(1 downto 0);
        i_data_W:   in std_logic_vector(7 downto 0);

        o_data1:   out std_logic_vector(7 downto 0);
        o_data2:   out std_logic_vector(7 downto 0);

        o_regA_data: out std_logic_vector(7 downto 0);
        o_regB_data: out std_logic_vector(7 downto 0);
        o_regC_data: out std_logic_vector(7 downto 0);
        o_regD_data: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of reg_file_4x8b is
    type reg_file is array (0 to 3) of std_logic_vector(7 downto 0);
    signal reg_4x8b: reg_file;

    -- fix for Quartus inferring RAM
    attribute ramstyle: string;
    attribute ramstyle of reg_4x8b: signal is "logic";

begin
    -- synchronous write
    process(i_clk)
    begin
        if (rising_edge(i_clk)) then
            if (i_we_b = '0') then
                reg_4x8b(to_integer(unsigned(i_addr_W))) <= i_data_W;
            end if;
        end if;
    end process;

    -- output logic
    o_data1 <= reg_4x8b(to_integer(unsigned(i_addr1)));
    o_data2 <= reg_4x8b(to_integer(unsigned(i_addr2)));
    o_regA_data <= reg_4x8b(0);
    o_regB_data <= reg_4x8b(1);
    o_regC_data <= reg_4x8b(2);
    o_regD_data <= reg_4x8b(3);

end architecture;
