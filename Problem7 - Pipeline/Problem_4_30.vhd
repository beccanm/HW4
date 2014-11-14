library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity Problem_4_30 is
  port(CLOCK_50: in std_logic;
       X: in std_logic_vector(3 downto 0); 
       Y: in std_logic_vector(3 downto 0);
       P: out std_logic_vector(7 downto 0)
		 );
end Problem_4_30;

architecture Behavioral of Problem_4_30 is
signal C1, C2, C3: std_logic_vector(3 downto 0);
signal S1, S2, S3: std_logic_vector(3 downto 0);
signal XY0, XY1, XY2, XY3: std_logic_vector(3 downto 0);

signal Xin_REG: std_logic_vector(3 downto 0);
signal Yin_REG: std_logic_vector(3 downto 0);
signal P_REG: std_logic_vector(7 downto 0);

-- Signals for P0
signal P0_0 : std_logic := '0';
signal P0_1 : std_logic := '0';


-- Signals for P1
signal S10_0 : std_logic := '0';
signal S10_1 : std_logic := '0';

-- Signals for P2
signal S11_0 : std_logic := '0';
signal X0Y2_0 : std_logic := '0';
signal S20_1 : std_logic := '0';

-- Signals for P3
signal S12_0 : std_logic := '0';
signal X1Y2_0 : std_logic := '0';
signal S21_1 : std_logic := '0';
signal X0Y3_0 : std_logic := '0';
signal X0Y3_1 : std_logic := '0';

-- Signals for P4
signal S13_0 : std_logic := '0';
signal X2Y2_0 : std_logic := '0';
signal S22_1 : std_logic := '0';
signal X1Y3_0 : std_logic := '0';
signal X1Y3_1 : std_logic := '0';

-- Signals for P5
signal C13_0 : std_logic := '0';
signal X3Y2_0 : std_logic := '0';
signal S23_1 : std_logic := '0';
signal X2Y3_0 : std_logic := '0';
signal X2Y3_1 : std_logic := '0';

-- Signals for P6/7
signal C23_1 : std_logic := '0';
signal X3Y3_0 : std_logic := '0';
signal X3Y3_1 : std_logic := '0';


component DFF1
	Port ( CLK : in  std_logic;
			 D   : in  std_logic;
          Q   : out std_logic;
          QN  : out std_logic
			  );
end component;

component FullAdder
  port(X     : in std_logic; 
       Y     : in std_logic; 
		 Cin   : in std_logic;
       Cout  : out std_logic; 
		 Sum   : out std_logic
		 );
end component;

component HalfAdder
  port(X     : in std_logic; 
       Y     : in std_logic;
       Cout  : out std_logic; 
		 Sum   : out std_logic
		 );
end component;

component Reg_8 is
generic ( n : integer := 8);
port( clk: in std_logic; 
      d_in: in std_logic_vector(n-1 downto 0); 
      d_out: out std_logic_vector(n-1 downto 0) 
		);
end component;

component Reg_4 is
generic ( n : integer := 4);
port( clk: in std_logic; 
      d_in: in std_logic_vector(n-1 downto 0); 
      d_out: out std_logic_vector(n-1 downto 0) 
		);
end component;

begin
  
  -- INPUT REGISTERS 
  
  Reg_Xin : Reg_4 port map (
  clk   =>  CLOCK_50,
  d_in  => X,
  d_out =>  Xin_REG
  );
  
  Reg_Yin : Reg_4 port map (
  clk   =>  CLOCK_50,
  d_in  =>  Y,
  d_out =>  Yin_REG
  );
  
  
  Reg_Product_Out :  Reg_8 port map (
  clk   => CLOCK_50,
  d_in  => P_REG,
  d_out => P
 );
  
  -- outputs of AND gates
  XY0(0) <= Xin_REG(0) and Yin_REG(0);   -- AND GATE 0
  XY1(0) <= Xin_REG(0) and Yin_REG(1);   -- AND GATE 1
  XY0(1) <= Xin_REG(1) and Yin_REG(0);   -- AND GATE 2
  XY1(1) <= Xin_REG(1) and Yin_REG(1);   -- AND GATE 3
  XY0(2) <= Xin_REG(2) and Yin_REG(0);   -- AND GATE 4
  XY1(2) <= Xin_REG(2) and Yin_REG(1);   -- AND GATE 5
  XY0(3) <= Xin_REG(3) and Yin_REG(0);   -- AND GATE 6
  XY1(3) <= Xin_REG(3) and Yin_REG(1);   -- AND GATE 7
  XY2(0) <= Xin_REG(0) and Yin_REG(2);   -- AND GATE 8
  XY3(0) <= Xin_REG(0) and Yin_REG(3);   -- AND GATE 9
  XY2(1) <= Xin_REG(1) and Yin_REG(2);   -- AND GATE 10
  XY3(1) <= Xin_REG(1) and Yin_REG(3);   -- AND GATE 11
  XY2(2) <= Xin_REG(2) and Yin_REG(2);   -- AND GATE 12
  XY3(2) <= Xin_REG(2) and Yin_REG(3);   -- AND GATE 13
  XY2(3) <= Xin_REG(3) and Yin_REG(2);   -- AND GATE 14
  XY3(3) <= Xin_REG(3) and Yin_REG(3);   -- AND GATE 15
  

 -- Pipeline for P0
 DFF1_P0_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => XY0(0),
   Q  => P0_0,
   QN => open
	);
	
 DFF1_P0_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => P0_0,
   Q  => P0_1,
   QN => open
	);
	
 P_REG(0) <= P0_1;
	
 -- Pipeline for P1
 HA1: HalfAdder port map (
	X    => XY0(1),
	Y    => XY1(0),
	Cout => C1(0),
	Sum  => S1(0)
	);

  DFF1_HA1_S10_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => S1(0),
   Q  => S10_0,
   QN => open
	);
 
  DFF1_HA1_S10_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => S10_0,
   Q  => S10_1,
   QN => open
	);
 
 P_REG(1) <= S10_1;
 
 -- Pipeline for P2
 FA1: FullAdder port map(
  X    => XY0(2), 
  Y    => XY1(1),
  Cin  => C1(0),
  Cout => C1(1),
  Sum  => S1(1)
  );
  
  DFF1_FA1_S11_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => S1(1),
   Q  => S11_0,
   QN => open
	);
  
  DFF1_X0Y2_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => XY2(0),
   Q  => X0Y2_0,
   QN => open
	);
	
 HA3: HalfAdder port map (
	X    => S11_0,
	Y    => X0Y2_0,
	Cout => C2(0),
	Sum  => S2(0)
	);
	
 DFF1_HA3_S20_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => S2(0),
   Q  => S20_1,
   QN => open
	);
	
 P_REG(2) <= S20_1;
 
 -- Pipeline for P3
 FA2: FullAdder port map(
	X    => XY0(3),
	Y    => XY1(2),
	Cin  =>  C1(1),
	Cout =>  C1(2),
	Sum  => S1(2)
	);
 
 DFF1_FA2_S12_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => S1(2),
   Q  => S12_0,
   QN => open
	);
	
 DFF1_X1Y2_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => XY2(1),
   Q  => X1Y2_0,
   QN => open
	);
	
 FA3: FullAdder port map(
	X    => S12_0, 
	Y    => X1Y2_0,
	Cin  => C2(0),
	Cout => C2(1),
	Sum  => S2(1)
	);
 
 DFF1_FA3_S21_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => S2(1),
   Q  => S21_1,
   QN => open
	);
	
 DFF1_X0Y3_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => XY3(0),
   Q  => X0Y3_0,
   QN => open
	);
	
 DFF1_X0Y3_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => X0Y3_0,
   Q  => X0Y3_1,
   QN => open
	);
	
 HA4: HalfAdder port map (
	X    => S21_1,
	Y    => X0Y3_1, 
	Cout => C3(0),
	Sum  => S3(0)
	);

P_REG(3) <= S3(0);

 -- Pipeline for P4
 HA2: HalfAdder port map (
	X    => XY1(3),
	Y    => C1(2),
	Cout => C1(3),
	Sum  => S1(3)
	);
	
 DFF1_HA2_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => S1(3),
   Q  => S13_0,
   QN => open
	);
	
 DFF1_X2Y2_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => XY2(2),
   Q  => X2Y2_0,
   QN => open
	);
	
 FA4: FullAdder port map ( 
	X    => S13_0,
	Y    => X2Y2_0,
	Cin  => C2(1),
	Cout => C2(2),
	Sum  => S2(2)
	); 
	
 DFF1_FA4_S22_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => S2(2),
   Q  => S22_1,
   QN => open
	);
	
 DFF1_X1Y3_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => XY3(1),
   Q  => X1Y3_0,
   QN => open
	);
 
 DFF1_X1Y3_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => X1Y3_0,
   Q  => X1Y3_1,
   QN => open
	);
	
 FA6: FullAdder port map ( 
	X    => S22_1,
	Y    => X1Y3_1,
	Cin  => C3(0),
	Cout => C3(1),
	Sum  => S3(1)
	); 
	
 P_REG(4) <= S3(1);
 
 
 -- Pipeline for P5
 DFF1_C13_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => C1(3),
   Q  => C13_0,
   QN => open
	);
 
 DFF1_X3Y2_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => XY2(3),
   Q  => X3Y2_0,
   QN => open
	);	

 FA5: FullAdder port map ( 
	X    => C13_0,
	Y    => X3Y2_0,
	Cin  => C2(2),
	Cout => C2(3),
	Sum  => S2(3)
	); 
	
 DFF1_FA5_S23_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => S2(3),
   Q  => S23_1,
   QN => open
	);
	
 DFF1_X2Y3_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => XY3(2),
   Q  => X2Y3_0,
   QN => open
	);

 DFF1_X2Y3_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => X2Y3_0,
   Q  => X2Y3_1,
   QN => open
	);		
	
 FA7: FullAdder port map ( 
	X    => S23_1,
	Y    => X2Y3_1,
	Cin  => C3(1),
	Cout => C3(2),
	Sum  => S3(2)
	);

 P_REG(5) <= S3(2);
 
 -- Pipeline for P6/7
 DFF1_C23_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => C2(3),
   Q  => C23_1,
   QN => open
	);
	
 DFF1_X3Y3_0: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => XY3(3),
   Q  => X3Y3_0,
   QN => open
	);
	
 DFF1_X3Y3_1: DFF1 Port map( 
	CLK => CLOCK_50,
	D  => X3Y3_0,
   Q  => X3Y3_1,
   QN => open
	);
	
 FA8: FullAdder port map ( 
	X    => C23_1, 
	Y    => X3Y3_1,
	Cin  => C3(2),
	Cout => C3(3),
	Sum  => S3(3)
	);

 P_REG(6) <= S3(3);
 P_REG(7) <= C3(3);


 --FA1: FullAdder port map (XY0(2), XY1(1), C1(0), C1(1),S1(1));  
 -- FA2: FullAdder port map (XY0(3), XY1(2), C1(1), C1(2), S1(2));
 -- FA3: FullAdder port map (S1(2), XY2(1), C2(0), C2(1), S2(1)); 
--FA4: FullAdder port map (S1(3), XY2(2), C2(1), C2(2), S2(2));
-- FA5: FullAdder port map (C1(3), XY2(3), C2(2), C2(3), S2(3));
-- FA6: FullAdder port map (S2(2), XY3(1), C3(0), C3(1), S3(1));
--FA7: FullAdder port map (S2(3), XY3(2), C3(1), C3(2), S3(2));
--  FA8: FullAdder port map (C2(3), XY3(3), C3(2), C3(3), S3(3));
-- HA1: HalfAdder port map (XY0(1), XY1(0), C1(0), S1(0));
-- HA2: HalfAdder port map (XY1(3), C1(2), C1(3), S1(3));
--HA3: HalfAdder port map (S1(1), XY2(0), C2(0), S2(0));
--HA4: HalfAdder port map (S2(1), XY3(0), C3(0), S3(0));
end Behavioral;