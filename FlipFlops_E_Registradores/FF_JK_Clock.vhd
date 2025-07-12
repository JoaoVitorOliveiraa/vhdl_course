----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:07 05/09/2025 
-- Design Name: 
-- Module Name:    FF_JK_Clock - Behavioral 
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

entity FF_JK_Clock is
    Port ( CLK : in STD_LOGIC;
			  J : in  STD_LOGIC;
           K : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end FF_JK_Clock;

architecture Behavioral of FF_JK_Clock is
	signal q_internal		:	STD_LOGIC := '0'; 
	signal qn_internal	:	STD_LOGIC := '1';
begin
	process(CLK)
		variable JK : STD_LOGIC_VECTOR(1 downto 0);
	begin
		if falling_edge(CLK) then
			JK := J & K;
			case JK is
				when "00" => 
					null;
				when "01" => 
					q_internal <= '0';
					qn_internal <= '1';
				when "10" => 
					q_internal <= '1';
					qn_internal <= '0';
				when "11" => 
					q_internal <= not q_internal;
					qn_internal <= not qn_internal;
				when others =>
					null;
			end case;
		end if;
	end process;
		
	Q <= q_internal;
	Qn <= qn_internal;

end Behavioral;

