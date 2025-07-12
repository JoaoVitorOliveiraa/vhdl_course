----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:51:18 05/30/2025 
-- Design Name: 
-- Module Name:    State_Machine - Behavioral 
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

entity State_Machine is
    Port ( clk : in  STD_LOGIC;
           set_btn : in  STD_LOGIC;
           switches : in  STD_LOGIC_VECTOR (3 downto 0);
           leds_out : out  STD_LOGIC_VECTOR (7 downto 0) := "00000000");
end State_Machine;

architecture Behavioral of State_Machine is

	type state_type is (s0,s1,s2,s3,s4);
	
	signal num_op : STD_LOGIC_VECTOR (1 downto 0);
	signal num_1 : STD_LOGIC_VECTOR (3 downto 0);
	signal num_2 : STD_LOGIC_VECTOR (3 downto 0);
	signal debounced : STD_LOGIC;
	signal alu_result : STD_LOGIC_VECTOR (3 downto 0);
	signal cout_signal : STD_LOGIC;
	signal current_state : state_type := s0;
	signal deb_prev : STD_LOGIC := '0';
	
	component Debounce
		Port (
			clk : in STD_LOGIC;
			btn_in : in STD_LOGIC;
			db : out STD_LOGIC);
	end component;
	
	component ULA_4_bits
		Port ( CLK : in  STD_LOGIC;
			  X : in  STD_LOGIC_VECTOR(3 downto 0);
	        Y : in  STD_LOGIC_VECTOR(3 downto 0);
           Cin : in  STD_LOGIC;
           F0 : in  STD_LOGIC;
           F1 : in  STD_LOGIC;
           Cout : out  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR(3 downto 0));
	end component;
						
begin

	debounce_btn: Debounce
		port map(
			clk => clk,
			btn_in => set_btn,
			db => debounced);
		
	alu_unit: ULA_4_bits
		port map(
			CLK => clk,
			X => num_1,
			Y => num_2,
			Cin => '0',
			F0 => num_op(0),
			F1 => num_op(1),
			S => alu_result,
			Cout => cout_signal);
			
	process(clk)
	begin
		if falling_edge(clk) then
			if debounced = '1' and deb_prev = '0' then
				deb_prev <= '1';
				case current_state is
					when s0 => 
						leds_out <= "00010000";
						num_op <= switches(1 downto 0);
						current_state <= s1;
					when s1 => 
						leds_out <= "00100000";
						num_1 <= switches;
						current_state <= s2;
					when s2 => 
						leds_out <= "00110000";
						num_2 <= switches;
						current_state <= s3;
					when s3 => 
						leds_out (2 downto 0)  <= "000";
						leds_out (7)  <= cout_signal;
						leds_out (6 downto 3)  <= alu_result;
						current_state <= s4;
					when s4 => 
						leds_out <= "00000000";
						current_state <= s0;
				end case;
			elsif debounced = '0' then
				deb_prev <= '0';
			end if;
		end if;
	end process;
end Behavioral;

