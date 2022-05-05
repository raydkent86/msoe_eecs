-- NAME: Owen Bailey
-- COURSE AND SECTION: CE 1901 031
-- FILE: LW10.vhd
-- DESCRIPTION: Top-level structural file implementing 7-segment decoders and control unit along with API-style DE10 pin assignments

library ieee; 
use ieee.std_logic_1164.all; 
 
entity LW10 is  
		port(
			BCLR: in std_logic_vector(3 downto 0); -- behavior/collision/left/right
			
			-- motor directions, motor enables, and beep enable
			RDIR: out std_logic;
			REN: out std_logic;
			LEN: out std_logic;
			LDIR: out std_logic;
			BEEP: out std_logic;
			
			-- decoded seven-segment display outputs
			HEX5: out std_logic_vector(7 downto 0); 
			HEX4: out std_logic_vector(7 downto 0);
			HEX3: out std_logic_vector(7 downto 0);
			HEX2: out std_logic_vector(7 downto 0);
			HEX1: out std_logic_vector(7 downto 0);
			HEX0: out std_logic_vector(7 downto 0)
		);
end entity LW10; 
 
architecture STRUCTURAL of LW10 is  
	-- assign signals to DE10 Lite pins 
	attribute chip_pin : string;

	-- B is toggle switch SW0. C=collision, L=left, R = right
	attribute chip_pin of BCLR : signal is "C10,AB17,AA12,AA17"; 
	attribute chip_pin of RDIR : signal is "AB9"; 
	attribute chip_pin of REN  : signal is "Y10";
	attribute chip_pin of LEN  : signal is "AB8";
	attribute chip_pin of LDIR : signal is "AB7";
	attribute chip_pin of BEEP : signal is "AA11";
	attribute chip_pin of HEX5 : signal is 
		"L19,N20,N19,M20,N18,L18,K20,J20";
	attribute chip_pin of HEX4 : signal is 
		"F17,F20,F19,H19,J18,E19,E20,F18";
	attribute chip_pin of HEX3 : signal is 
		"D22,E17,D19,C20,C19,E21,E22,F21";
	attribute chip_pin of HEX2 : signal is 
		"A19,B22,C22,B21,A21,B19,A20,B20";
	attribute chip_pin of HEX1 : signal is 
		"A16,B17,A18,A17,B16,E18,D18,C18";   
	attribute chip_pin of HEX0 : signal is 
		"D15,C17,D17,E16,C16,C15,E15,C14";

	-- inputs to 7seg decoders
	signal HEX5CTRL: std_logic_vector(5 downto 0); 
	signal HEX4CTRL: std_logic_vector(5 downto 0);
	signal HEX3CTRL: std_logic_vector(5 downto 0);
	signal HEX2CTRL: std_logic_vector(5 downto 0);
	signal HEX1CTRL: std_logic_vector(5 downto 0);
	signal HEX0CTRL: std_logic_vector(5 downto 0);
   
		begin
			-- main controller
			U6: entity work.CONTROLLER  
			port map(
				BCLR => BCLR,  
				RDIR => RDIR, 
				REN => REN, 
				LEN => LEN, 
				LDIR => LDIR,  
				BEEP => BEEP, 
				HEX5CTRL => HEX5CTRL, 
				HEX4CTRL => HEX4CTRL,
				HEX3CTRL => HEX3CTRL,
				HEX2CTRL => HEX2CTRL,
				HEX1CTRL => HEX1CTRL,
				HEX0CTRL => HEX0CTRL
			); 
			
			-- HEX5 decoder
			U5: entity work.SEG7DECODE  
			port map(
				A => HEX5CTRL,  
				SEG => HEX5
			);
			
			-- HEX4 decoder
			U4: entity work.SEG7DECODE  
			port map(
				A => HEX4CTRL,  
				SEG => HEX4
			);
			
			-- HEX3 decoder
			U3: entity work.SEG7DECODE  
			port map(
				A => HEX3CTRL,  
				SEG => HEX3
			);

			-- HEX2 decoder
			U2: entity work.SEG7DECODE  
			port map(
				A => HEX2CTRL,  
				SEG => HEX2
			);
			
			-- HEX1 decoder
			U1: entity work.SEG7DECODE  
			port map(
				A => HEX1CTRL,  
				SEG => HEX1
			);
			
			-- HEX0 decoder
			U0: entity work.SEG7DECODE  
			port map(
				A => HEX0CTRL,  
				SEG => HEX0
			);
            
end architecture STRUCTURAL;
