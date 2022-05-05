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
-- counter_n.vhd
-- 3/21/22		orb
-- practice with n-bit counters
-------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;		-- bring in the number support

entity counter_n is
	generic
	(
		N: positive := 12
	);
	port
	(
		i_rstb: in std_logic;
		i_clk: in std_logic;
		o_cnt1: out std_logic_vector((N - 1) downto 0);
		o_cnt2: out std_logic_vector((N - 1) downto 0);
		o_cnt3: out std_logic_vector((N - 1) downto 0)
	);
end entity;

architecture behavioral of counter_n is
	signal cnt_sig1: unsigned((N - 1) downto 0); -- integral value
	signal cnt_sig2: unsigned((N - 1) downto 0);
	signal cnt_sig3: signed((N - 1) downto 0);	-- for shits and giggles
	
	begin
		up_cnt: process(i_clk, i_rstb)
		begin
			-- asynchronous section
			if(i_rstb = '0') then
				cnt_sig1 <= to_unsigned(12, N);
			-- synchronous section
			elsif(rising_edge(i_clk)) then
				cnt_sig1 <= cnt_sig1 + 1;		-- you can't do this with a std_logic_vector, but this operator IS defined for signed/unsigned (w007!)
			end if;
		end process;
		
		dn_cnt: process(i_clk, i_rstb)
		begin
			-- asynchronous section
			if(i_rstb = '0') then
				cnt_sig2 <= to_unsigned(7, N);
			-- synchronous section
			elsif(rising_edge(i_clk)) then
				cnt_sig2 <= cnt_sig2 - 1;		-- same deal; just like in C
			end if;
		end process;
		
		weird_cnt: process(i_clk, i_rstb)
		begin
			-- asynchronous section
			if(i_rstb = '0') then
				cnt_sig3 <= to_signed(0, N);
			-- synchronous section
			elsif(rising_edge(i_clk)) then
				cnt_sig3 <= cnt_sig3 + signed(cnt_sig1);		-- Schuppid (TM)
			end if;
		end process;
		
		-- output section
		o_cnt1 <= std_logic_vector(cnt_sig1);
		o_cnt2 <= std_logic_vector(cnt_sig2);
		o_cnt3 <= std_logic_vector(cnt_sig3);

end architecture;
