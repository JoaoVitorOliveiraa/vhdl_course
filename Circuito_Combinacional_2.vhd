library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Circuito_Combinacional_2 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           X : out  STD_LOGIC);
end Circuito_Combinacional_2;

architecture Structural of Circuito_Combinacional_2 is

	component And_Port
		Port ( A : in STD_LOGIC;
			   B : in STD_LOGIC;
			   S : out STD_LOGIC);
	end component;

	component Or_Port
		Port ( A : in STD_LOGIC;
			   B : in STD_LOGIC;
			   S : out STD_LOGIC);
	end component;
	
	component Not_Port
		Port ( A : in STD_LOGIC;
			   S : out STD_LOGIC);
	end component;
	
	signal and_out : STD_LOGIC;
	signal not_out : STD_LOGIC;

begin

	U1 : And_Port port map (
		A => A,
		B => B,
		S => and_out
	);

	U2 : Not_Port port map (
		A => C,
		S => not_out
	);

	U3 : Or_Port port map (
		A => and_out,
		B => not_out,
		S => X
	);
	
end Structural;