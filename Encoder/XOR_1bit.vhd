LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity XOR_1bit is
	PORT (a,b: IN STD_LOGIC;
			o: OUT STD_LOGIC);
end XOR_1bit;

architecture bool_func of XOR_1bit is

begin
	o <= a xor b after 2ns;

end bool_func;