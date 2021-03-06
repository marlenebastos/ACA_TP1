LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity HammingDecoder is
	PORT (x: IN STD_LOGIC_VECTOR( 14 downto 0);
			m: OUT STD_LOGIC_VECTOR(10 downto 0);
			error: OUT STD_LOGIC_VECTOR(3 downto 0);
			sels: OUT STD_LOGIC_VECTOR(10 downto 0));
end HammingDecoder;


architecture Structural of HammingDecoder is


component Decoder is
	PORT (x: IN STD_LOGIC_VECTOR(14 downto 0);
			e: OUT STD_LOGIC_VECTOR(3 downto 0));
end component;

component Verify is
	PORT (x: IN STD_LOGIC_VECTOR( 14 downto 0);
			e: IN STD_LOGIC_VECTOR(3 downto 0);
			m: OUT STD_LOGIC_VECTOR(10 downto 0);
			sels: OUT STD_LOGIC_VECTOR(10 downto 0));
end component;


signal err: STD_LOGIC_VECTOR(3 downto 0);
signal sel : STD_LOGIC_VECTOR(10 downto 0);

begin

Decode: Decoder PORT MAP (x,err);
Verifier: Verify PORT MAP(x,err,m,sels);

error <= err;
end Structural;