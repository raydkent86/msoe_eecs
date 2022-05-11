----------------------------------------
-- created 05/10/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- seq_sel_fsm.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Sequence Selector
-- FSM for the single-cycle processor
-- program counter and selector
--
----------------------------------------
--
-- Inputs:  i_rstb, i_start,
--          i_start_addr, i_len
-- Outputs: o_inst, o_done
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seq_sel_fsm is
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
end entity;

architecture behavioral of seq_sel_fsm is
    type STATE_TYPE is (READY, RUN, DONE);
    signal state: STATE_TYPE;
    signal state_next: STATE_TYPE;
    signal START_SIG: unsigned(7 downto 0);
    signal LOC_SIG: unsigned(7 downto 0);
begin
    -- next-state logic
    process(all)
    begin
        case state is
            when READY =>
                if (i_start = '1') then
                    state_next <= RUN;
                else
                    state_next <= READY;
                end if;
            when RUN =>
                if (LOC_SIG < (START_SIG + unsigned(i_len) - 2)) then
                    state_next <= RUN;
                else
                    state_next <= DONE;
                end if;
            when DONE =>
                state_next <= DONE;
            when others =>
                -- force reset if timing error
                -- do NOT forget this, as leaving this out will cause latches
                state_next <= READY;
        end case;
    end process;

    -- register logic
    process(i_clk, i_rstb)
    begin
        if (i_rstb = '0') then
            -- reset to ready when RSTB
            state <= READY;
        elsif (rising_edge(i_clk)) then
            -- increase LOC when running
            if (state = READY) then
                START_SIG <= to_unsigned((to_integer(unsigned(i_start_address))) * 32, 8);
                LOC_SIG <= START_SIG;
            elsif (state = RUN) then
                LOC_SIG <= LOC_SIG + 8X"01";
            end if;
            state <= state_next;
        end if;
    end process;

    -- output logic
    process(all)
    begin
        if (state = DONE) then
            o_done <= '1';
        else
            o_done <= '0';
        end if;
        o_addr <= std_logic_vector(LOC_SIG);
    end process;
end architecture;
