library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

entity DFF1 is
    Port ( CLK : in std_logic;
			  D : in std_logic;
           Q : out std_logic;
           QN : out std_logic
			  );
end DFF1;


architecture Behavioral of DFF1 is
begin
            process (CLK)
            begin
                        if CLK = '1' then
                        Q <= D;
                        QN <= NOT D;
                        end if;
            end process;
end Behavioral;

