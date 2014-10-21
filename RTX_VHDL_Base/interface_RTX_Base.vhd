-------------------------------------------------------------------
--! @file interface_RTX_Base.vhd
--! @author  Michael Riedel
--! @author  Marc Kossmann
--! @version V0.1
--! @date    21.10.2014
--!
--! @brief Interface Base-File (RTX) to embed
--!        Qsys-outputAssignments->))
--!
--! @par History:
--! @details V0.1 Riedel & Kossmann
--!          - first draft for milestone 1b
-------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee;
--! Use Logic Elements
USE ieee.std_logic_1164.all; 

--! Use Work Library
LIBRARY work;


--! @brief Base-Entity. This Entity describes the connection
--!        to DE2-Board
ENTITY interface_RTX_Base IS 
	PORT
	(
		CLOCK_50_B5B    : IN  STD_LOGIC; --! 50 MHz Oscillator
		CPU_RESET_n : IN  STD_LOGIC; --! CPU reset_n
		SRAM_A :  OUT  STD_LOGIC_VECTOR(17 DOWNTO 0); --! SRAM address lines
		SRAM_D :  INOUT  STD_LOGIC_VECTOR(15 DOWNTO 0); --! SRAM-data bus
		SRAM_CE_N :  OUT  STD_LOGIC; --! SRAM chip enable
 		SRAM_LB_N :  OUT  STD_LOGIC; --! SRAM lower byte line
		SRAM_OE_N :  OUT  STD_LOGIC; --! SRAM output enable (read) line
		SRAM_UB_N :  OUT  STD_LOGIC; --! SRAM upper byte linkage
		SRAM_WE_N :  OUT  STD_LOGIC; --! SRAM write enable line
		KEY  :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);  --! key-definition
		SW   :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);  --! sliding switches
--		LEDG :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0); --! green LEDs
		LEDR :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)  --! red LEDs
	);
END interface_RTX_Base;

--! @brief NIOS-Processor with SOPC-Peripherie
ARCHITECTURE a1 OF interface_RTX_Base IS 

component StepperMotorControl is
        port (
            clk_clk  : in    std_logic := 'X'; -- clk
            reset_reset_n    : in    std_logic := 'X'; -- reset_n
            sram_conduit_out_SRAM_OE_N  : out   std_logic_vector(0 downto 0);   -- SRAM_OE_N
            sram_conduit_out_SRAM_CE_N  : out   std_logic_vector(0 downto 0);   -- SRAM_CE_N
            sram_conduit_out_SRAM_BE_N  : out   std_logic_vector(1 downto 0);   -- SRAM_BE_N
            sram_conduit_out_SRAM_D     : inout std_logic_vector(15 downto 0) 
				                                := (others => 'X'); -- SRAM_D
            sram_conduit_out_SRAM_A     : out   std_logic_vector(18 downto 0);   -- SRAM_A
            sram_conduit_out_SRAM_WE_N  : out   std_logic_vector(0 downto 0);    -- SRAM_WE_N
--            outclk0_out_clk_out                   : out   std_logic;  -- clk
            interface_comp_0_conduit_mykey       : in    std_logic_vector(2 downto 0)  
				                                           := (others => 'X'); -- mykey
            interface_comp_0_conduit_myswitch    : in    std_logic_vector(7 downto 0)  
				                                           := (others => 'X'); -- mySwitch
--            gruenleds_from_the_interface_comp : out   std_logic_vector(7 downto 0); 
				                                                      -- gruenleds
            interface_comp_0_conduit_redleds   : out   std_logic_vector(7 downto 0)  
				                                                       -- redleds
        );
    end component StepperMotorControl;

signal be_n: STD_LOGIC_VECTOR(1 downto 0); --! Byte enable signals
BEGIN 
   -- RAM
   SRAM_LB_N <= be_n(0);
   SRAM_UB_N <= be_n(1);
			
    u0 : component StepperMotorControl
        port map (
            clk_clk           => CLOCK_50_B5B,   --       clk_50MHz_clk_in.clk
            reset_reset_n             => CPU_RESET_n,    -- clk_50MHz_clk_in_reset.reset_n
            sram_conduit_out_SRAM_OE_N(0)        => SRAM_OE_N,  --  SRAM_Conduit_out.SRAM_OE_N
            sram_conduit_out_SRAM_CE_N(0)        => SRAM_CE_N,  --                  .SRAM_CE_N
            sram_conduit_out_SRAM_BE_N           => be_n,       --                  .SRAM_BE_N
            sram_conduit_out_SRAM_D              => SRAM_D,     --                  .SRAM_D
            sram_conduit_out_SRAM_A(18 downto 1) => SRAM_A,     --                  .SRAM_A
            sram_conduit_out_SRAM_WE_N(0)        => SRAM_WE_N,  --                  .SRAM_WE_N
				                                                -- interface_comp_conduit
            interface_comp_0_conduit_mykey       => KEY(2 DOWNTO 0),  -- .mykey 
            interface_comp_0_conduit_myswitch    => SW,               -- .mySwitch
--            gruenleds_from_the_interface_comp => LEDG,             -- .gruenleds
            interface_comp_0_conduit_redleds   => LEDR              -- .redleds
        );
END a1;