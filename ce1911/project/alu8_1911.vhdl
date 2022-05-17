----------------------------------------
-- created 05/04/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- alu8_1911.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Eight-bit arithmetic logic unit
-- Eight bit synthesized ALU with
-- support for OR, AND, NOR, NAND, ADD,
-- SUB, SLT, NOP
-- Selector mirrors first four bits of
-- encoded processor instruction
--
----------------------------------------
--
-- Inputs:  i_a, i_b, i_sel
-- Outputs: o_set, o_res
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu8_1911 is
    port
	 (
        i_a:    in std_logic_vector(7 downto 0);
        i_b:    in std_logic_vector(7 downto 0);
        i_sel:  in std_logic_vector(3 downto 0);

        o_set:  out std_logic;
        o_res:  out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of alu8_1911 is
    signal RESULT: unsigned(7 downto 0);
begin
    process(all)
    begin
        if (i_sel = "0000") then
            -- bitwise OR
            o_set <= '0';
            for I in 0 to 7 loop
                RESULT(I) <= i_a(I) or i_b(I);
            end loop;
        elsif (i_sel = "0001") then
            -- bitwise AND
            o_set <= '0';
            for I in 0 to 7 loop
                RESULT(I) <= i_a(I) and i_b(I);
            end loop;
        elsif (i_sel = "0010") then
            -- bitwise NOR
            o_set <= '0';
            for I in 0 to 7 loop
                RESULT(I) <= i_a(I) nor i_b(I);
            end loop;
        elsif (i_sel = "0011") then
            -- bitwise NAND
            o_set <= '0';
            for I in 0 to 7 loop
                RESULT(I) <= i_a(I) nand i_b(I);
            end loop;
        elsif (i_sel = "0100") then
            -- add
            RESULT <= unsigned(i_a) + unsigned(i_b);
            o_set <= '0';
        elsif (i_sel = "0101") then
            -- subtract
            RESULT <= unsigned(i_a) - unsigned(i_b);
            o_set <= '0';
        elsif (i_sel = "0110") then
            -- set if less-than
            RESULT <= unsigned(i_a) - unsigned(i_b);
            if (to_integer(signed(i_a)) < to_integer(signed(i_b))) then
                o_set <= '1';
            else
                o_set <= '0';
            end if;
        elsif (i_sel = "1111") then
            -- no-op
            -- rstb at controller will invoke
            RESULT <= 8X"00";
            o_set <= '0';
        else
            -- default to add for all other instructions
            -- control unit will produce a zero in input A for cases in which
            -- the processor's instruction bypasses the ALU (this is done so
            -- the ALU as a whole has smaller hardware)
            RESULT <= unsigned(i_a) + unsigned(i_b);
            o_set <= '0';
        end if;
    end process;

    -- output mapping
    o_res <= std_logic_vector(RESULT);
end architecture;
