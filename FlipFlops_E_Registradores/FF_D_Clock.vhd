----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:21:53 05/09/2025 
-- Design Name: 
-- Module Name:    FF_D_Clock - Behavioral 
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

entity FF_D_Clock is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end FF_D_Clock;

architecture Behavioral of FF_D_Clock is
	signal q_internal		:	STD_LOGIC := '0'; 
	signal qn_internal	:	STD_LOGIC := '1';

begin
	process(CLK)
	begin
		if falling_edge(CLK) then
			q_internal <= D;
			qn_internal <= not D;
		end if;
	end process;
		
	Q <= q_internal;
	Qn <= qn_internal;

end Behavioral;

