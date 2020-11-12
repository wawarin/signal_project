library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity generate_data_in is
	port (
		BCK : in std_logic;
		DIN_Out : out std_logic_vector(15 downto 0)
	);
end generate_data_in;

architecture Behavioral of generate_data_in is
	signal count : integer := 0;
begin
	process(BCK)
	begin	-- generate sawtooth wave
		if(BCK'event and BCK = '0') then
			if(count = 32767) then
				count <= 0;
			else
				count <= count + 1;
			end if;
		end if;
	end process;
	DIN_Out <= conv_std_logic_vector(count,16);
end Behavioral;
