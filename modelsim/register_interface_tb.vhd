-----------------------------------------------------------------------------
--! @file register_interface_tb.vhd
--! @author   Marc Kossmann
--! @author   Michael Riedel
--! @version  v2.0.0
--! @date     05.12.2014
--!
--! @brief    Testbench for Register Component
--! @details  Tests full functionality of component
--! @par History:
--! @details      v0.1.0 06.11.2014 Kossmann
--!               - first draft
--! @details      v0.1.1 07.11.2014 Kossmann
--!               - finished reset_n task
--! @details      v1.0.0 18.11.2014 Riedel & Kossmann
--!               - verified functionality -> release MS2
--! @details      v1.0.1 23.11.2014 Riedel & Kossmann
--!               - added test of reserved mode
--! @details      v2.0.0 05.12.2014 Riedel & Kossmann
--!               - release milestone 3b
-----------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee;
--! Use Logic Elements
USE ieee.std_logic_1164.all;
--! Use Conversion Functions
USE ieee.STD_LOGIC_SIGNED.all;

--! @brief    Entity of testbench for register_interface
ENTITY register_interface_tb  IS 
END;

--! @brief    Architecture of testbench for register_interface
--! @details  first test if all registers can be written
--!           then resets everything
--!           test if set and clear is working the right way
ARCHITECTURE register_interface_tb_arch OF register_interface_tb IS

  SIGNAL write_n    :  STD_LOGIC                      := '1';
  SIGNAL greenleds  :  STD_LOGIC_VECTOR (7 DOWNTO 0)  := (others => '0');
  SIGNAL addr       :  STD_LOGIC_VECTOR (2 DOWNTO 0)  := "111";
  SIGNAL clock      :  STD_LOGIC                      := '0';
  SIGNAL ce_n       :  STD_LOGIC                      := '1';
  SIGNAL reset_n    :  STD_LOGIC                      := '0';
  SIGNAL read_n     :  STD_LOGIC                      := '1';
  SIGNAL redleds    :  STD_LOGIC_VECTOR (7 DOWNTO 0)  := (others => '0');
  SIGNAL write_data :  STD_LOGIC_VECTOR (31 DOWNTO 0) := (others => '0');
  SIGNAL irq        :  STD_LOGIC                      := '0';
  SIGNAL read_data  :  STD_LOGIC_VECTOR (31 DOWNTO 0) := (others => '0');
  SIGNAL run        :  STD_LOGIC                      := '0';                     
  SIGNAL direction  :  STD_LOGIC                      := '0';                    
  SIGNAL mode       :  STD_LOGIC_VECTOR(3 DOWNTO 0)   := (others => '0'); 
  SIGNAL speed      :  STD_LOGIC_VECTOR(2 DOWNTO 0)   := (others => '0');
  SIGNAL steps      :  STD_LOGIC_VECTOR(31 DOWNTO 0)  := (others => '0');
  SIGNAL ir         :  STD_LOGIC                      := '0';
  
  COMPONENT register_interface  
    PORT ( 
      clock         : in  STD_LOGIC;                      --! Avalon clock
      reset_n       : in  STD_LOGIC;                      --! Avalon reset the component
      ce_n          : in  STD_LOGIC;                      --! Avalon chip enable
      read_n        : in  STD_LOGIC;                      --! Avalon set read-request
      write_n       : in  STD_LOGIC;                      --! Avalon set write-request
      addr          : in  STD_LOGIC_VECTOR (2 DOWNTO 0);  --! Avalon address bus (selects the register)
      write_data    : in  STD_LOGIC_VECTOR (31 DOWNTO 0); --! Avalon write data to selected register
      read_data     : out STD_LOGIC_VECTOR (31 DOWNTO 0); --! Avalon read data from selected register       
      irq           : out STD_LOGIC;                      --! Avalon IRQ line
      greenleds     : out STD_LOGIC_VECTOR (7 DOWNTO 0);  --! external: green leds
      redleds       : out STD_LOGIC_VECTOR (7 DOWNTO 0);  --! external: red leds
      run           : out STD_LOGIC;                      --! enable signal for mcu
      direction     : out STD_LOGIC;                      --! direction signal for mcu
      mode          : out STD_LOGIC_VECTOR(3 DOWNTO 0);   --! output of Mode bits for mcu
      speed         : out STD_LOGIC_VECTOR(2 DOWNTO 0);   --! output of speedReg for mcu
      steps         : in  STD_LOGIC_VECTOR(31 DOWNTO 0);  --! input for stepsReg for mcu
      ir            : in  STD_LOGIC                       --! input request of mcu
      );
  END COMPONENT;

BEGIN
  DUT  : register_interface  
    PORT MAP ( 
      write_n       => write_n,
      greenleds     => greenleds,
      addr          => addr,
      clock         => clock,
      ce_n          => ce_n,
      reset_n       => reset_n,
      read_n        => read_n,
      redleds       => redleds,
      write_data    => write_data,
      irq           => irq,
      run           => run,
      direction     => direction,
      mode          => mode,
      speed         => speed,
      steps         => steps,
      ir            => ir
    ); 
      
  -- first test if all registers can be written
  -- then resets everything
  -- test if set and clear is working the right way
  clock   <= NOT clock AFTER 10 ns;
  ce_n    <= '0' AFTER 20 ns;
  reset_n <= '1' AFTER 20 ns,
             '0' AFTER 140 ns,
             '1' AFTER 150 ns;        
  write_n <= '0' AFTER 30 ns;       
  read_n  <= '0' AFTER 30 ns;
  addr    <= "000" AFTER 30 ns,    -- ctrlReg
             "001" AFTER 50 ns,    -- ctrlSetReg
             "010" AFTER 70 ns,    -- ctrlClrReg
             "011" AFTER 90 ns,    -- speedReg
             "100" AFTER 110 ns,   -- stepsReg
                                -- reset; now testing set and clear functionality
             "000" AFTER 150 ns,   -- ctrlReg
             "001" AFTER 170 ns,   -- ctrlSetReg
             "010" AFTER 190 ns,   -- ctrlClrReg
             "000" AFTER 200 ns,   -- ctrlReg
             "111" AFTER 230 ns;   -- reserved
  write_data(7 DOWNTO 0) <= "11111111" AFTER 30 ns,   
                            "10101010" AFTER 150 ns,
                            "01010101" AFTER 170 ns,
                            "10101010" AFTER 190 ns,
                            "00000000" AFTER 210 ns;
  steps(15 DOWNTO 8)     <= "11111111" AFTER 130 ns;
  ir                     <= '1' AFTER 130 ns;
  
  finish_sim_time : PROCESS
  BEGIN
    WAIT FOR 3000 ns;
    ASSERT false
      REPORT "simulation finished"
      SEVERITY failure;
  END PROCESS finish_sim_time;
END;

