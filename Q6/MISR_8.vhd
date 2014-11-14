library IEEE;
use IEEE.std_logic_1164.all;

entity MISR_8 is
	port(	CLOCK_50	:	in	 std_logic;
			Z		:	in	 std_logic_vector(1 to 8);
			Q		:	out std_logic_vector(1 to 8)
		  );
end MISR_8;

architecture behavior of MISR_8 is

signal OUTD1 : std_logic := '0'; 
signal OUTD2 : std_logic := '0'; 
signal OUTD3 : std_logic := '0'; 
signal OUTD4 : std_logic := '0'; 
signal OUTD5 : std_logic := '0'; 
signal OUTD6 : std_logic := '0';  
signal OUTD7 : std_logic := '0'; 
signal OUTD8 : std_logic := '0'; 

signal Qint : std_logic_vector(1 to 8) := (others => '0');

component Reg
	port(	clk : in  std_logic;
			D	 :	in  std_logic;
			Q	 :	out std_logic			
		  );
end component;

begin

	R1: Reg port map (CLOCK_50, OUTD1, Qint(1) );
	R2: Reg port map (CLOCK_50, OUTD2, Qint(2) );
	R3: Reg port map (CLOCK_50, OUTD3, Qint(3) );
	R4: Reg port map (CLOCK_50, OUTD4, Qint(4) );
	R5: Reg port map (CLOCK_50, OUTD5, Qint(5) );
	R6: Reg port map (CLOCK_50, OUTD6, Qint(6) );
	R7: Reg port map (CLOCK_50, OUTD7, Qint(7) );
	R8: Reg port map (CLOCK_50, OUTD8, Qint(8) );
	
	OUTD1 <= ( Z(1) XOR Qint(8) XOR Qint(1) );
	OUTD2 <= ( Z(2) XOR Qint(1) );
	OUTD3 <= ( Z(3) XOR Qint(2) );
	OUTD4 <= ( Z(4) XOR Qint(3) );
	OUTD5 <= ( Z(5) XOR Qint(4) );
	OUTD6 <= ( Z(6) XOR Qint(5) );
	OUTD7 <= ( Z(7) XOR Qint(6) );
	OUTD8 <= ( Z(8) XOR Qint(7) );
	

	Q <= Qint;

end behavior;