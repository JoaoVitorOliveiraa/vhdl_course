library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Not_Port is
    Port ( A : in  STD_LOGIC;
           S : out  STD_LOGIC);
end Not_Port;

architecture Behavioral of Not_Port is

begin

	S <= not A;

end Behavioral;

