library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reg_Serial_2_Bits is
    Port ( 
			CLK : in  STD_LOGIC;
         D : in  STD_LOGIC;
         Q : out  STD_LOGIC_VECTOR(1 downto 0);
         Qn : out  STD_LOGIC_VECTOR(1 downto 0)
	);
end Reg_Serial_2_Bits;

architecture Structural of Reg_Serial_2_Bits is
	component FF_D_Clock
		Port ( CLK : in STD_LOGIC;
             D : in  STD_LOGIC;
             Q : out  STD_LOGIC;
             Qn : out  STD_LOGIC
		);
	end component;
	
	signal q0, q1, qn0, qn1 : STD_LOGIC;
begin

	FF0: FF_D_Clock port map (
		CLK => CLK,
		D => D,
		Q => q0,
		Qn => qn0
	);
	
	FF1: FF_D_Clock port map (
		CLK => CLK,
		D => q0,
		Q => q1,
		Qn => qn1	
	);
	
	Q <= q1 & q0;
	Qn <= qn1 & qn0;

end Structural;

