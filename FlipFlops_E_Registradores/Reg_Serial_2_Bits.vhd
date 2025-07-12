----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:07 05/09/2025 
-- Design Name: 
-- Module Name:    Reg_Serial_2_Bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Reg_Serial_2_Bits is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(1 downto 0);
           Qn : out  STD_LOGIC_VECTOR(1 downto 0));
end Reg_Serial_2_Bits;

architecture Structural of Reg_Serial_2_Bits is

	component FF_D_Clock
		Port(
			CLK : in STD_LOGIC;
			D : in STD_LOGIC;
			Q : out STD_LOGIC;
			Qn : out STD_LOGIC
		);
	end component;

	signal q0, q1, qn0, qn1 : STD_LOGIC;

begin
	FF1: FF_D_Clock port map(
		CLK => CLK,
		D => D,
		Q => q0,
		Qn => qn0
	);
	
	FF2: FF_D_Clock port map(
		CLK => CLK,
		D => q0,
		Q => q1,
		Qn => qn1
	);

	Q <= q1 & q0;
	Qn <= qn1 & qn0;

end Structural;

