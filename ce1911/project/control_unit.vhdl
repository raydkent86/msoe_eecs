----------------------------------------
-- created 05/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- control_unit.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Control Unit
-- Single-cycle processor instruction
-- decoder
--
----------------------------------------
--
-- Inputs:  i_inst
-- Outputs: o_we_b_reg, o_we_b_ram,
--          o_alu_src_A, o_alu_src_B,
--          o_alu_ctl, o_mem_to_reg
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit is
    port
    (
        i_inst: in std_logic_vector(3 downto 0);

        o_we_b_reg: out std_logic;
        o_we_b_ram: out std_logic;
        o_alu_src_A: out std_logic;
        o_alu_src_B: out std_logic;
        o_alu_ctl: out std_logic_vector(3 downto 0);
        o_mem_to_reg: out std_logic
    );
end entity;

architecture behavioral of control_unit is
begin
    -- write enables and output to muxes for every instruction
    process(all)
    begin
        if (i_inst = "1111") then
            -- no-op (all zeros in)
            o_we_b_reg <= '1'; -- no write to register
            o_we_b_ram <= '1'; -- no write to RAM
            o_alu_src_A <= '1'; -- set A to zero
            o_alu_src_B <= '1'; -- set B to immediate (which will be zero)
            o_mem_to_reg <= '0'; -- bypass data memory (don't care)
        elsif (i_inst = "1100") then
            -- load immediate
            o_we_b_reg <= '0'; -- write to register
            o_we_b_ram <= '1'; -- no write to RAM
            o_alu_src_A <= '1'; -- set A to zero
            o_alu_src_B <= '1'; -- set B to immediate value
            o_mem_to_reg <= '0'; -- bypass data memory (don't care)
        elsif (i_inst = "1001") then
            -- store
            o_we_b_reg <= '1'; -- no write to register
            o_we_b_ram <= '0'; -- write to RAM
            o_alu_src_A <= '0'; -- set A to register 1 value
            o_alu_src_B <= '1'; -- set B to immediate (which will be zero)
            o_mem_to_reg <= '0'; -- bypass data memory (don't care)
        elsif (i_inst = "1000") then
            -- load
            o_we_b_reg <= '0'; -- write to register
            o_we_b_ram <= '1'; -- no write to RAM
            o_alu_src_A <= '0'; -- set A to register 1 value
            o_alu_src_B <= '1'; -- set B to immediate (which will be zero)
            o_mem_to_reg <= '1'; -- read from data memory
        elsif (i_inst = "0110") then
            -- set if less-than (disable register write)
            o_we_b_reg <= '1'; -- no write to register
            o_we_b_ram <= '1'; -- no write to RAM
            o_alu_src_A <= '0'; -- set A to register 1 value
            o_alu_src_B <= '0'; -- set B to register 2 value
            o_mem_to_reg <= '0'; -- bypass data memory (don't care)
        else
            -- default to arithmetic mode for all other instructions
            o_we_b_reg <= '0'; -- write to register
            o_we_b_ram <= '1'; -- no write to RAM
            o_alu_src_A <= '0'; -- set A to register 1 value
            o_alu_src_B <= '0'; -- set B to register 2 value
            o_mem_to_reg <= '0'; -- bypass data memory (writeback)
        end if;
    end process;
    
    -- ALU instruction directly passes through
    o_alu_ctl <= i_inst;
end architecture;
