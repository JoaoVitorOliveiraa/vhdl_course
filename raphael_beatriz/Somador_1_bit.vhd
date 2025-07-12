library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Somador_1_bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end Somador_1_bit;

architecture Structural of Somador_1_bit is
	component Xor_Port
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC);
	end component;
	
	component And_Port
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC);
	end component;
	
	component Or_Port_3
		Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : out  STD_LOGIC);
	end component;
	
	--Sinais Internos
	signal xor_ab			: STD_LOGIC;
	
	signal and_ab			: STD_LOGIC;
	signal and_acin		: STD_LOGIC;
	signal and_bcin		: STD_LOGIC;
			  
			  
	
begin

	--Xor A and B
	U1: Xor_Port port map (
		A => A,
		B => B,
		S => xor_ab
	);
	
	--Soma Final: (Axor B) xor Cin
	U2: Xor_Port port map (
		A => xor_ab,
		B => Cin,
		S => S
	);
	
	--And A and B
	U3: And_Port port map (
		A => A,
		B => B,
		S => and_ab
	);
	
	--And A and Cin
	U4: And_Port port map (
		A => A,
		B => Cin,
		S => and_acin
	);
	
	--And B and Cin
	U5: And_Port port map (
		A => B,
		B => Cin,
		S => and_bcin
	);
	
	--Or (A.B) + (A.Cin) + (B.Cin)
	U6: Or_Port_3 port map (
		A => and_ab,
		B => and_acin,
		C => and_bcin,
		S => Cout
	);
	

end Structural;

