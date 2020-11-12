library ieee;
use ieee.std_logic_1164.all;

entity Parallel_to_Serial is
	port (
		CLK : in std_logic;
		parallel_data_in : in std_logic_vector(15 downto 0);
		serial_data_out : out std_logic := '0'
	);
end Parallel_to_Serial;

architecture Behavioral of Parallel_to_Serial is
begin
	process(CLK)
		variable count : integer range 0 to 16 := 0;
	begin
		if (CLK'event and CLK = '0') then
			serial_data_out <= parallel_data_in(15-count);
			count := count + 1;
				if (count > 15) then
					count := 0;
				end if;
		end if;
	end process;
end Behavioral;