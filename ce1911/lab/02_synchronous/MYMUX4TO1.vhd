-- MUX IMPLEMENTATION FROM CE 1901 --

-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: MYMUX4TO1.vhd
-- DESCRIPTION: Implements a four-to-one mux

library ieee;
use ieee.std_logic_1164.all;

-- 4TO1 mux component
-- Inputs:
    -- D0, D1, D2, D3: data bits of mux
    -- SEL: selection bit bus
-- Outputs:
    -- Y: mux output
entity MYMUX4TO1 is
    port(
        D0, D1, D2, D3 : in std_logic;
        SEL : in std_logic_vector(1 downto 0);  -- SEL bus: SEL1 is MSB, SEL0 is LSB
        Y : out std_logic
    );
end entity MYMUX4TO1;

-- std_logic_vector -> B" " or " "
-- std_logic -> '0', '1', 'Z', 'X'
architecture DATAFLOW of MYMUX4TO1 is
    begin
        with SEL select
            Y <= D0 when "00",
                 D1 when "01",
                 D2 when "10",
                 D3 when "11",
                 '0' when others;   -- assign a zero to all other cases
	end architecture;
