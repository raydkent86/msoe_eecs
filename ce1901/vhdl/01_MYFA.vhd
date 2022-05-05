-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: MYFA.vhd
-- DESCRIPTION: Implements a Full Adder using combinational equations

-- This is a VHDL file. Those dash-dash characters are similar to the double-slash in C and denote
-- a single-line comment. The stuff below is going to end up being similar to Fortran... I guess.
-- Just shut up.

-- Now we're at the fun part of the class where we learn a new programming language... AGAIN.
-- Here's an example of an application:

-- Let's start with a library: specifically, the IEEE standard library. We'll also set up the
-- standard logic datatypes from IEEE as well while we're at it.

library ieee;
use ieee.std_logic_1164.all;

-- There's other things that this adds, but the main features are the ones, zeroes, don't cares,
-- high-impedance values, and basically all the other stuff one is going to nede for doing logic.
-- We can add extra libraries like the numeric library but that's not what we're doing here.

-- Next, let's get a component going for the full adder:

entity MYFA is
    port(
        A, B, CIN : in std_logic;   -- define inputs and their direction
                                    -- also, don't do this sort of comment in the real deal because Dr. Livingston will pull out what's left of his not-very-much hair
                                    -- comments need to ADD VALUE TO THINGS, not just repeat redundant gaabaege
        S : out std_logic;
        COUT : out std_logic        -- comments are, however, helpful if you want to denote what outputs mean: you can say, for instance, that this is the carry-out bit
    );                              -- do not put semicolons on the last declaration in a set of parens or you will get compile errors; you already have one outside it
end entity MYFA;
                                    -- also, it's generally good convention (for the sake of not having stupid long lines like this one so your code is readable on a
                                    -- small screen) to put the I/O assignments above the entity declaration

-- Something worth mentioning is that white space in VHDL DOES NOT MATTER. But do NOT write
-- everything as one long string of characters, because it's unreadable and shite and will not be
-- graded. VHDL is not case-sensitive either, but using random cases is also bad convention.
-- Generally, like with assembly language, the best convention is to have instructions in lowercase
-- with variable names in uppercase.

-- A good rule of thumb is that your lines should not be more than a hundred characters wide in any
-- case. That way, your stuff will scale properly and you won't destroy people's eyes like I did
-- with that stuff above. Now let's move on to implementing the dataflow architecture:

-- good comment convention: stuff directly above the actual execution
-- Dataflow architecture implemented using Boolean equations
--      S = A xor B xor CIN
--      COUT = AB + B CIN + A CIN
architecture DATAFLOW of MYFA is
    begin
        -- VHDL gate keywords: and or not nor nand xor xnor
        -- when in doubt, DO NOT RELY ON ORDER OF OPERATIONS and USE PARENTHESES because things are
        -- (a) more readable and (b) more certain to turn out the way you want them
        S <= A xor B xor CIN;
        COUT <= (A and B) or (B and CIN) or (A and not CIN);
    end architecture DATAFLOW;

-- See how much easier that is than wiring all that crap up with eleventy billion ICs and logic
-- gates? Sure, it's not as convenient as having a system of scope with curly brackets, but the
-- BEGIN/END/WHATEVER does the same kind of thing.

-- One final reminder: TRUST NOTHING. Always make sure you test things out before you burn it down
-- to the FPGA or you'll have a tough time trying to debug it when the time comes.
-- Even so, this is much less tedious than putting together a collection of gates or even a block
-- diagram. When one does this in Quartus, the compile report will show how many logic elements of
-- the FPGA that are in use, and has an RTL view to show a block diagram if you want to check your
-- work to make sure you didn't do anything wrong.
