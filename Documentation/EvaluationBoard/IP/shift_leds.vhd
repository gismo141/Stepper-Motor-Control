--! @file		shift_leds.vhd
--! @brief		Modul ist erforderlich für DE0_CycloneIII_Eval_Board (Nr. 11.35)
--! @details
--! HW-Interface zum Eval-Board, mit Handshake zum Top-Level\n
--! Ansteuerung der 16 grünen LEDs per Schieberegister\n
--! Einlesen des parallelen LED-Datenwortes\n
--! serielle Ausgabe an die Board-Schieberegister (MSB first)\n
--! \n\b Handshake mit Top-Level
--! 	- LEDG_SHIFT_START ---> Startsignal vom Top-Level, Beginn des Shiftings, high-aktiv
--! 	- LEDG_SHIFT_BUSY ---> Anzeige eines gerade laufenden Shiftings an den Top-Level, high-aktiv\n
--!			(wird eigenständig zurückgesetzt nach Ende der Übertragung)
--!
--! Nach Setzen des Busy-Signals MUSS Top-Level die Start-Anforderung zurücksetzen !!!\n
--! Es wird immer ein kompletter Shift-Zyklus ausgeführt, danach wird die Start-Bedingung erneut geprüft.
--!
--! Einstellen der Taktrate des ser. Daten-Clocks über Konstante clk_div_max (gibt die Zählweite für high/low-Phase an).\n
--! Nach dem Reset wird jedesmal automatisch eine 0-Folge geschrieben, um evtl. gesetzte LEDs zu löschen.
--!
--! @note 	auch zur Verwendung in reinen VHDL-Modulen (ohne NIOS)
--!
--!	compilation : QuartusII, V12.0, SP--\n
--!	simulation : Quartus or ModelSim, V10.0c\n
--!
--! @author  JMayr
--! @version V1.0
--! @date    22.12.2011
--!
--! \n @par History:
--! @details V1.0 20.12.2011 JMayr
--! 		- first release
--!
--! \n@todo  nichts bekannt
--!
--! @bug  nichts bekannt
--!
--! @brief
--! <h2><center>&copy; COPYRIGHT 2011 UniBwM ETTI WE 4</center></h2>
--!
--! @defgroup VHDL VHDL

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;     -- für conv functions erforderlich
USE IEEE.STD_LOGIC_unsigned.ALL;  -- für conv functions erforderlich
--USE IEEE.STD_LOGIC_signed.ALL;  -- alternativ zur unsigned-Lib...
--USE ieee.numeric_std.ALL;

--LIBRARY modelsim_lib;
--use modelsim_lib.util.all;

--! @ingroup VHDL
--! @brief HW-Interface zu den grünen LEDs
entity shift_leds is
  port(

	LEDG_DATA_IN:     	in  std_logic_vector(15 downto 0);--! paralleles Datenwort für LEDs
	LEDG_SHIFT_START:    in std_logic;	--! Handshake: Top-Level startet mit '1' ein Shifting des LED-Datenwortes, Port muss dann vom Top-Level wieder zurückgesetzt werden
	LEDG_SHIFT_BUSY:     out std_logic;	--! zeigt mit '1' dem Top-Level an, dass gerade ein Shifting läuft
   LEDG_SER_DATA:    	out std_logic;	--! serielle LED-Daten (MSB first)
   LEDG_SER_CLK:    		out std_logic;	--! serieller Daten-Clock für Schieberegister
   CLK: 			 			in  std_logic;
   RESET_n: 	 			in  std_logic
   );
end entity shift_leds;
  

--! @brief Architecture für LED-Bit-Shifting
architecture arch_shift_leds of shift_leds is
 type state_type is (WAIT_a_CLK, IDLE, SHIFT, WAIT_1_CLK, SER_CLK_H, SER_CLK_L, BIT_CHECK);
 signal state_s: state_type;
 
--! @details Einstellung des seriellen Daten-Clocks
--! @details für Testzwecke: ser. Clock-Phase high bzw. low: je ca. 0.5s
--! @details für operat. Betrieb: ser. Clock-Phase high bzw. low: je ca. 1us (empirische Werte)
--constant clk_div_max: integer := 15000000;		--! @details für Test
--constant clk_div_max: integer := 3;				--! @details für Simulation
constant clk_div_max: integer := 50;				--! @details für operat. Betrieb: ser. Clock-Phase high bzw. low: je ca. 1us

 signal ledg_data_in_s: 	std_logic_vector(15 downto 0);
 signal ledg_shift_busy_s: std_logic;

begin
--! @details statemachine für LEDG-Shifting
--! @image html Shift_State_Machine.png
--! @image latex Shift_State_Machine.eps "Shift_State_Machine" width=10cm
  Shift_State_Machine: process (reset_n, clk, LEDG_SHIFT_START, LEDG_DATA_IN)
     variable count_v: integer range 0 to 15;
	 variable clk_div: integer range 0 to clk_div_max;
  begin
    if reset_n = '0' then
      state_s 				<= SHIFT;		--Initialisierung: gleich mal das Reset-Datenwort rausschieben und alle LEDs ausschalten
		ledg_data_in_s 	<= X"0000";		--alle LEDs ausschalten
      ledg_shift_busy_s <= '1';			--während der Initialisierung als "busy" anzeigen
      LEDG_SER_DATA 		<= '0';
      count_v := 15;							--auf MSB setzen
		clk_div := 0;
    elsif clk'event and clk='1' then
      ledg_shift_busy_s <= '1';			--bei Prozesseintritt default immer auf '1' setzen, Änderung ggf. in den states
      
		case state_s is
		when IDLE =>
        if LEDG_SHIFT_START = '1' then 			--vom Top-Level: Start Shifting
		    ledg_data_in_s <= LEDG_DATA_IN;			--Get LEDG-Data
          count_v := 15;								--auf MSB zeigen
			 state_s <= SHIFT;
		  else
			 ledg_shift_busy_s <= '0';		--kein Shift-Request vom Top-Level ---> wieder auf '0' setzen
			 state_s <= state_s;
        end if;
		  
     when SHIFT =>
        LEDG_SER_DATA <= ledg_data_in_s(count_v);		--MSB ausgeben
        state_s <= WAIT_1_CLK;
		  
      when WAIT_1_CLK  => 				
        state_s <= SER_CLK_H;				--Bit mit steigender Flanke ins Schieberegister laden
		  
      when SER_CLK_H  => 				
        clk_div := clk_div + 1;			--High-Phase des ser. Daten-Clocks abwarten
		  if (clk_div = clk_div_max) then
				clk_div := 0;
				state_s <= SER_CLK_L;
		  else
				state_s <= state_s;
		  end if;
		  
      when SER_CLK_L  => 				
        clk_div := clk_div + 1;			--Low-Phase des ser. Daten-Clocks abwarten
		  if (clk_div = clk_div_max) then
				clk_div := 0;
				state_s <= BIT_CHECK;
		  else
				state_s <= state_s;
		  end if;
		  
      when BIT_CHECK  => 				
		  if (count_v = 0) then		--alle LED-Datenbits wurden übertragen
        ledg_shift_busy_s <= '0';		--busy schon hier zurücksetzen, damit im nÃ¤chsten clock das nios-Interface bereits reagieren kann
				state_s <= WAIT_a_CLK;		--in den Ruhezustand wechseln, vorher aber noch einen clock einschieben, damit busy vom nios-Interface verarbeitet werden kann
		  else
				count_v := count_v - 1;		--nächstes ser. bit addressieren
				state_s <= SHIFT;				--zurück zur nächsten Bit-Ausgabe
		  end if;
      
      when WAIT_a_CLK  => 				
        ledg_shift_busy_s <= '0';		--busy immer noch auf '0' halten
        state_s <= IDLE;					--einen clock einschieben, damit busy vom nios-Interface verarbeitet werden kann
		  
		when others => state_s <= IDLE;   
    end case;
   end if;
  end process;
  
  
--! @details Aktionen für Signale in den verschiedenen States
  Aktionen: process(state_s, ledg_shift_busy_s)
  begin
	LEDG_SHIFT_BUSY <= ledg_shift_busy_s;	--einfache Durchschaltung des Signals auf das Port
	
    case state_s is
      when IDLE =>			
			LEDG_SER_CLK <= '0';
			
	   when SHIFT =>			
			LEDG_SER_CLK <= '0';
			
      when WAIT_1_CLK =>	
			LEDG_SER_CLK <= '0';
			
      when SER_CLK_H =>		
			LEDG_SER_CLK <= '1';
			
      when SER_CLK_L =>		
			LEDG_SER_CLK <= '0';
			
      when BIT_CHECK =>		
			LEDG_SER_CLK <= '0';
			
      when WAIT_a_CLK =>	
			LEDG_SER_CLK <= '0';
			
      when others =>			
			LEDG_SER_CLK <= '0';
    end case;
  end process;

end arch_shift_leds;
