library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reg_Paralelo_2_Bits is
    Port ( 
			CLK : in  STD_LOGIC;
         D : in  STD_LOGIC_VECTOR(1 downto 0);
         Q : out  STD_LOGIC_VECTOR(1 downto 0);
         Qn : out  STD_LOGIC_VECTOR(1 downto 0)
	);
end Reg_Paralelo_2_Bits;

architecture Structural of Reg_Paralelo_2_Bits is
	component FF_D_Clock
		Port ( CLK : in STD_LOGIC;
             D : in  STD_LOGIC;
             Q : out  STD_LOGIC;
             Qn : out  STD_LOGIC
		);
	end component;
begin

	FF0: FF_D_Clock port map (
		CLK => CLK,
		D => D(0),
		Q => Q(0),
		Qn => Qn(0)
	);
	
	FF1: FF_D_Clock port map (
		CLK => CLK,
		D => D(1),
		Q => Q(1),
		Qn => Qn(1)	
	);

end Structural;

