-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: MYMUX4TO1.vhd
-- DESCRIPTION: Implements a four-to-one mux

-- VHDL is an acronym within an acronym - two-level meaning Very High Speed Integrated Circuit
-- (VHSIC) Hardware Description Language. So if you didn't think electrical engineers were acronym
-- obsessed before, now you do.

-- Today, we're going to make a four-to-one multiplexer. Multiplexers are crucial to the function
-- of FPGAs and there is therefore special notation to implement them in VHDL. Let's start out with
-- the basics - includes, etc.

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
        -- alternately, although this gives crappier architecture:
        -- Y <= D0 when (SEL = "00") else
        --      D1 when (SEL = "01") else
        --      D2 when (SEL = "10") else
        --      D3 when (SEL = "11") else
        --      '0';

-- There are architectural implications to the code one writes. Sometimes networks end up getting
-- really wide, and sometimes networks end up getting really long. If something seems to go wrong,
-- GO TO THE RTL in Quartus to check if what you typed in is actually manifesting in the compiled
-- binary.

-- So far, we've learned equations and with/select statements. These cover gates and muxes and
-- will be endlessly useful to us as time goes on.
