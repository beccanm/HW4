library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

entity MISR is
  port (   
  
    CLOCK_50 	: in std_logic;  -- 50 MHz
	 Z: in std_logic_vector(7 downto 0);
	 Q_OUT: out std_logic_vector(7 downto 0)
	 
    );
  
end MISR;

architecture schematic of MISR is


COMPONENT DFF1 is
    Port ( CLK : in std_logic;
			  D   : in std_logic;
           Q   : out std_logic;
           QN  : out std_logic
			  ); 
END COMPONENT;


signal d0_int : std_logic := '0';
signal d1_int : std_logic := '0';
signal d2_int : std_logic := '0';
signal d3_int : std_logic := '0';
signal d4_int : std_logic := '0';
signal d5_int : std_logic := '0';
signal d6_int : std_logic := '0';
signal d7_int : std_logic := '0';

signal q0_int : std_logic := '0';
signal q1_int : std_logic := '0';
signal q2_int : std_logic := '0';
signal q3_int : std_logic := '0';
signal q4_int : std_logic := '0';
signal q5_int : std_logic := '0';
signal q6_int : std_logic := '0';
signal q7_int : std_logic := '0';

BEGIN

D0: DFF1 PORT MAP
		(
		 CLK => CLOCK_50,
		 D => d0_int,
		 Q => q0_int,
		 QN => open 
		 );	 
D1: DFF1 PORT MAP
		(
		 CLK => CLOCK_50,
		 D => d1_int,
		 Q => q1_int,
		 QN => open 
		 );
D2: DFF1 PORT MAP
		(
		 CLK => CLOCK_50,
		 D => d2_int,
		 Q => q2_int,
		 QN => open 
		 );
D3: DFF1 PORT MAP
		(
		 CLK => CLOCK_50,
		 D => d3_int,
		 Q => q3_int,
		 QN => open 
		 );
D4: DFF1 PORT MAP
		(
		 CLK => CLOCK_50,
		 D => d4_int,
		 Q => q4_int,
		 QN => open 
		 );	 
D5: DFF1 PORT MAP
		(
		 CLK => CLOCK_50,
		 D => d5_int,
		 Q => q5_int,
		 QN => open 
		 );
D6: DFF1 PORT MAP
		(
		 CLK => CLOCK_50,
		 D => d6_int,
		 Q => q6_int,
		 QN => open 
		 );
D7: DFF1 PORT MAP
		(
		 CLK => CLOCK_50,
		 D => d7_int,
		 Q => q7_int,
		 QN => open 
		 );
	
	  d0_int <= q0_int xor q7_int  xor  Z(0);
	  d1_int <= Z(1) xor q0_int;
	  d2_int <= Z(2) xor q1_int;
	  d3_int <= Z(3) xor q2_int;
	  d4_int <= Z(4) xor q3_int;
	  d5_int <= Z(5) xor q4_int;
	  d6_int <= Z(6) xor q5_int;
	  d7_int <= Z(7) xor q6_int;
	 
 	  Q_OUT(0) <= q0_int;
	  Q_OUT(1) <= q1_int;
	  Q_OUT(2) <= q2_int;
	  Q_OUT(3) <= q3_int;
	  Q_OUT(4) <= q4_int;
	  Q_OUT(5) <= q5_int;
	  Q_OUT(6) <= q6_int;
	  Q_OUT(7) <= q7_int;
	
END schematic;

