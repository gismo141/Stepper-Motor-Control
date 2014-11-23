-------------------------------------------------------------------------------
--! @file         count_5ms.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v0.1.0
--! @date         23.11.2014
--!
--! @brief        Counter which counts 5 ms
--! @details      Counter to provide 5 ms time base.
--! @par History:
--! @details      v0.1.0 23.11.2014 Kossmann
--!               - first draft
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;

entity count_5ms is
	generic ( max : integer := 125000 );
   port
   (
      clock     : in  std_logic;
      reset_n   : in  std_logic;
      enable    : in  std_logic;
      clock5ms  : out std_logic
	);
end count_5ms;

architecture my_count_5ms of count_5ms is
  signal temp_clock : std_logic := '0';
begin
	process(clock, reset_n, enable)
	variable cnt : integer range 0 to max;
	begin
		if(reset_n = '0') then 
			cnt := 0;
		elsif (enable = '0') then 
			cnt := cnt;
		elsif(rising_edge(clock)) then
			if(cnt = max) then 
				cnt := 0;
				temp_clock <= not temp_clock;
			else 
				cnt := cnt + 1;
			end if;
		end if;
	end process;
	
	clock5ms <= temp_clock;
	
end my_count_5ms;
	