library IEEE;
use IEEE.std_logic_1164.all;

entity Reg is
	port(	clk : in  std_logic;
			D	 :	in  std_logic;
			Q	 :	out std_logic			
		  );
end Reg;


architecture behavior of Reg is

begin

process (clk)
begin
	if (rising_edge(clk)) then
		Q <= D;
	end if;
end process;
end behavior;
