library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Decodificador is
    Port ( F0 : in  STD_LOGIC;
           F1 : in  STD_LOGIC;
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           E : in  STD_LOGIC;
           A_s : out  STD_LOGIC;
           B_s : out  STD_LOGIC;
           C_s : out  STD_LOGIC;
           D_s : out  STD_LOGIC;
           E_s : out  STD_LOGIC);
end Decodificador;

architecture Behavioral of Decodificador is
	signal F0_n, F1_n : STD_LOGIC;
	signal enable_and_op, enable_not_op : STD_LOGIC;
	signal enable_or_op, enable_soma_op : STD_LOGIC;
begin
	F0_n <= not F0;
	F1_n <= not F1;
	enable_and_op <= F1_n and F0_n;
	enable_not_op <= F1 and F0_n;
	enable_or_op <= F1_n and F0;
	enable_soma_op <= F1 and F0;
	
	A_s <= enable_and_op and A;
	B_s <= enable_or_op and B;	
	C_s <= enable_not_op and C;
	D_s <= enable_soma_op and D;
	E_s <= enable_soma_op and E;
	
end Behavioral;

