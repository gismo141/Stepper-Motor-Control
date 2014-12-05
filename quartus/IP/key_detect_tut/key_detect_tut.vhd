-------------------------------------------------------------------------------
--! @file         key_detect_tut.vhd
--! @author       Prof. Dr.-Ing. Ferdinand Englberger
--! @version      V3.0.2
--! @date         14.12.2012
--!
--! @brief        Key-Detector
--! @details      The component detects a press of key and
--!               gererates a detection signal for one clock period
--!
--! @par History:
--! @details      V3.0.2 Ferdinand Englberger
--!               - english comments
--! @details      V3.0.1 13.12.2011 Ferdinand Englberger
--!               - Umlaut in comments
--! @details      V3.0.0 25.12.2010 Ferdinand Englberger
--!               - start of development for this component
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;
--! Use Conversion Functions
USE ieee.std_logic_arith.all;
--! Use Conversion Functions
USE ieee.std_logic_signed.all;

--! @brief Tutorial-Component Key-Detector
ENTITY key_detect_tut IS
  PORT
  (
    clock       : IN  STD_LOGIC; --! Component Clock
    reset_n     : IN  STD_LOGIC; --! Component Reset
    key_input   : IN  STD_LOGIC; --! Siggnal vom Taster
    key_detect  : OUT STD_LOGIC  --! Detect-Signal for key
  );
END key_detect_tut;

--! @brief Architecture of Key-Detector
--! @details a key is debounced and a detect signal
--!          is generated (1 clock period)
ARCHITECTURE mykeydetect OF key_detect_tut IS
  
  --! Statedefinition for key detector
  TYPE STATE_TYPE IS (start, newpress, pressed);
  --! State signal for key detector
  SIGNAL STkey: STATE_TYPE;
  
BEGIN  
  --! @brief detect and debounce the press of a key
  --!        at key-input-line. Generate a press detect 
  --!        signal (1 clock period))
  debounce : PROCESS (clock, reset_n, key_input)
  BEGIN
    IF (reset_n = '0') THEN
      STkey <= start; 
    ELSIF (rising_edge(clock)) THEN
      CASE STkey IS
      WHEN start =>
        IF(key_input = '0') THEN
          STkey <= newpress;
        ELSE
          STkey <= STkey;
        END IF;
      WHEN newpress =>
        STkey <= pressed;
      WHEN pressed =>
        IF(key_input = '1') THEN
          STkey <= start;
        ELSE
          STkey <= STkey;
        END IF;
      WHEN others => STkey <= start;
      END CASE;
     END IF;
  END PROCESS;
  
  key_detect <= '1' WHEN STkey = newpress ELSE
                '0';
END mykeydetect;
