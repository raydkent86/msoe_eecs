----------------------------------------
-- created 05/06/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- rom_256_x16_inferred.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Instruction Memory
-- 256-bit (32B) single-port inferred
-- ROM in a x16 configuration based on
-- the design from Lab 8
--
----------------------------------------
-- Inputs: 	clk, addr
-- Outputs: data
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom_256_x16_inferred is
    port
    (
        i_clk:  in std_logic;
        i_addr: in std_logic_vector(3 downto 0); -- 2^4

        o_data: out std_logic_vector(15 downto 0)
    );
end entity;

architecture behavioral of rom_256_x16_inferred is
    type rom_type is array (0 to 15) of std_logic_vector(15 downto 0);

    -- instructions stored in rom_init.mif
    -- COMMENT OUT FOR SIMULATION
    -- attribute ram_init_file: string;
    -- attribute ram_init_file of myROM: signal is "rom_init.mif";

    -- constant ROM values for testbench
    constant myROM: rom_type := (
        16X"0000",
        16X"1111",
        16X"2222",
        16X"3333",
        16X"4444",
        16X"5555",
        16X"DEAD",
        16X"7777",
        16X"2886",
        16X"9999",
        16X"AAAA",
        16X"BBBB",
        16X"BAAD",
        16X"F00D",
        16X"DEAD",
        16X"BEEF"
        );
begin
    process(i_clk)
    begin
        if (rising_edge(i_clk)) then
            o_data <= myROM(to_integer(unsigned(i_addr)));
        end if;
    end process;

    -- no other output signals - ROM
end architecture;
