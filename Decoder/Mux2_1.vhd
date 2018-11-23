LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Mux2_1 is
	PORT (a,b: IN STD_LOGIC;
			sel: IN STD_LOGIC;
			o : OUT STD_LOGIC);
end Mux2_1;

architecture Behavioral of Mux2_1 is

begin
	o <= (a and not sel) or (b and sel);
end Behavioral;