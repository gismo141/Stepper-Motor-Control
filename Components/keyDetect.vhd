-------------------------------------------------------------------
--! @file keyDetect.vhd
--! @author  Michael Riedel
--! @author  Marc Kossmann
--! @version v0.1
--! @date    21.10.2014
--!
--! @brief Key-Detector
--! @details The component detects a press of key and
--!          generates a detection signal for one clock period
--!
--! @par History:
--! @details V0.1 Riedel & Kossmann
--!          - first draft for milestone 1b
-------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;
--! Use Conversion Functions
USE ieee.std_logic_arith.all;
--! Use Conversion Functions
USE ieee.std_logic_signed.all;

--! @brief Tutorial-Component Key-Detector
entity keyDetect is
	port
	(
		clock	     : in  STD_LOGIC; --! Component Clock
		reset_n	  : in  STD_LOGIC; --! Component Reset
		key_input  : in  STD_LOGIC; --! Siggnal vom Taster
      key_detect : out STD_LOGIC  --! Detect-Signal for key
	);
end keyDetect;

--! @brief Architecture of Key-Detector
--! @details a key is de-bounced and a detect signal
--!          is generated (1 clock period)
architecture mykeydetect of keyDetect is
	
	--! Statedefinition for key detector
	TYPE STATE_TYPE IS (start, newpress, pressed);
	--! State signal for key detector
	SIGNAL STkey: STATE_TYPE;
	
begin  
    --! @brief detects and de-bounces the press of a key
	 --!        at key-input-line. Generate a press detect 
	 --!        signal (1 clock period))
    process (clock, reset_n, key_input)
    begin
       if (reset_n = '0') THEN
         STkey <= start; 
       elsif (rising_edge(clock)) THEN
         case STkey IS
            when start =>
               if(key_input = '0') THEN
                  STkey <= newpress;
               else
                  STkey <= STkey;
               end if;
            when newpress =>
                 STkey <= pressed;
            when pressed =>
               if(key_input = '1') THEN
                  STkey <= start;
               else
                  STkey <= STkey;
               end if;
            when others => STkey <= start;
         end case;
       end if;
    end process;
    
    key_detect <= '1' WHEN STkey = newpress ELSE
                  '0';
end mykeydetect;
