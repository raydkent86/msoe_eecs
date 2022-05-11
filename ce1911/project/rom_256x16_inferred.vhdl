----------------------------------------
-- created 05/06/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- rom_256x16_inferred.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Instruction Memory
-- 256-word (512B) single-port inferred
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

entity rom_256x16_inferred is
    port
    (
        i_addr: in std_logic_vector(7 downto 0); -- 2^8

        o_data: out std_logic_vector(15 downto 0)
    );
end entity;

architecture behavioral of rom_256x16_inferred is
    type rom_type is array (0 to 255) of std_logic_vector(15 downto 0);

    -- encoded program instructions (given)
    constant myROM: rom_type := (
        -- program 1
        0 => 16X"C010",
        1 => 16X"C04A",
        2 => 16X"5180",
        3 => 16X"02C0",
        4 => 16X"4640",
        5 => 16X"1D80",
        6 => 16X"5C00",
        7 => 16X"3180",
        8 => 16X"2E40",
        9 => 16X"6B00",

        -- program 2
        64 => 16X"C002",
        65 => 16X"C044",
        66 => 16X"C088",
        67 => 16X"C0CC",
        68 => 16X"9300",
        69 => 16X"9600",
        70 => 16X"9C00",
        71 => 16X"9900",
        72 => 16X"8000",
        73 => 16X"8440",
        74 => 16X"8880",
        75 => 16X"8CC0",

        -- program 3
        160 => 16X"C001",
        161 => 16X"9000",
        162 => 16X"9040",
        163 => 16X"9080",
        164 => 16X"4140",
        165 => 16X"4680",
        166 => 16X"4140",
        167 => 16X"4680",
        168 => 16X"4140",
        169 => 16X"4680",
        170 => 16X"4140",
        171 => 16X"4680",
        172 => 16X"4140",
        173 => 16X"4680",
        174 => 16X"4140",
        175 => 16X"4680",

        -- all others to no-op
        others => 16X"F000"
        );
begin
    o_data <= myROM(to_integer(unsigned(i_addr)));
    -- no other output signals - ROM
end architecture;
