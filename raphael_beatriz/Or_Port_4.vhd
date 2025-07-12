library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Or_Port_4 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           S : out  STD_LOGIC);
end Or_Port_4;

architecture Behavioral of Or_Port_4 is

begin
		S <= A or B or C or D;

end Behavioral;

