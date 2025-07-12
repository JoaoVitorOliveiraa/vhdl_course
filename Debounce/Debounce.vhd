----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:35:02 05/30/2025 
-- Design Name: 
-- Module Name:    Debounce - Behavioral 
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

entity Debounce is
    Port ( clk : in  STD_LOGIC;
           btn_in : in  STD_LOGIC;
           db : out  STD_LOGIC);
end Debounce;

architecture Behavioral of Debounce is

	constant max: integer := 50000000;
begin

	process(clk)
		variable count  : integer range 0 to max := 0;
		variable btn_prev : std_logic := '0';
	begin 
		if falling_edge(clk) then
			if btn_in /= btn_prev and count = 0 then
				db <= btn_in;
				btn_prev := btn_in;
				count := 1;
			end if;
			
			if count > 0 then 
				count := count +1;
				if count > max then 
					count:= 0;
				end if;
			end if;
		end if;
	end process;
end Behavioral;

