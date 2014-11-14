library ieee;
use ieee.std_logic_1164.all;

entity Reg_8 is
generic ( n : integer := 8);
port( clk: in std_logic; 
      d_in: in std_logic_vector(n-1 downto 0); 
      d_out: out std_logic_vector(n-1 downto 0) );
end Reg_8;

architecture behavioral of Reg_8 is
begin
process(clk)
begin
if (clk'event and clk = '1') then 
 d_out <= d_in; 
end if;

end process; 
end behavioral; 