library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

entity P2 is
  port (

Clock : in std_logic; 
 A : in std_logic_vector(2 downto 0);
 B : in std_logic_vector(2 downto 0);
 C,D : out  std_logic_vector(2 downto 0);
 C0,Ad,Sh : in  std_logic;
 C1,Ad1,Sh1 : in  std_logic
  
   );
end P2;

architecture structural of P2  is

signal Dint : std_logic_vector(2 downto 0);

--signal A : std_logic_vector(2 downto 0);
--signal B : std_logic_vector(2 downto 0);
--signal C : std_logic_vector(2 downto 0);
--signal C0,Ad,Sh : std_logic := '0'; 

begin

D<=Dint;

--A <= SW(5 downto 3); 
--B <= SW(8 downto 6); 
--LEDG(2 downto 0) <= C; 
--C0 <= SW(9);
--Ad <= SW(10);
--Sh <= SW(11);

--process(CLOCK)
--begin

--if(CLOCK'event and CLOCK = '0') then
--
----	if C0 = '1' then C <= not A;    end if; 
----	if Ad = '1' then C <= A + B;    end if; 
---- if Sh = '1' then C <= C sra 1;  end if; 
--
--	  
--	if Sh = '1' then C <= C sra 1; 
--   elsif Ad = '1' then C <= A + B;   
--   elsif C0 = '1' then C <= not A;  
--	end if;
--
--end if;
--
--end process; 
Dint <= Dint sra 1;



--process(CLOCK)
--begin
--
--if(CLOCK'event and CLOCK = '0') then
--
--	--if C1 = '1' then D <= not A;    end if; 
----	if Ad1 = '1' then D <= A + B;    end if; 
--  if  Sh1 = '1' then D <= D sra 1;  end if; 
--
--end if;
--
--end process; 





END structural;







