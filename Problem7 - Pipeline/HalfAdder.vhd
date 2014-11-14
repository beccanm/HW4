library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity HalfAdder is 
  port(X:       in std_logic; 
       Y:       in std_logic;
       Cout:    out std_logic; 
		 Sum:     out std_logic
		 );
end HalfAdder;

architecture equations of HalfAdder is
begin
  Sum <= X xor Y;
  Cout <= X and Y;
end equations;