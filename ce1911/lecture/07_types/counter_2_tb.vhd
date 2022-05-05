-- std_logic and std_logic_vectors only go so far in the way of doing HDL stuff. For more complex
-- applications, we need some new data types.

-- Just like C and c++, VHDL has a bunch of data types, not the least of which are the SIGNED and
-- UNSIGNED integer types that can be used in arithmetic operations. BUT there are some differences.
-- std_logic_vector, signed, and unsigned are all vectors, meaning you can typecast between them,
-- but the "integer" type is NOT. One can technically do foo <= std_logic_vector(boo) if boo is a
-- signed or unsigned value, but the same would not work with integer.

-- Thankfully, VHDL also has functions, and the IEEE library includes the functions to_integer() and
-- to_signed() for converting stuff back and forth.

-- Remember through all of this that putting "signed" or "unsigned" or anything other than std_logic
-- or std_logic_vector is garbage VHDL. PORTS ARE WIRES, and cannot be ANYTHING ELSE, so don't try
-- to act as though they are.

-- Today, we'll put some of this into practice by making a new counter implementation. LET'S ROCK:

-------------------
-- counter_2.vhd
-- 3/21/22		orb
-- practice with counters
-------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;		-- bring in the number support

entity counter_2_tb is
	-- no entry
end entity;

architecture behavioral of counter_2_tb is
	
	component counter_2 is
		port
		(
			i_rstb: in std_logic;
			i_clk: in std_logic;
			o_cnt1: out std_logic_vector(7 downto 0);
			o_cnt2: out std_logic_vector(7 downto 0);
			o_cnt3: out std_logic_vector(7 downto 0)
		);
	end component;
	
	signal CLK: std_logic;
	signal RSTB: std_logic;
	signal CNT1: std_logic_vector(7 downto 0);
	signal CNT2: std_logic_vector(7 downto 0);
	signal CNT3: std_logic_vector(7 downto 0);
	
	constant PER: time := 20 ns;
	
	begin
		clock: process
			begin
				-- initialize
				CLK <= '0';
				
				-- infinite l00p
				loop
					wait for PER/2;
					CLK <= not CLK;
				end loop;
		end process;
		
		reset: process
			begin
				-- initialize
				RSTB <= '0';
				
				wait for PER * 2;
				
				RSTB <= '1';
				
				-- wait forever
				wait;
		end process;
		
		dut: counter_2
			port map
			(
				i_clk => CLK,
				i_rstb => RSTB,
				o_cnt1 => CNT1,
				o_cnt2 => CNT2,
				o_cnt3 => CNT3
			);

end architecture;
