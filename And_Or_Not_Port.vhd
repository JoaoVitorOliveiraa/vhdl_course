library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And_Or_Not_Port is
    Port ( X : in  STD_LOGIC;
           Y : in  STD_LOGIC;
           And_S : out  STD_LOGIC;
           Or_S : out  STD_LOGIC;
           Not_S : out  STD_LOGIC);
end And_Or_Not_Port;

architecture Structural of And_Or_Not_Port is

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
	
begin

	AND1: And_Port port map (
		A => X,
		B => Y,
		S => And_S
	);

	OR1: Or_Port port map (
		A => X,
		B => Y,
		S => Or_S
	);

	NOT1: Not_Port port map (
		A => X,
		S => Not_S
	);
	
end Structural;