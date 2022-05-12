----------------------------------------
-- created 05/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- proc_de10.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Seven Segment Display Decoder
-- Stripped-down seven-segment decoder
-- for use with digits 0 to F
--
----------------------------------------
--
-- Inputs:  i_nibble_in, i_blank
-- Outputs: o_sseg_out
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity sseg is
    port
    (
        i_nibble_in: in std_logic_vector(3 downto 0);
        i_blank: in std_logic;

        o_sseg_out: out std_logic_vector(7 downto 0)
    );
end entity;

architecture multiplexer of sseg is
begin
    process(all)
    begin
        if (i_blank = '1') then
            o_sseg_out <= 8X"FF";
        else
            case i_nibble_in is
                when 4X"0" => o_sseg_out <= 8X"C0";
                when 4X"1" => o_sseg_out <= 8X"F9";
                when 4X"2" => o_sseg_out <= 8X"A4";
                when 4X"3" => o_sseg_out <= 8X"B0";
                when 4X"4" => o_sseg_out <= 8X"99";
                when 4X"5" => o_sseg_out <= 8X"92";
                when 4X"6" => o_sseg_out <= 8X"82";
                when 4X"7" => o_sseg_out <= 8X"D8";
                when 4X"8" => o_sseg_out <= 8X"80";
                when 4X"9" => o_sseg_out <= 8X"90";
                when 4X"A" => o_sseg_out <= 8X"88";
                when 4X"B" => o_sseg_out <= 8X"83";
                when 4X"C" => o_sseg_out <= 8X"A7";
                when 4X"D" => o_sseg_out <= 8X"A1";
                when 4X"E" => o_sseg_out <= 8X"86";
                when 4X"F" => o_sseg_out <= 8X"8E";
                when others => o_sseg_out <= 8X"C0";
            end case;
        end if;
    end process;
end architecture;
