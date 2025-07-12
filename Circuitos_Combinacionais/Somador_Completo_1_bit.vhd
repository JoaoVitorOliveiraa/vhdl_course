----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:04:52 04/25/2025 
-- Design Name: 
-- Module Name:    Somador_Completo_1_bit - Behavioral 
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

entity Somador_Completo_1_bit is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC
			 );
end Somador_Completo_1_bit;

architecture Structural of Somador_Completo_1_bit is

	component Xor_Port
		Port ( A : in STD_LOGIC;
				 B : in STD_LOGIC;
				 S : out STD_LOGIC);
	end component;
	
	component And_Port
		Port ( A : in STD_LOGIC;
				 B : in STD_LOGIC;
				 S : out STD_LOGIC);
	end component;

	component Or_Port_3
		Port ( A : in STD_LOGIC;
				 B : in STD_LOGIC;
				 C : in STD_LOGIC;
				 S : out STD_LOGIC);
	end component;
	
	signal xor_ab : STD_LOGIC;
	
	signal and_ab : STD_LOGIC;
	signal and_acin : STD_LOGIC;
	signal and_bcin : STD_LOGIC;

begin

	U1: Xor_Port port map (
		A => A,
		B => B, 
		S => xor_ab
	);
		
	U2: Xor_Port port map (
		A => xor_ab,
		B => Cin, 
		S => S
	);

	U3: And_Port port map (
		A => A,
		B => B, 
		S => and_ab
	);

	U4: And_Port port map (
		A => A,
		B => Cin, 
		S => and_acin
	);
	
	U5: And_Port port map (
		A => B,
		B => Cin, 
		S => and_bcin
	);
	
	U6: Or_Port_3 port map (
		A => and_ab,
		B => and_acin,
		C => and_bcin,
		S => Cout
	);
	

end Structural;

