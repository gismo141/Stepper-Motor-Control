--! @file    	top_level_de0_nano_nios_resvec_sdram_mit_sdram_pll_ucosii.vhd
--! @brief   	Demo-Top-Level-File für DE0_CycloneIII_Eval_Board (Nr. 11.35) \b MIT QSys/NIOS
--! @details
--!	Dieses File kann als Demo-Basis für QSys-/VHDL-/NIOS-Applikationen verwendet werden. \n
--!	Konfiguration für DE0-Nano \b MIT QSys/NIOS und UCOSII \n
--!	DE0-Nano-QSys mit/ohne Flash-Board ---> GPIO-0 ist NICHT verfügbar/ist verfügbar ---> Source entsprechend ein/auskommentieren \n
--!	DE0-Nano-QSys mit SDRAM-PLL        ---> Source entsprechend ein/auskommentieren \n
--!	Ansteuerung der 16 grünen LEDs per Schieberegister \n
--!	Einbindung des Moduls shift_leds.vhd\n
--!	Lauflicht der grünen LEDs \b AUF dem DE0-Nano als "Lebenszeichen" \n
--!	GPIOs als auskommentierte Muster-I/O-Ports angelegt, ggf. müssen die Nios-Pios geändert werden\n
--!
--! @note 	Dieses Demo-File wird im E4-DE0-Eval-Board-Kit als Grundlage mitgeliefert.
--!			Deshalb sind die GPIOs auf Toplevel \b auskommentiert, damit das Risiko von Schäden durch Pegelprobleme an den I/O-Ports minimiert wird!
--!			Durch die Auskommentierung werden die Port-Pins zu "unused pins = tristated".
--!
--! @note 	Die eingebundene QSys-NIOS-Komponente stellt das Flash-Interface als auskommentierte Musterlösung zur Verfügung, obwohl das DE0-Nano-Board
--!			im Eval-Kit \b OHNE Flashboard geliefert wird und der Toplevel auch OHNE Flashboard konfiguriert ist.
--!
--! compilation: QuartusII, V12.1 SP1 \n
--! simulation:  ModelSim, V10.1b \n
--! 
--! @author  JMayr
--! @version V1.2
--! @date    15.02.2013
--!
--! \n@par History:
--! @details V1.2 15.02.2013 JMayr
--!      - Zuschnitt ausschließlich auf DE0-Nano, weil CycloneIII-Board de facto nicht zum Einsatz kommt
--!
--! @details V1.0 14.06.2012 JMayr
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
USE IEEE.STD_LOGIC_ARITH.ALL;     -- fuer conv functions erforderlich
USE IEEE.STD_LOGIC_unsigned.ALL;  -- fuer conv functions erforderlich
--USE IEEE.STD_LOGIC_signed.ALL;  -- alternativ zur unsigned-Lib...
--USE ieee.numeric_std.ALL;

--LIBRARY modelsim_lib;
--use modelsim_lib.util.all;

--! @ingroup VHDL
--! @brief   Portdefinition zum Eval_Board mit DE0-Nano, MIT NIOS
entity top_level_de0_nano_nios_resvec_sdram_mit_sdram_pll_ucosii is
	port(
		LEDG_DE0					:OUT		std_logic_vector(7 downto 0);		--! für Lauflicht \b auf dem DE0-Nano als "Lebenszeichen"
		KEY_EVAL					:IN		std_logic_vector(3 downto 0);
		SW_EVAL					:IN		std_logic_vector(7 downto 0);
		LEDR_EVAL				:OUT		std_logic_vector(7 downto 0);
		LEDG_SER_DATA_EVAL	:OUT		std_logic;								--! serielle LED-Daten (MSB first)
		LEDG_SER_CLK_EVAL		:OUT		std_logic;								--! serieller Daten-Clock für Schieberegister
		
--Portbezeichnungen gemäß DE0-Nano-Dokumentation
--		GPIO_0_IN0		:	IN		std_logic;								--N.C., Port vom DE0-Nano wird nicht auf Eval-Board / IO_ExpH_0 / Pin 1 herausgeführt
--		GPIO_02			:	OUT	std_logic;								--N.C., Port vom DE0-Nano wird nicht auf Eval-Board / IO_ExpH_0 / Pin 5 herausgeführt
--		GPIO_1_IN1		:	IN		std_logic;								--nicht als Port verfügbar, weil über UReset_n als Resetsignal zum DE0-Nano / Pin R9 verwendet

--wenn DE0-Nano MIT Flashboard ---> die 2 Zeilen auskommentieren, da dann Ports nicht verfügbar sind
--		GPIO_0_IN1		:	IN		std_logic;								--!!!!!!!!!! nicht verfügbar, wenn Flashboard auf GPIO_0 gesteckt
--		GPIO_0			:	OUT	std_logic_vector(33 downto 0);	--!!!!!!!!!! nicht verfügbar, wenn Flashboard auf GPIO_0 gesteckt
																					--KEIN Signal an Pin 2, weil Port not connected (siehe oben)
--*********************************************************************

--Ports immer verfügbar
--		GPIO_1_IN0		:	IN		std_logic;
--		GPIO_12			:	OUT	std_logic;
		
--		GPIO_2_IN		:	IN		std_logic_vector(2 downto 0);
--		GPIO_2			:	OUT	std_logic_vector(12 downto 0);

--DE0-Nano-on-board-SDRAM
		DRAM_ADDR 		:OUT   	std_logic_vector(12 downto 0);
		DRAM_BA 			:OUT   	std_logic_vector(1 downto 0);
		DRAM_CAS_N		:OUT   	std_logic;
		DRAM_CKE			:OUT   	std_logic;
		DRAM_CLK			:OUT   	std_logic;--! DRAM_CLK separat verdrahten !
		DRAM_CS_N		:OUT   	std_logic;
		DRAM_DQ 			:INOUT 	std_logic_vector(15 downto 0);
		DRAM_DQM			:OUT   	std_logic_vector(1 downto 0);
		DRAM_RAS_N		:OUT   	std_logic;
		DRAM_WE_N		:OUT   	std_logic;
		
		RESET_n			:IN 		std_logic;
		CLOCK_50			:IN 		std_logic
	);
end entity top_level_de0_nano_nios_resvec_sdram_mit_sdram_pll_ucosii;


--! @brief Architecture für Konfiguration mit DE0-Nano-Board
architecture arch_top_level_de0_nano_nios_resvec_sdram_mit_sdram_pll_ucosii of top_level_de0_nano_nios_resvec_sdram_mit_sdram_pll_ucosii is

constant count_div_c	: integer := 2**24;	--! Vorteiler für Lauflicht der grünen LEDs auf dem DE0-Nano

--! @brief QSys-NIOS-Component für DE0-Nano \b OHNE Flashboard, MIT SDRAM-PLL
component de0_nano_resvec_sdram_mit_sdram_pll_ucosii is		--mit SDRAM-PLL
  port (
	zs_addr_from_the_sdram                           		: out   std_logic_vector(12 downto 0);                    -- addr
	zs_ba_from_the_sdram                             		: out   std_logic_vector(1 downto 0);                     -- ba
	zs_cas_n_from_the_sdram                          		: out   std_logic;                                        -- cas_n
	zs_cke_from_the_sdram                            		: out   std_logic;                                        -- cke
	zs_cs_n_from_the_sdram                           		: out   std_logic;                                        -- cs_n
	zs_dq_to_and_from_the_sdram                      		: inout std_logic_vector(15 downto 0) := (others => 'X'); -- dq
	zs_dqm_from_the_sdram                            		: out   std_logic_vector(1 downto 0);                     -- dqm
	zs_ras_n_from_the_sdram                          		: out   std_logic;                                        -- ras_n
	zs_we_n_from_the_sdram                           		: out   std_logic;                                        -- we_n
	
--PLL für SDRAM	(bei Lösung ohne PLL ---> auskommentieren)
	areset_to_the_sdram_pll                            	: in    std_logic                     := 'X';             -- export
	locked_from_the_sdram_pll                          	: out   std_logic;                                        -- export
	phasedone_from_the_sdram_pll                       	: out   std_logic;                                        -- export
	SDRAM_PLL_c1_out                                      : out   std_logic;                                        -- clk

	LEDG_SER_DATA_from_the_comp_nios_interface_shift_leds : out   std_logic;                                        -- DATA
	LEDG_SER_CLK_from_the_comp_nios_interface_shift_leds  : out   std_logic;                                        -- CLK

   in_port_to_the_key3_0                                 : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- export

   out_port_from_the_LEDR7_0                             : out   std_logic_vector(7 downto 0);                     -- export
		
	clk                                              		: in    std_logic                     := 'X';             -- clk
	reset_n                                          		: in    std_logic                     := 'X'	           -- reset_n
  );
end component de0_nano_resvec_sdram_mit_sdram_pll_ucosii;		--mit PLL


begin	--of architecture ****************************************************
--wenn PLL verwendet wird ---> auskommentieren, ansonsten explizit verdrahten
--DRAM_CLK <= CLOCK_50;	  	


inst_de0_nano_resvec_sdram_mit_sdram_pll_ucosii: de0_nano_resvec_sdram_mit_sdram_pll_ucosii
port map (
	zs_addr_from_the_sdram                          =>	DRAM_ADDR,
	zs_ba_from_the_sdram                            =>	DRAM_BA,
	zs_cas_n_from_the_sdram                         =>	DRAM_CAS_N,
	zs_cke_from_the_sdram                           =>	DRAM_CKE,
	zs_cs_n_from_the_sdram                          =>	DRAM_CS_N,
	zs_dq_to_and_from_the_sdram                     =>	DRAM_DQ,
	zs_dqm_from_the_sdram                           =>	DRAM_DQM,
	zs_ras_n_from_the_sdram                         =>	DRAM_RAS_N,
	zs_we_n_from_the_sdram                          =>	DRAM_WE_N,
	
--PLL für SDRAM	(bei Lösung ohne PLL ---> auskommentieren)
	areset_to_the_sdram_pll									=> '0',
	locked_from_the_sdram_pll                       => open,
	phasedone_from_the_sdram_pll                    => open,
	SDRAM_PLL_c1_out                                => DRAM_CLK,

--aktivieren bzw. Mapping ergänzen, wenn Flashboard verwendet wird
	
	LEDG_SER_DATA_from_the_comp_nios_interface_shift_leds =>	LEDG_SER_DATA_EVAL,
	LEDG_SER_CLK_from_the_comp_nios_interface_shift_leds  =>	LEDG_SER_CLK_EVAL,
	
   in_port_to_the_key3_0                 				=>	KEY_EVAL,

   out_port_from_the_LEDR7_0								=>	LEDR_EVAL,
	
	clk                                             =>	CLOCK_50,
	reset_n                                         =>	RESET_n
);


end arch_top_level_de0_nano_nios_resvec_sdram_mit_sdram_pll_ucosii;
