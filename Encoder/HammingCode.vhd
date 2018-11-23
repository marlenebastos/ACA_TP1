LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity HammingCode is
	PORT (m: IN STD_LOGIC_VECTOR(10 downto 0);
			x: OUT STD_LOGIC_VECTOR(14 downto 0));
end HammingCode;

architecture Structural of HammingCode is

	component XOR_1bit is
		PORT (a,b: IN STD_LOGIC;
				o: OUT STD_LOGIC);
	end component;

	signal m1_m2,m3_m4,redT:std_logic;
	
	signal m5_m6,m8_m9,m1_m11,m5_m6_m7,m8_m9_m10:std_logic;
	signal m8_m9_m2,m1_m11_m5_m6,m3_m5,m7_m8,m10_m1_m11,m3_m5_m7_m8: std_logic;
begin
	x(14 downto 4) <= m;
	
	m1_m2Bit: XOR_1bit PORT MAP(m(10),m(9),m1_m2);
	m3_m4Bit: XOR_1bit PORT MAP(m(8),m(7),m3_m4);
	
	m1_m2_m3_m4Bit: XOR_1bit PORT MAP(m1_m2,m3_m4,redT);
	
	m5_m6Bit: XOR_1bit PORT MAP(m(6),m(5),m5_m6);
	
		
	m5_m6_m7Bit: XOR_1bit PORT MAP(m(4),m5_m6,m5_m6_m7);
	
	m8_m9_m2Bit: XOR_1bit PORT MAP(m(9),m8_m9,m8_m9_m2);
	
	m8_m9Bit: XOR_1bit PORT MAP(m(3),m(2),m8_m9);
	
	m1_m11Bit: XOR_1bit PORT MAP(m(10),m(0),m1_m11);
	
	m8_m9_m10Bit: XOR_1bit PORT MAP(m(1),m8_m9,m8_m9_m10);
	
		
	
	m1_m11_m5_m6Bit: XOR_1bit PORT MAP(m1_m11,m5_m6,m1_m11_m5_m6);
	
	m3_m5Bit: XOR_1bit PORT MAP(m(8),m(6),m3_m5);
	m7_m8Bit: XOR_1bit PORT MAP(m(4),m(3),m7_m8);
	
	m10_m1_m11Bit: XOR_1bit PORT MAP(m1_m11,m(1),m10_m1_m11);
	m3_m5_m7_m8Bit: XOR_1bit PORT MAP(m7_m8,m3_m5,m3_m5_m7_m8);
	
	p1: XOR_1bit PORT MAP(redT,m5_m6_m7,x(3));
	p2: XOR_1bit PORT MAP(redT,m8_m9_m10,x(2));
	p3: XOR_1bit PORT MAP(m8_m9_m2,m1_m11_m5_m6,x(1));
	p4: XOR_1bit PORT MAP(m10_m1_m11,m3_m5_m7_m8,x(0));

end Structural;