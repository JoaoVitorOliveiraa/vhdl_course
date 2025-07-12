----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:20:25 03/28/2025 
-- Design Name: 
-- Module Name:    Circuito_Combinacional_2 - Behavioral 
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

