----------------------------------------
-- created 05/11/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- proc.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Single-Cycle Processor
-- Full implementation of a single-cycle
-- processor, sans floating-point unit
--
----------------------------------------
--
-- Inputs:  i_clk, i_rstb, i_start,
--          i_len, i_start_loc
-- Outputs: o_set, o_regA_data,
--          o_regB_data, o_regC_data,
--          o_regD_data, o_done
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity proc is
    port
    (
        i_clk: in std_logic;
        i_rstb: in std_logic;
        i_start: in std_logic;
        i_len: in std_logic_vector(4 downto 0);
        i_start_loc: in std_logic_vector(2 downto 0);

        o_set: out std_logic;
        o_done: out std_logic;
        o_regA_data: out std_logic_vector(7 downto 0);
        o_regB_data: out std_logic_vector(7 downto 0);
        o_regC_data: out std_logic_vector(7 downto 0);
        o_regD_data: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of proc is
    -- internal signal declarations
    signal INST_ADDR: std_logic_vector(7 downto 0); -- ROM address
    signal INSTR: std_logic_vector(15 downto 0); -- instruction
    signal WE_B_REG: std_logic; -- write-enable for register
    signal WE_B_RAM: std_logic; -- write-enable for RAM
    signal ALU_SRC_A: std_logic; -- selector for ALU source A mux
    signal ALU_SRC_B: std_logic; -- selector for ALU source B mux
    signal ALU_CTL: std_logic_vector(3 downto 0); -- ALU instruction
    signal MEM_TO_REG: std_logic; -- selector for memory-to-register mux

    signal RD1: std_logic_vector(7 downto 0); -- register 1 data
    signal RD2: std_logic_vector(7 downto 0); -- register 2 data
    signal IMM_EXT: std_logic_vector(7 downto 0); -- 8-bit sign extension of immediate

    signal IN_A: std_logic_vector(7 downto 0); -- ALU input 1
    signal IN_B: std_logic_vector(7 downto 0); -- ALU input 2
    signal ALU_OUT: std_logic_vector(7 downto 0); -- ALU output

    signal MEM_OUT: std_logic_vector(7 downto 0); -- RAM output
    signal D_WRITE: std_logic_vector(7 downto 0); -- data to write register

    -- component prototypes
    -- sequence selector
    component seq_sel_fsm is
    port
    (
        i_clk: in std_logic;
        i_rstb: in std_logic;
        i_start: in std_logic;
        i_start_address: in std_logic_vector(2 downto 0);
        i_len: in std_logic_vector(4 downto 0);

        o_addr: out std_logic_vector(7 downto 0);
        o_done: out std_logic
    );
    end component;

    -- instruction memory (ROM)
    component rom_256x16_inferred is
    port
    (
        i_addr: in std_logic_vector(7 downto 0);

        o_data: out std_logic_vector(15 downto 0)
    );
    end component;

    -- control unit
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

    -- register file
    component reg_file_4x8b is
    port
    (
        i_clk:      in std_logic;
        i_we_b:     in std_logic;
        i_addr1:   in std_logic_vector(1 downto 0);
        i_addr2:   in std_logic_vector(1 downto 0);
        i_addr_W:   in std_logic_vector(1 downto 0);
        i_data_W:   in std_logic_vector(7 downto 0);

        o_data1:   out std_logic_vector(7 downto 0);
        o_data2:   out std_logic_vector(7 downto 0);

        o_regA_data: out std_logic_vector(7 downto 0);
        o_regB_data: out std_logic_vector(7 downto 0);
        o_regC_data: out std_logic_vector(7 downto 0);
        o_regD_data: out std_logic_vector(7 downto 0)
    );
    end component;

    -- arithmetic logic unit
    component alu8_1911 is
    port
	 (
        i_a:    in std_logic_vector(7 downto 0);
        i_b:    in std_logic_vector(7 downto 0);
        i_sel:  in std_logic_vector(3 downto 0);

        o_set:  out std_logic;
        o_res:  out std_logic_vector(7 downto 0)
    );
    end component;

    -- data memory (RAM)
    component ram_256x8_inferred is
	port
	(
		i_clk: 			in std_logic;
		i_web:		    in std_logic; -- write-enable-not
		i_addr:		    in std_logic_vector(7 downto 0); -- address
		i_data_in:	    in std_logic_vector(7 downto 0); -- data in
		
		o_data_out:	    out std_logic_vector(7 downto 0) -- data out
	);
    end component;
begin
    -- component instantiations
    SEQ_SEL: seq_sel_fsm
    port map
    (
        i_clk => i_clk,
        i_rstb => i_rstb,
        i_start => i_start,
        i_start_address => i_start_loc,
        i_len => i_len,

        o_addr => INST_ADDR,
        o_done => o_done
    );

    INST_MEM: rom_256x16_inferred
    port map
    (
        i_addr => INST_ADDR,

        o_data => INSTR
    );

    CTRL: control_unit
    port map
    (
        i_inst => INSTR(15 downto 12),

        o_we_b_reg => WE_B_REG,
        o_we_b_ram => WE_B_RAM,
        o_alu_src_A => ALU_SRC_A,
        o_alu_src_B => ALU_SRC_B,
        o_alu_ctl => ALU_CTL,
        o_mem_to_reg => MEM_TO_REG
    );

    REG_FILE: reg_file_4x8b
    port map
    (
        i_clk => i_clk,
        i_we_b => WE_B_REG,
        i_addr1 => INSTR(11 downto 10),
        i_addr2 => INSTR(9 downto 8),
        i_addr_W => INSTR(7 downto 6),
        i_data_W => D_WRITE,

        o_data1 => RD1,
        o_data2 => RD2,

        o_regA_data => o_regA_data,
        o_regB_data => o_regB_data,
        o_regC_data => o_regC_data,
        o_regD_data => o_regD_data
    );

    ALU_PROC: alu8_1911
    port map
	 (
        i_a => IN_A,
        i_b => IN_B,
        i_sel => ALU_CTL,

        o_set => o_set,
        o_res => ALU_OUT
    );

    DATA_MEM: ram_256x8_inferred
	port map
	(
		i_clk => i_clk,
		i_web => WE_B_RAM,
		i_addr => ALU_OUT,
		i_data_in => RD2,
		
		o_data_out => MEM_OUT
    );

    -- muxes
    -- ALU input A
    with ALU_SRC_A select
        IN_A <= RD1 when '0',
                8X"00" when others;

    -- ALU input B and sign-extend
    with ALU_SRC_B select
        IN_B <= RD2 when '0',
                INSTR(5) & INSTR(5) & INSTR(5 downto 0) when others;

    -- memory bypass
    with MEM_TO_REG select
        D_WRITE <= ALU_OUT when '0',
        MEM_OUT when others;

end architecture;
