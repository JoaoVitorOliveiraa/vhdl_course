----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:22:36 05/09/2025 
-- Design Name: 
-- Module Name:    FF_RS_No_Clock - Behavioral 
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

entity FF_RS_No_Clock is
    Port ( S : in  STD_LOGIC;
           R : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end FF_RS_No_Clock;

architecture Behavioral of FF_RS_No_Clock is
	signal S_n, R_n		: STD_LOGIC;
	signal q_internal 	: STD_LOGIC := '1';
	signal qn_internal		: STD_LOGIC := '0';
begin

	S_n <= not S;
	R_n <= not R;
	
	process(S_n, R_n, qn_internal, q_internal)
	begin
		q_internal <= not (S_n and qn_internal);
		qn_internal <= not (R_n and q_internal);
	end process;
	
	Q <= q_internal;
	Qn <= qn_internal;
	
end Behavioral;

