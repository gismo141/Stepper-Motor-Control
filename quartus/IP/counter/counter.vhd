-------------------------------------------------------------------------------
--! @file         counter.vhd
--! @author       Marc Kossmann
--! @author       Michael Riedel
--! @version      v1.0.0
--! @date         05.12.2014
--!
--! @brief        Counter which divides the clock according to the divider
--! @details      Provide 5 ms time base when divider = 250000.
--! @par History:
--! @details      v0.1.0 23.11.2014 Kossmann
--!               - first draft
--! @details      v0.1.1 25.11.2014 Riedel
--!               - corrected formatting
--!               - renamed component to counter
--!               - re-implemented counter according to digital ciruit design
--! @details      v0.1.2 28.11.2014 Kossmann
--!               - improved documentation
--! @details      v1.0.0 05.12.2014 Riedel & Kossmann
--!               - release milestone 3b
-------------------------------------------------------------------------------

--! Use Standard Library
LIBRARY ieee; 
--! Use Logic Elements
USE ieee.std_logic_1164.all;

--! @brief Counter-Component
ENTITY counter is
  GENERIC
  (
    --! @brief    Prescaler for PWM-signal.
    --! @details  For this purpose 2,5 ms are used as minimal pulse-width.
    --! @details  The prescaler is calculated with the given and desired frequency
    --!     via the following formula:
    --!     \f{equation*}{
    --!       \text{prescaler}         = \frac{f_{\text{clock}} \text{Hz}}{f_{\text{prescaler}} \text{Hz}}
    --!     \f}
    --!     e.g.:
    --!     \f{equation*}{
    --!       \left.\begin{aligned}
    --!         f_{\text{prescaler}}  &= \frac{2}{5}\,\text{ms} \newline
    --!                               &= 400\,\text{Hz} \newline\newline
    --!         \text{prescaler}      &= \frac{50\,\text{Mhz}}{400\,\text{Hz}} \newline
    --!                               &= 125000 \newline
    --!       \end{aligned}
    --!     \right\}
    --!     \qquad \text{pulse-width: 2.5 ms}
    --!     \f}
    --! @details For simulation-purpose the divider was set to 125 for faster wave generation.
    divider : INTEGER
  );
  PORT
  (
    clock     : IN  STD_LOGIC;    --! input clock
    reset_n   : IN  STD_LOGIC;    --! global reset
    enable    : IN  STD_LOGIC;    --! enables component
    clk_out   : OUT STD_LOGIC     --! divided clock output
  );
END counter;

--! @brief    Architecture of counter
--! @details  realized functionality:
--!           - divides clock with generic clock divider
architecture counter_arch of counter is
  SIGNAL counter : INTEGER := 0;
BEGIN
  --! @brief counting process incrementing internal signal value
  count: PROCESS(reset_n, clock, enable)
  BEGIN
    IF(reset_n = '0') THEN
      counter <= 0;
    ELSIF(rising_edge(clock) AND enable = '1') THEN
      IF(counter = divider - 1) THEN
        counter <= 0;
      ELSE counter <= counter + 1;
      END IF;
    END IF; 
  END PROCESS;
  --! @brief process to output the divided clock
  output: PROCESS(counter)
  BEGIN 
    IF(counter = 0) THEN
      clk_out <= '1';
    ELSE
      clk_out <= '0';
    END IF;
  END PROCESS;
END counter_arch;