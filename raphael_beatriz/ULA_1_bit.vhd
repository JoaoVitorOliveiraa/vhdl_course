library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ULA_1_bit is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           F1 : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end ULA_1_bit;

architecture Structural of ULA_1_bit is
	component And_Port is
	Port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 S : out STD_LOGIC);
	end component;		 

	component Not_Port is
	Port ( A : in STD_LOGIC;
			 S : out STD_LOGIC);
	end component;

	component Or_Port is
	Port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 S : out STD_LOGIC);
	end component;
	
	component Or_Port_4 is
	Port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 C : in STD_LOGIC;
			 D : in STD_LOGIC;
			 S : out STD_LOGIC);
	end component;

	component Somador_1_bit is
	Port ( A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 Cin : in STD_LOGIC;
			 S : out STD_LOGIC;
			 Cout : out STD_LOGIC);
	end component;
	
	component Decodificador is Port
			(F0 : in STD_LOGIC;
			 F1 : in STD_LOGIC;
			 A : in STD_LOGIC;
			 B : in STD_LOGIC;
			 C : in STD_LOGIC;
			 D : in STD_LOGIC;
			 E : in STD_LOGIC;
			 A_s : out STD_LOGIC;
			 B_s : out STD_LOGIC;
			 C_s : out STD_LOGIC;
			 D_s : out STD_LOGIC;
			 E_s : out STD_LOGIC);
	end component;

	signal and_result, or_result, not_result : STD_LOGIC;
	signal soma_result, cout_result : STD_LOGIC;
	signal and_s, or_s, not_s, soma_s : STD_LOGIC;
	
begin

	AND1: And_Port port map(
		A => X,
		B => Y,
		S => and_result
	);
	OR1: Or_Port port map(
		A => X,
		B => Y,
		S => or_result
	);
	NOT1: Not_Port port map(
		A => Y,
		S => not_result
	);
	
	SUM1: Somador_1_bit port map(
		A		=> X,
		B		=> Y,
		Cin	=> Cin,
		S		=> soma_result,
		Cout	=> cout_result
	);
	
	DEC1: Decodificador port map (
		F0 => F0,
		F1 => F1,
		A  => and_result,
		B	=> or_result,
		C	=> not_result,
		D  => soma_result,
		E  => cout_result,
		A_s => and_s,
		B_s => or_s,
		C_s => not_s,
		D_s => soma_s,
		E_s => Cout
		);
		
	OR_FINAL: Or_Port_4 port map(
		A=> and_s,
		B=> or_s,
		C=> not_s,
		D=> soma_s,
		S=> S
	);

end Structural;

