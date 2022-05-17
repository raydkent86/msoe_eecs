----------------------------------------
-- created 05/10/2022
-- Owen Bailey - CE 1911 011
-- Dr. Johnson
-- alu8_1911_tb.vhdl
-- rev 0
----------------------------------------
--
-- Lab 9 (Project)
-- Arithmetic Logic Unit Testbench
-- Testbench for single-cycle processor
-- eight-bit ALU
-- Brute force approach
--
----------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu8_1911_tb is
	-- no entry - testbench
end entity;

architecture testbench of alu8_1911_tb is
	signal A: unsigned(7 downto 0);
    signal B: unsigned(7 downto 0);
	signal SEL: unsigned(3 downto 0);

    signal SET: std_logic;
    signal RES: std_logic_vector(7 downto 0);

	constant PER:	time	:= 20 ns;
	
	--------------------------------
	-- Component prototype
	---------------------------------
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
	-----------------------------------
	
begin
	
	------------------------------------
	-- Device under test (DUT)
	------------------------------------
	DUT: alu8_1911
	port map
	(
        i_a => std_logic_vector(A),
        i_b => std_logic_vector(B),
        i_sel => std_logic_vector(SEL),

        o_set => SET,
        o_res => RES
    );

	-------------------------------------
	-- Test processes
	-------------------------------------

    -- no clock process (ALU is asynchronous)
	
	-- no reset process
	
	-- Run Process
	run: process
	begin
        -- initialize inputs to zero
        SEL <= "0000";
        A <= 8X"00";
        B <= 8X"00";
        wait for PER * 4;
        
        -- test each operation with three sets of values each
        -- all possible inputs evaluated, therefore values of SEL without
        -- encoding will result in no-op
        for I in 0 to 15 loop
            for J in 0 to 2 loop
                -- repeating quasi-random values for each operation
                A <= A + 8X"CC";
                B <= B - 8X"87";
                wait for PER * 2;
            end loop;
            -- values temporarily reset to establish consistency
            A <= 8X"00";
            B <= 8X"00";
            SEL <= SEL + "0001"; -- increment SEL
            wait for PER * 2;
        end loop;
	end process;
	
	------------------------------------------
	-- End test processes
	------------------------------------------
	
end architecture;
