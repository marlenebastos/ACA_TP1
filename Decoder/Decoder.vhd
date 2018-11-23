LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Decoder is
	PORT (x: IN STD_LOGIC_VECTOR(14 downto 0);
			e: OUT STD_LOGIC_VECTOR(3 downto 0));
end Decoder;

architecture Structural of Decoder is

	component XOR_1bit is
		PORT (a,b: IN STD_LOGIC;
				o: OUT STD_LOGIC);
	end component;

	signal x1_x2,x3_x4,x1_x2_x3_x4:std_logic;
	signal s_e: std_logic_vector(3 downto 0);
	signal x5_x6,x8_x9,x1_x11,x5_x6_x7_x12,x8_x9_x10_x13,x7_x12,x10_x13,x10_x15:std_logic;
	signal x8_x9_x2_x14,x1_x11_x5_x6,x3_x5,x7_x8,x10_x15_x1_x11,x3_x5_x7_x8,x2_x14: std_logic;
begin
	
	x1_x2Bit: XOR_1bit PORT MAP(x(14),x(13),x1_x2);
	x3_x4Bit: XOR_1bit PORT MAP(x(12),x(11),x3_x4);
	
	x1_x2_x3_x4Bit: XOR_1bit PORT MAP(x1_x2,x3_x4,x1_x2_x3_x4);
	
	x5_x6Bit: XOR_1bit PORT MAP(x(10),x(9),x5_x6);
	
	x7_x12Bit: XOR_1bit PORT MAP(x(8),x(3),x7_x12);
		
	x5_x6_x7_x12Bit: XOR_1bit PORT MAP(x7_x12,x5_x6,x5_x6_x7_x12);
	
	
	x8_x9Bit: XOR_1bit PORT MAP(x(7),x(6),x8_x9);
	x2_x14Bit: XOR_1bit PORT MAP(x(13),x(1),x2_x14);
	
	x8_x9_x2_x14Bit: XOR_1bit PORT MAP(x8_x9,x2_x14,x8_x9_x2_x14);
	
	
	
	x1_x11Bit: XOR_1bit PORT MAP(x(14),x(4),x1_x11);
	
	
	x10_x13Bit: XOR_1bit PORT MAP(x(5),x(2),x10_x13);
	
	x8_x9_x10_x13Bit: XOR_1bit PORT MAP(x8_x9,x10_x13,x8_x9_x10_x13);
	
			
	x1_x11_x5_x6Bit: XOR_1bit PORT MAP(x1_x11,x5_x6,x1_x11_x5_x6);
	
	x3_x5Bit: XOR_1bit PORT MAP(x(12),x(10),x3_x5);
	x7_x8Bit: XOR_1bit PORT MAP(x(8),x(7),x7_x8);
	
	x10_x15Bit: XOR_1bit PORT MAP(x(5),x(0),x10_x15);
	
	x10_x15_x1_x11Bit: XOR_1bit PORT MAP(x1_x11,x10_x15,x10_x15_x1_x11);
	x3_x5_x7_x8Bit: XOR_1bit PORT MAP(x7_x8,x3_x5,x3_x5_x7_x8);
	
	p1: XOR_1bit PORT MAP(x1_x2_x3_x4,x5_x6_x7_x12,s_e(3));
	p2: XOR_1bit PORT MAP(x1_x2_x3_x4,x8_x9_x10_x13,s_e(2));
	p3: XOR_1bit PORT MAP(x8_x9_x2_x14,x1_x11_x5_x6,s_e(1));
	p4: XOR_1bit PORT MAP(x10_x15_x1_x11,x3_x5_x7_x8,s_e(0));
	e<=s_e;
end Structural;