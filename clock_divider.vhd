library ieee;
use ieee.std_logic_1164.all;

entity clock_divider is
	port (
		CLK : in std_logic;
		CLK_OUT : out std_logic
	);
end clock_divider;

architecture Behavioral of clock_divider is
	signal count	:	integer		:= 1;
	signal temp		:	std_logic	:= '0';
begin
	process(CLK)
	begin
		if(CLK'event and CLK = '1') then
			count <= count + 1;
			if (count = 5) then
				temp <= NOT temp;
				count <= 1;
			end if;
		end if;
		CLK_OUT <= temp;
	end process;
end Behavioral;