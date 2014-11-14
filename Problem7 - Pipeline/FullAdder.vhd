library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity FullAdder is 
  port(X : in std_logic; 
       Y : in std_logic; 
		 Cin: in std_logic;
       Cout: out std_logic; 
		 Sum: out std_logic
		 );
end FullAdder;

architecture equations of FullAdder is
begin
  Sum <= X xor Y xor Cin;
  Cout <= (X and Y) or (X and Cin) or (Y and Cin);
end equations;

