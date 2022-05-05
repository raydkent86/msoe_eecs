-- We're back to doing VHDL! First things first, a quick review of the design flow.
-- 1) DESIGN ENTRY
--     - text entry in HDL (Verilog, VHDL, System C)
--     - hierarchical instantiation of blocks
-- X) We are NOT doing schematic entry
--     - block diagrams are retarded and can sukka dikka sumthin
-- 2) RTL SYNTHESIS
--     - analyze VHDL
--         - Processing -> Analyze Current File in Quartus
--         - find syntax errors
--         - does NOT check for synthesizability
--     - analysis and elaboration
--         - finds syntax errors
--         - checks for synthesizability
--         - creates RTL that can be used to check for errors, especially unintended logic
--     - register transfer level (RTL) synthesis does NOT create a physical representations and is not
--       tied to ANY circuit implementation
--         - rather, it describes the operation of registers and intermediate logic between registers
--         - MATHEMATICAL MODELS
-- 3) FUNCTIONAL SIMULATION
--     - ModelSim via Quartus
--     - ModelSim is a standalone application and can be used on its own, but we don't do that here
--     - RTL sim uses the mathematical abstractions supported by the tool to simulate circuit actions
--     - NO defined circuit information yet
-- 4) GATE LEVEL IMPLEMENTATION
--     - starts with analysis and synthesis
--     - then performs post mapping and places and routes things
-- 5) FPGA IMPLEMENTATION
--     - finds timing constraints
--     - runs fitter
--         - maps generalized gate-level logic to specific blocks on the FPGA
--         - accounts for loading/timing constraints
--     - may also include the chip planner
--         - view the physical implementation on the actual chip
--         - cross probe via Locate -> Locate in...
--     - does static timing analysis as part of the fitting process to see operation across process,
--       temperature, and voltage variations
--     - then assembles, prepares for initial power analysis, and is ready for programming to the FPGA

-- Keep in mind that if we're doing a simulation, ANYTHING PAST ELABORATION IS A COMPLETE AND TOTAL
-- WASTE OF TIME. If you're doing this on one of these crappy Thinkpad X1s, it can be a ten minute
-- difference between

-- As for VHDL itself, remember: it was created by committee with a knife and fork by the GOVERNMENT.
-- It was literally a thing the military demanded because they were sick of their contractors not
-- being able to share designs owing to using lots of different toolchains, which explains why it's
-- REEEEEEEEAAAAAAAAAAAAALLLLLLLLLLLYYYYYYFFFFFFFFFFFUUUUUUUUUUCCCCCCCCCCKKKKKINGGGGGMMMMMMMMMEESSS
-- SSSSSSSSSSYYYYYYYY.

-- Basic VHDL files include the following components (and remember: ALWAYS DOCUMENT YO' CODES)
-- 1) header info in the form below
--      ----------------------------
        -- basic_vhdl.vhdl
        -- Created: 7/16/18
        -- By: johnsontimoj
        -- For: EE3921
        --
        
        --File Overview---
        --
        -- This file demonstrates basic VHDL file structure
        
        --File Details ---
        ----------------------------
-- 2) library includes
-- 3) entity (includes pins and generics, the latter of which is NOT a variable but like a #define)
-- 4) architecture (has internal signals and architectural definition - in this class, it tends to
--    be "behavioral")
-- For a full example, go to timoj's website.

-- VHDL generally has component files and a top-level structural file, and has a few constructs for
-- doing things. One may remember with/select:

with decision_signal select result_signal <=
    result_value when decision_value,
    result_value when decision_value,
    result_value when decision_value;

-- The drawback is that it can only be used to give one result signal, so it's a waste of time. But
-- it creates a multiplexer, so that might be helpful when you're doing combinational stuff.

-- There's a similar construct called when/else that we also never use because it could possibly be
-- even more garbagey than with/select.

-- But the first part of this class has all talked about synchronous and asynchronous logic, and it
-- turns out we can do that in here. Synchronous activities are denoted by putting them in a
-- process block, which only execute when a signal in the block's "sensitivity list" changes.

-- The code in a process block is evaluated sequentially but SIGNALS ARE ONLY UPDATED AT THE END OF
-- THE PROCESS BLOCK. But it means they now allow if-else and case statements, which allows for much
-- more complicated stuff.

-- Just like any language, VHDL has a bunch of operators at various levels of precedence:
-- 1) MISC
--     ** - exponentiation (VERY COSTLY IN HARDWARE, NEVER USE)
--     abs - absolute value
--     not - invert
-- 2) MULTIPLYING AND DIVIDING (ALSO VERY COSTLY, ALSO NEVER USE)
--     * / - multiply/divide
--     mod, rem - modulo
-- 3) SIGN (+ -)
-- 4) ADDING AND SUBTRACTING AND CONCATENATION (+ - &)
-- 5) BIT SHIFTS (sll, srl, sla, sra, rol, ror)
-- 6) RELATIONAL (= /= < <= > >=)
-- 7) LOGICAL (and, or, nand, nor, xor, xnor)

-- The best practice is to ALWAYS USE PARENTHESES because operator precedence is dubious at best in
-- VHDL. If you go online to get solutions, YOU WILL FIND A SHITLOAD OF TERRIBLE VHDL. One way to
-- tell is if you find code that says "variable" in it instead of "vector", and this is a guaranteed
-- way to get zeros
