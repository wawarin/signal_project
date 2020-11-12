library ieee;
use ieee.std_logic_1164.all;

entity Top_DAC is
	port (
		CLK : in std_logic;
		BCK : out std_logic;
		DIN : out std_logic;
		LCK : out std_logic
	);
end Top_DAC;

architecture stractural of Top_DAC is
	component Parallel_to_Serial is
		port (
			CLK : in std_logic;
			parallel_data_in : in std_logic_vector(15 downto 0);
			serial_data_out : out std_logic := '0'
		);
	end component;
	
	component generate_data_in is
	port (
			BCK : in std_logic;
			DIN_Out : out std_logic_vector(15 downto 0)
		);
	end component;

	component clock_divider is
		port (
			CLK : in std_logic;
			CLK_OUT : out std_logic
		);
	end component;
	
	component word_select is
		port (
			BCK : in std_logic;
			LCK : out std_logic := '0'
		);
	end component;
	
	signal data_temp : std_logic_vector(15 downto 0) := "1000000000000000";
	signal BCK_temp : std_logic := '0';
	signal WS : std_logic := '0';
begin
	U0 : clock_divider
		port map (CLK, BCK_temp);
	U3 : word_select
		port map (BCK_temp, LCK);
	U1 : generate_data_in
		port map (BCK_temp, data_temp); 
	U2 : Parallel_to_Serial
		port map (BCK_temp, data_temp, DIN);
	BCK <= BCK_temp;
end stractural;
