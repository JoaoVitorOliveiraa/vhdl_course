library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FF_D_Clock is
    Port ( CLK : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qn : out  STD_LOGIC);
end FF_D_Clock;

architecture Behavioral of FF_D_Clock is
	signal q_internal : STD_LOGIC := '0';
	signal qn_internal : STD_LOGIC := '1';
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

