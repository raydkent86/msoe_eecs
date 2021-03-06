----------------------------------------
-- created 05/04/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- extend_sign.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Six-bit sign extender
-- Small component to convert a 6-bit
-- two's complement value to an 8-bit
-- two's complement value
--
----------------------------------------
--
-- Inputs:  i_in6
-- Outputs: o_out8
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;

entity extend_sign is
    port
    (
        i_in6: in std_logic_vector(5 downto 0);
        o_out8: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behaviorial of extend_sign is
begin
    o_out8 <= i_in6(5) & i_in6(5) & i_in6(5 downto 0);
end architecture;
