library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity And_Port is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC);
end And_Port;

architecture Behavioral of And_Port is

begin

	S <= A and B;

end Behavioral;

