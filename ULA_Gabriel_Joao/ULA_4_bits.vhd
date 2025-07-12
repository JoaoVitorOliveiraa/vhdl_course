----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:55:04 05/23/2025 
-- Design Name: 
-- Module Name:    ULA_4_bits - Behavioral 
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

entity ULA_4_bits is
    Port ( CLK : in  STD_LOGIC;
			  X : in  STD_LOGIC_VECTOR(3 downto 0);
	        Y : in  STD_LOGIC_VECTOR(3 downto 0);
           Cin : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           F1 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(3 downto 0)
	);
end ULA_4_bits;

architecture Structural of ULA_4_bits is

	component ULA_1_bit
		Port (X : in STD_LOGIC;
            Y : in  STD_LOGIC;
            Cin : in  STD_LOGIC;
				F0 : in  STD_LOGIC;
				F1 : in  STD_LOGIC;
            S : out  STD_LOGIC;
            Cout : out  STD_LOGIC);
	end component;
	
	signal carry : STD_LOGIC_VECTOR(4 downto 0);
	signal result : STD_LOGIC_VECTOR(3 downto 0);	

begin
	carry(0) <= Cin;
	
	ULA0: ULA_1_bit port map (
			  X => X(0),
           Y => Y(0),
           Cin => carry(0),
           F0 => F0, 
           F1 => F1, 
           S  => result(0),
           Cout => carry(1));

	ULA1: ULA_1_bit port map (
			  X => X(1),
           Y => Y(1),
           Cin => carry(1),
           F0 => F0, 
           F1 => F1, 
           S  => result(1),
           Cout => carry(2));

	ULA2: ULA_1_bit port map (
			  X => X(2),
           Y => Y(2),
           Cin => carry(2),
           F0 => F0, 
           F1 => F1, 
           S  => result(2),
           Cout => carry(3));

	ULA3: ULA_1_bit port map (
			  X => X(3),
           Y => Y(3),
           Cin => carry(3),
           F0 => F0, 
           F1 => F1, 
           S  => result(3),
           Cout => carry(4));

	process(CLK)
	begin
		if falling_edge(CLK) then
			S <= result;
			Cout <= carry(4);
		end if;
	end process;
end Structural;

