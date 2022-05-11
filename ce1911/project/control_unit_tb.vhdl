----------------------------------------
-- created 05/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- control_unit_tb.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Control Unit Testbench
-- Testbench for single-cycle processor
-- instruction decoder
-- Brute force approach
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity control_unit_tb is
	-- no entry - testbench
end entity;

architecture testbench of control_unit_tb is
    signal INSTR: unsigned(3 downto 0);

    signal WE_B_REG: std_logic;
    signal WE_B_RAM: std_logic;
    signal ALU_SRC_A: std_logic;
    signal ALU_SRC_B: std_logic;
    signal ALU_CTL: std_logic_vector(3 downto 0);
    signal MEM_TO_REG: std_logic;

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
	component control_unit is
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
    end component;
	-----------------------------------
	
begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: control_unit
	port map
	(
        i_inst => std_logic_vector(INSTR),

        o_we_b_reg => WE_B_REG,
        o_we_b_ram => WE_B_RAM,
        o_alu_src_A => ALU_SRC_A,
        o_alu_src_B => ALU_SRC_B,
        o_alu_ctl => ALU_CTL,
        o_mem_to_reg => MEM_TO_REG
    );

	-------------------------------------
	-- Test processes
	-------------------------------------

    -- no clock process (decoder is asynchronous)
	
	-- no reset process
	
	-- Run Process
	run: process
	begin
        -- test each operation
        INSTR <= "0000";
        for I in 0 to 15 loop
            wait for PER * 2;
            INSTR <= INSTR + "0001";
        end loop;
	end process;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
