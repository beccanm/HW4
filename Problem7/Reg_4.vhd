library ieee;
use ieee.std_logic_1164.all;

entity Reg_4 is
generic ( n : integer := 4);
port( clk: in std_logic; 
      d_in: in std_logic_vector(n-1 downto 0); 
      d_out: out std_logic_vector(n-1 downto 0) );
end Reg_4;

architecture behavioral of Reg_4 is
begin
process(clk)
begin
if (clk'event and clk = '1') then 
 d_out <= d_in; 
end if;

end process; 
end behavioral; 