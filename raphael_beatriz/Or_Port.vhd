library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Or_Port is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           S : out  STD_LOGIC);
end Or_Port;

architecture Behavioral of Or_Port is

begin

	S <= A or B;

end Behavioral;

