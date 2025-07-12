
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Somador_Completo_4_bits is
    Port ( A : in  STD_LOGIC_VECTOR(3 downto 0);
           B : in  STD_LOGIC_VECTOR(3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(3 downto 0);
           Cout : out  STD_LOGIC);
end Somador_Completo_4_bits;

architecture Structural of Somador_Completo_4_bits is
	
	--Componentes
	component Somador_1_bit is
    Port ( A 	 : in  STD_LOGIC;
           B 	 : in  STD_LOGIC;
           Cin  : in  STD_LOGIC;
           S 	 : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
	end component;
	
	--Sinal intermediario (  carry entre os bits)
	signal carry_0 : STD_LOGIC;
	signal carry_1 : STD_LOGIC;
	signal carry_2 : STD_LOGIC;

begin

	--Primeiro bit(menos significativo)
	U0: Somador_1_bit port map (
		A		=> A(0),
		B		=> B(0),
		Cin	=> Cin,
		S		=> S(0),
		Cout	=> carry_0
	);
	--Segundo bit(mais significativo)
	U1: Somador_1_bit port map (
		A		=> A(1),
		B		=> B(1),
		Cin	=> carry_0,
		S		=> S(1),
		Cout	=> carry_1
	);

	--Terceiro bit(menos significativo)
	U3: Somador_1_bit port map (
		A		=> A(2),
		B		=> B(2),
		Cin	=> carry_1,
		S		=> S(2),
		Cout	=> carry_2
	);
	--Quarto bit(mais significativo)
	U4: Somador_1_bit port map (
		A		=> A(3),
		B		=> B(3),
		Cin	=> carry_2,
		S		=> S(3),
		Cout	=> Cout
	);
end Structural;

