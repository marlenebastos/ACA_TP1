LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Verify is
	PORT (x: IN STD_LOGIC_VECTOR( 14 downto 0);
			e: IN STD_LOGIC_VECTOR(3 downto 0);
			m: OUT STD_LOGIC_VECTOR(10 downto 0);
			sels: OUT STD_LOGIC_VECTOR(10 downto 0));
end Verify;

architecture Structural of Verify is

component Mux2_1 is
	PORT (a,b: IN STD_LOGIC;
			sel: IN STD_LOGIC;
			o : OUT STD_LOGIC);
end component;

component AND_4 is
	PORT (a,b,c,d: IN STD_LOGIC;
			o : OUT STD_LOGIC);
end component;


signal sel : STD_LOGIC_VECTOR(10 downto 0);

begin

	sel10And:AND_4 PORT MAP(e(3),e(2),e(1),e(0),sel(10));
	sel9And: AND_4 PORT MAP(e(3),e(2),e(1),not e(0),sel(9));
	sel8And: AND_4 PORT MAP(e(3),e(2),not e(1),e(0),sel(8));
	sel7And: AND_4 PORT MAP(e(3),e(2),not e(1), not e(0),sel(7));
	sel6And: AND_4 PORT MAP(e(3),not e(2),e(1),e(0),sel(6));
	sel5And: AND_4 PORT MAP(e(3),not e(2),e(1),not e(0),sel(5));
	sel4And: AND_4 PORT MAP(e(3),not e(2),not e(1),e(0),sel(4));
	sel3And: AND_4 PORT MAP(not e(3),e(2),e(1),e(0),sel(3));
	sel2And: AND_4 PORT MAP(not e(3),e(2),e(1),not e(0),sel(2));
	sel1And: AND_4 PORT MAP(not e(3),e(2),not e(1),e(0),sel(1));
	sel0And: AND_4 PORT MAP(not e(3),not e(2),e(1),e(0),sel(0));
	
	sels <= sel;
	
	mux10out:Mux2_1 PORT MAP(x(14),not x(14),sel(10),m(10));
	mux9out: Mux2_1 PORT MAP(x(13),not x(13),sel(9),m(9));
	mux8out: Mux2_1 PORT MAP(x(12),not x(12),sel(8),m(8));
	mux7out: Mux2_1 PORT MAP(x(11),not x(11),sel(7),m(7));
	mux6out: Mux2_1 PORT MAP(x(10),not x(10),sel(6),m(6));
	mux5out: Mux2_1 PORT MAP(x(9),not x(9),sel(5),m(5));
	mux4out: Mux2_1 PORT MAP(x(8),not x(8),sel(4),m(4));
	mux3out: Mux2_1 PORT MAP(x(7),not x(7),sel(3),m(3));
	mux2out: Mux2_1 PORT MAP(x(6),not x(6),sel(2),m(2));
	mux1out: Mux2_1 PORT MAP(x(5),not x(5),sel(1),m(1));
	mux0out: Mux2_1 PORT MAP(x(4),not x(4),sel(0),m(0));
	
end Structural;

	
	