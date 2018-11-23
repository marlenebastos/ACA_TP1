LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity AND_2 is
	PORT (a,b: IN STD_LOGIC;
			o : OUT STD_LOGIC);
end AND_2;

architecture Behavioral of AND_2 is

begin
	o <= a and b;
end Behavioral;




LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity AND_4 is
	PORT (a,b,c,d: IN STD_LOGIC;
			o : OUT STD_LOGIC);
end AND_4;

architecture Behavioral of AND_4 is
component AND_2 is
	PORT (a,b: IN STD_LOGIC;
			o : OUT STD_LOGIC);
end component;
signal s_and1,s_and2: std_logic;
begin
	and1Bit: AND_2 PORT MAP(a,b,s_and1);
	and2Bit: AND_2 PORT MAP(c,d,s_and2);
	
	andFinal: AND_2 PORT MAP(s_and1,s_and2,o);
	
end Behavioral;