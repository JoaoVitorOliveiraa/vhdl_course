----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:48:31 04/25/2025 
-- Design Name: 
-- Module Name:    Somador_Completo_4_bits - Behavioral 
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

entity Somador_Completo_4_bits is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           Cout : out  STD_LOGIC);
end Somador_Completo_4_bits;

architecture Structural of Somador_Completo_4_bits is

	component Somador_Completo_1_bit
			Port ( A : in STD_LOGIC;
					 B : in STD_LOGIC;
					 Cin : in STD_LOGIC;
					 S : out STD_LOGIC;
					 Cout : out STD_LOGIC);
		end component;
	
	signal carry_0 : STD_LOGIC;
	signal carry_1 : STD_LOGIC;
	signal carry_2 : STD_LOGIC;
	
begin

	U0: Somador_Completo_1_bit port map (
		A => A (0),
		B => B (0), 
		Cin => Cin, 
		S => S (0),
		Cout => carry_0 
	);
	
	U1: Somador_Completo_1_bit port map (
		A => A (1),
		B => B (1), 
		Cin => carry_0, 
		S => S (1),
		Cout => carry_1 
	);
	
	U2: Somador_Completo_1_bit port map (
		A => A (2),
		B => B (2), 
		Cin => carry_1, 
		S => S (2),
		Cout => carry_2 
	);
	
	U3: Somador_Completo_1_bit port map (
		A => A (3),
		B => B (3), 
		Cin => carry_2, 
		S => S (3),
		Cout => Cout 
	);


end Structural;

