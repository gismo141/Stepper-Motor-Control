--! @file    	nios_interface_shift_leds.vhd
--! @brief   	erforderliche QSys-Component für DE0_CycloneIII_Eval_Board (Nr. 11.35) \b MIT \b NIOS
--! @details 	NIOS-Interface zur Ansteuerung der 16 grünen LEDs per Schieberegister
--! @details 	wickelt einen kompletten Shift-Zyklus ab\n
--! Einbindung des Moduls shift_leds.vhd\n
--!
--! @details \b Handshake mit shift_leds.vhd
--! 	- ledg_shift_start_s ---> 	Start-Signal für Beginn des Shiftings\n
--! 								Nach Setzen des Busy-bits durch shift_leds.vhd MUSS das Start-Signal zurückgesetzt werden!!!
--! 	- ledg_shift_busy_s ---> 	Anzeige eines gerade laufenden Shiftings\n
--! 								(wird von shift_leds.vhd eigenständig gesetzt und nach Ende der Übertragung wieder zurückgesetzt)\n
--!									
--! @details \b NIOS-Registerinterface
--! 	- addr ---> NIOS-Adress-Register
--!			- 0 ---> Command-Register (Read/Write)
--!			- 1 ---> Daten-Register für LEDs (Write)
--! 	- cmd_reg_s ---> Command-Register
--! 	- ledg_data_in_reg_s ---> Daten-Register für LEDs
--!
--! @details \b Struktur des cmd_reg_s\n
--! bit 7..........6..........5..........4..........3..........2..........1..........0\n
--! ...............................................busy.......IRQ.........IE......ShiftStart\n\n
--! ShiftStart: ---> '1' vom NIOS startet Übertragung durch shift_leds.vhd, wird automatisch zurückgesetzt, sobald ledg_shift_busy_s aktiv (='1') ist\n\n
--! IE: ---> '1' für Interrupt enable vom NIOS\n\n
--! IRQ: ---> Interrupt Request an NIOS, sobald Shift fertig ist  (also busy '1'--->'0'), sofern IE enabled\n
--! 		muss vom NIOS nach Abholen des Interrupts zurückgesetzt werden\n\n
--! busy: ---> '1' wenn Shift läuft, '0' wenn Shift fertig ist (entspricht ledg_shift_busy_s von shift_leds.vhd)\n
--! 			(Es macht keinen Sinn, vom NIOS darauf zu schreiben)
--!
--! @note 	Das Projekt kann für Cyclone IV (DE0-Nano) oder für Cyclone III (E4-Board) konfiguriert werden\n
--!			Entsprechende Konfig-Dateien sind dafür zu importieren
--!				- zuerst alle Assignments entfernen
--!				- dann die gewünschte qsf-Datei importieren, mit ALLEN GLOBALEN Parametern
--!				- die Pin-Belegung importieren (*.csv)
--!
--!	compilation : QuartusII, V12.0, SP--\n
--!	simulation : Quartus or ModelSim, V10.0c\n
--! 
--! @author  JMayr
--! @version V1.0
--! @date    22.12.2011
--! 
--! \n@par History:
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
--! @brief   	NIOS-Interface und HW-Portdefinition für LED-Ansteuerung
entity nios_interface_shift_leds is
	port(
		ce_n :    	in std_logic; 									--! chip enable
		read_n :  	in std_logic; 									--! read
		write_n:  	in std_logic; 									--! write
		reg_addr:   in std_logic; 									--! adress: '0' cmd, '1' led shift_data
		write_data: in std_logic_vector (31 downto 0); 		--! NIOS write bus
		read_data: 	out std_logic_vector (31 downto 0); 	--! NIOS read bus
		irq:        out std_logic;									--! Interruptleitung zum NIOS

		LEDG_SER_DATA: out std_logic;								--! serielle LED-Daten (MSB first)
		LEDG_SER_CLK:  out std_logic;								--! serieller Daten-Clock für Schieberegister
		
		CLK :		 	in std_logic;
		RESET_n : 	in std_logic
	);
end entity nios_interface_shift_leds;

--!	@brief Architecture für NIOS-Interface
architecture arch_nios_interface_shift_leds of nios_interface_shift_leds is

type state_type is (IDLE, BUSY_CHECK, CMD_CHECK, SHIFT_BEGIN, SHIFT_END, IRQ_ACK);
signal state_s: state_type;
signal nextstate_s: state_type;

signal ledg_data_in_reg_s 	:	std_logic_vector(15 downto 0);
signal ledg_shift_start_s 	:	std_logic;
signal ledg_shift_busy_s 	:	std_logic;
signal cmd_reg_s 				:	std_logic_vector(7 downto 0);

--!	@brief VHDL-Component für Bit-Shifting
component shift_leds is
  port(
   LEDG_DATA_IN:     	in  std_logic_vector(15 downto 0);	--paralleles Datenwort für LEDs
   LEDG_SHIFT_START:    in std_logic;		--Handshake: Top-Level startet mit '1' ein Shifting des LED-Datenwortes,
														--muss vom Top-Level wieder zurückgesetzt werden
   LEDG_SHIFT_BUSY:     out std_logic;		--zeigt dem Top-Level an, dass gerade ein Shifting läuft
   LEDG_SER_DATA:    	out std_logic;		--serielle LED-Daten (MSB first)
   LEDG_SER_CLK:    		out std_logic;		--serieller Daten-Clock für Schieberegister
   CLK: 			 			in  std_logic;
   RESET_n: 	 			in  std_logic
	);
end component shift_leds;

begin	--of architecture ****************************************************

--PortMap
  inst_shift_leds: shift_leds
  port map(
	LEDG_DATA_IN			=>	ledg_data_in_reg_s,
	LEDG_SHIFT_START		=>	ledg_shift_start_s,
	LEDG_SHIFT_BUSY		=>	ledg_shift_busy_s,
   LEDG_SER_DATA			=>	LEDG_SER_DATA,
   LEDG_SER_CLK			=>	LEDG_SER_CLK,
   CLK						=>	CLK,
   RESET_n					=>	RESET_n
	); 


--! @details NIOS-Interface SCHREIBEN und IRQ
	NIOS_Schreiben: process(reset_n, clk, write_n, ce_n, reg_addr, write_data, cmd_reg_s, state_s)
	begin
		if reset_n = '0' then
			cmd_reg_s <= (others => '0');
			ledg_data_in_reg_s  <= (others => '0');
			ledg_shift_start_s <= '0';
			irq <= '0';
			state_s <= IDLE;
			nextstate_s <= CMD_CHECK;				--Merkerl für nächsten state setzen
		elsif clk'EVENT and clk = '1' then
			if (write_n = '0' and ce_n = '0') then		--NIOS writes to interface registers
				case reg_addr is
					when '0' => 
						cmd_reg_s <= write_data(7 downto 0);	--schreiben durch NIOS ist nur auf bit 2 bis 0 sinnvoll,  busy (bit 3) sollte nur gelesen werden !
						state_s <= nextstate_s;       --jeder Schreibvorgang startet normalerweise eine Shift-Aktion, nur beim Rücksetzen des IRQ-bits muss
																--gleich in den state IRQ_ACK gesprungen werden. Steuerung über das Merkerl nextstate_s
																--normalerweise wird state  CMD_CHECK eingestellt...
					when '1' => 
						ledg_data_in_reg_s <= write_data(15 downto 0);
					when others => 
						null;
				end case;	
			end if;

			
--	Struktur des cmd_reg_s:
--	bit     7      6      5      4      3     2     1     0
--	                                   ___   ___   ___   ___
--												 busy   IRQ   IE    ShiftStart
 
			case state_s is
			
			when CMD_CHECK =>							--state wird bei NIOS-Schreibvorgang eingestellt (Ausnahme: beim IRQ-bit zurücksetzen --> state = IRQ_ACK)
				if cmd_reg_s(1) = '0' then  		--Interrupt (IE) is disabled ---> kein Interrupt Request möglich (IRQ-Bit '0')
					cmd_reg_s(2) <= '0';				--sicherheitshalber...
				end if;
				if (cmd_reg_s(0) = '1') then 		--ShiftStart-bit gesetzt: nur dann Start eines neuen Shift-Vorgangs
					ledg_shift_start_s <= '1';		--Startsignal aktivieren
					state_s <= BUSY_CHECK;
				else
					state_s <= IDLE;					--es war zwar ein Schreibvorgang (auf IE-bit), aber kein Shift-Start mit dabei
				end if;

			when BUSY_CHECK =>
				if ledg_shift_busy_s = '0' then 	--warten, bis busy-Signal zurückgesetzt ist, Shifting läuft nämlich gerade...
					state_s <= SHIFT_BEGIN;
				else
					state_s <= state_s;
				end if;

			when SHIFT_BEGIN =>
				if ledg_shift_busy_s = '1' then 		--warten, bis busy-Signal gesetzt wird, Shifting läuft ...
					cmd_reg_s(0) <= '0';					--ShiftStart-bit zurücksetzen
					ledg_shift_start_s <= '0';			--ShiftStart-Signal zurücksetzen
					cmd_reg_s(3) <= '1';					--Busy-bit setzen
					state_s <= SHIFT_END;
				else
					state_s <= state_s;
				end if;

			when SHIFT_END =>
				if ledg_shift_busy_s = '0' then 		--Shift ist beendet
					cmd_reg_s(3) <= '0';					--Busy-bit zurücksetzen
					state_s <= IDLE;						--eigentlich in IDLE gehen..., wenn IRQ disabled wäre
					if (cmd_reg_s(1) = '1') then		--IE-bit gesetzt --->  also IRQ auslösen
					   cmd_reg_s(2) <= '1';					--IRQ-bit setzen
						irq <= '1';							--irq-Leitung zum Nios
						state_s <= IRQ_ACK;				--NUR wenn IRQ ausgelöst wird, auf IRQ_ACK gehen (vorgegebenen State IDLE überschreiben)
						nextstate_s <= IRQ_ACK;			--dann auch auf IRQ_ACK springen, wenn NIOS IRQ-bit per Schreibvorgang zurücksetzt
					else										--keinen IRQ auslösen
						irq <= '0';							--Shift ist zwar beendet, aber keinen IRQ auslösen, state_s bleibt auf IDLE
					end if;
				else
					state_s <= state_s;
				end if;

			when IRQ_ACK =>
				if cmd_reg_s(2) = '0' then 			--IRQ wurde vom NIOS abgeholt und als Quittung wurde IRQ-bit vom NIOS wieder zurückgesetzt
					irq <= '0';								--IRQ wieder zurücksetzen
					state_s <= IDLE;
					nextstate_s <= CMD_CHECK;			--beim nächsten NIOS-Schreibvorgang kann es sich dann sinnvollerweise nur um ein Kommando handeln (Start oder IE-bit)
				else
					state_s <= state_s;
				end if;

			when IDLE =>
				NULL;

				when others => state_s <= IDLE;   
			end case;
						
		end if;
	end process;


	
--! @details NIOS-Interface LESEN
	NIOS_Lesen: process(reset_n, clk, read_n, ce_n, reg_addr, cmd_reg_s)
	begin
		if reset_n = '0' then
			read_data <= (others => '0');
		elsif clk'EVENT and clk = '1' then
			read_data <= (others => '0');
			if (read_n = '0' and ce_n = '0') then		--NIOS reads from interface command register
				case reg_addr is
					when '0' => 
						read_data(7 downto 0) <= cmd_reg_s;
					when others => null;						--no NIOS read from LED-data-register
				end case;
			end if;
		end if;
	end process;

end arch_nios_interface_shift_leds;
