library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ledky_top is
	port(
		btn_i : in  std_logic_vector(1 to 3);
		--sw_i : in  std_logic_vector(1 to 4);
		led_o : out std_logic_vector(5 downto 0) -- (4 downto 0)
	);
end entity ledky_top;

architecture moje_architektura of ledky_top is

begin
	led_o(0) <= btn_i(1);
	led_o(1) <= not btn_i(2);
	led_o(2) <= btn_i(3);
	led_o(3) <= btn_i(3);
	led_o(4) <= btn_i(3);
	led_o(6 downto 3) <= btn_i(3) & btn_i(3) & btn_i(3) & btn_i(3);
	led_o(6 downto 3) <= (others => btn_i(3));
	
	--led_o(0) <= 'l' when btn_i(0) = 'l' -- btn_i = "1111"
	--else  "0";
	
	--led_o(2) <= not btn_i(3);
	--led_o(1) <= sw_i(1) when sw_i(3) ='1' else '2';
end architecture moje_architektura;

