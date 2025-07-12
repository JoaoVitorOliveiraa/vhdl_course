----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:33:34 03/28/2025 
-- Design Name: 
-- Module Name:    Xor_Port - Behavioral 
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

entity Xor_Port is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC);
end Xor_Port;

architecture Structural of Xor_Port is

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
	
	signal and1_out : STD_LOGIC;
	signal and2_out : STD_LOGIC;
	signal nota_out : STD_LOGIC;
	signal notb_out : STD_LOGIC;
	
begin

	AND_1: And_Port port map (
		A => nota_out,
		B => B,
		S => and1_out
	);
	
	AND_2: And_Port port map (
		A => A,
		B => notb_out,
		S => and2_out
	);

	OR_1: Or_Port port map (
		A => and1_out,
		B => and1_out,
		S => S
	);

	NOT1: Not_Port port map (
		A => A,
		S => nota_out
	);
	
	NOT2: Not_Port port map (
		A => B,
		S => notb_out
	);

end Structural;

