library ieee;
use ieee.std_logic_1164.all;

entity word_select is
	port (
		BCK : in std_logic;
		LCK : out std_logic := '0'
	);
end word_select;

architecture Behavioral of word_select is
	signal count : integer := 0;
	signal LR : std_logic := '0';
begin
	LCK <= LR;
	process(BCK)
	begin
		if (BCK'event and BCK = '0') then
			count <= count + 1;
			if (count > 5000) then
				LR <= not(LR);
				count <= 0;
			end if;
		end if;
	end process;
end Behavioral;