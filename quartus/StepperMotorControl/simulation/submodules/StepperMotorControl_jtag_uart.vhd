--Legal Notice: (C)2014 Altera Corporation. All rights reserved.  Your
--use of Altera Corporation's design tools, logic functions and other
--software and tools, and its AMPP partner logic functions, and any
--output files any of the foregoing (including device programming or
--simulation files), and any associated documentation or information are
--expressly subject to the terms and conditions of the Altera Program
--License Subscription Agreement or other applicable license agreement,
--including, without limitation, that your use is for the sole purpose
--of programming logic devices manufactured by Altera and sold by Altera
--or its authorized distributors.  Please refer to the applicable
--agreement for further details.


-- turn off superfluous VHDL processor warnings 
-- altera message_level Level1 
-- altera message_off 10034 10035 10036 10037 10230 10240 10030 

library altera;
use altera.altera_europa_support_lib.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library std;
use std.textio.all;

entity StepperMotorControl_jtag_uart_sim_scfifo_w is 
        port (
              -- inputs:
                 signal clk : IN STD_LOGIC;
                 signal fifo_wdata : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                 signal fifo_wr : IN STD_LOGIC;

              -- outputs:
                 signal fifo_FF : OUT STD_LOGIC;
                 signal r_dat : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                 signal wfifo_empty : OUT STD_LOGIC;
                 signal wfifo_used : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
              );
end entity StepperMotorControl_jtag_uart_sim_scfifo_w;


architecture europa of StepperMotorControl_jtag_uart_sim_scfifo_w is

begin

--synthesis translate_off
    process (clk)
    VARIABLE write_line : line;
    begin
      if clk'event and clk = '1' then
        if std_logic'(fifo_wr) = '1' then 
          write(write_line, character'val(CONV_INTEGER(fifo_wdata)));
          write(write_line, string'(""));
          write(output, write_line.all);
          deallocate (write_line);
        end if;
      end if;

    end process;

    wfifo_used <= A_REP(std_logic'('0'), 6);
    r_dat <= A_REP(std_logic'('0'), 8);
    fifo_FF <= std_logic'('0');
    wfifo_empty <= std_logic'('1');
--synthesis translate_on

end europa;



-- turn off superfluous VHDL processor warnings 
-- altera message_level Level1 
-- altera message_off 10034 10035 10036 10037 10230 10240 10030 

library altera;
use altera.altera_europa_support_lib.all;

library altera_mf;
use altera_mf.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library lpm;
use lpm.all;

entity StepperMotorControl_jtag_uart_scfifo_w is 
        port (
              -- inputs:
                 signal clk : IN STD_LOGIC;
                 signal fifo_clear : IN STD_LOGIC;
                 signal fifo_wdata : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                 signal fifo_wr : IN STD_LOGIC;
                 signal rd_wfifo : IN STD_LOGIC;

              -- outputs:
                 signal fifo_FF : OUT STD_LOGIC;
                 signal r_dat : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                 signal wfifo_empty : OUT STD_LOGIC;
                 signal wfifo_used : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
              );
end entity StepperMotorControl_jtag_uart_scfifo_w;


architecture europa of StepperMotorControl_jtag_uart_scfifo_w is
--synthesis translate_off
component StepperMotorControl_jtag_uart_sim_scfifo_w is 
           port (
                 -- inputs:
                    signal clk : IN STD_LOGIC;
                    signal fifo_wdata : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                    signal fifo_wr : IN STD_LOGIC;

                 -- outputs:
                    signal fifo_FF : OUT STD_LOGIC;
                    signal r_dat : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                    signal wfifo_empty : OUT STD_LOGIC;
                    signal wfifo_used : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
                 );
end component StepperMotorControl_jtag_uart_sim_scfifo_w;

--synthesis translate_on
--synthesis read_comments_as_HDL on
--  component scfifo is
--GENERIC (
--      lpm_hint : STRING;
--        lpm_numwords : NATURAL;
--        lpm_showahead : STRING;
--        lpm_type : STRING;
--        lpm_width : NATURAL;
--        lpm_widthu : NATURAL;
--        overflow_checking : STRING;
--        underflow_checking : STRING;
--        use_eab : STRING
--      );
--    PORT (
--    signal full : OUT STD_LOGIC;
--        signal q : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
--        signal usedw : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
--        signal empty : OUT STD_LOGIC;
--        signal rdreq : IN STD_LOGIC;
--        signal aclr : IN STD_LOGIC;
--        signal data : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
--        signal clock : IN STD_LOGIC;
--        signal wrreq : IN STD_LOGIC
--      );
--  end component scfifo;
--synthesis read_comments_as_HDL off
                signal internal_fifo_FF :  STD_LOGIC;
                signal internal_r_dat :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal internal_wfifo_empty :  STD_LOGIC;
                signal internal_wfifo_used :  STD_LOGIC_VECTOR (5 DOWNTO 0);

begin

  --vhdl renameroo for output signals
  fifo_FF <= internal_fifo_FF;
  --vhdl renameroo for output signals
  r_dat <= internal_r_dat;
  --vhdl renameroo for output signals
  wfifo_empty <= internal_wfifo_empty;
  --vhdl renameroo for output signals
  wfifo_used <= internal_wfifo_used;
--synthesis translate_off
    --the_StepperMotorControl_jtag_uart_sim_scfifo_w, which is an e_instance
    the_StepperMotorControl_jtag_uart_sim_scfifo_w : StepperMotorControl_jtag_uart_sim_scfifo_w
      port map(
        fifo_FF => internal_fifo_FF,
        r_dat => internal_r_dat,
        wfifo_empty => internal_wfifo_empty,
        wfifo_used => internal_wfifo_used,
        clk => clk,
        fifo_wdata => fifo_wdata,
        fifo_wr => fifo_wr
      );


--synthesis translate_on
--synthesis read_comments_as_HDL on
--    wfifo : scfifo
--      generic map(
--        lpm_hint => "RAM_BLOCK_TYPE=AUTO",
--        lpm_numwords => 64,
--        lpm_showahead => "OFF",
--        lpm_type => "scfifo",
--        lpm_width => 8,
--        lpm_widthu => 6,
--        overflow_checking => "OFF",
--        underflow_checking => "OFF",
--        use_eab => "ON"
--      )
--      port map(
--                aclr => fifo_clear,
--                clock => clk,
--                data => fifo_wdata,
--                empty => internal_wfifo_empty,
--                full => internal_fifo_FF,
--                q => internal_r_dat,
--                rdreq => rd_wfifo,
--                usedw => internal_wfifo_used,
--                wrreq => fifo_wr
--      );
--
--synthesis read_comments_as_HDL off

end europa;



-- turn off superfluous VHDL processor warnings 
-- altera message_level Level1 
-- altera message_off 10034 10035 10036 10037 10230 10240 10030 

library altera;
use altera.altera_europa_support_lib.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity StepperMotorControl_jtag_uart_sim_scfifo_r is 
        port (
              -- inputs:
                 signal clk : IN STD_LOGIC;
                 signal fifo_rd : IN STD_LOGIC;
                 signal rst_n : IN STD_LOGIC;

              -- outputs:
                 signal fifo_EF : OUT STD_LOGIC;
                 signal fifo_rdata : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                 signal rfifo_full : OUT STD_LOGIC;
                 signal rfifo_used : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
              );
end entity StepperMotorControl_jtag_uart_sim_scfifo_r;


architecture europa of StepperMotorControl_jtag_uart_sim_scfifo_r is
                signal bytes_left :  STD_LOGIC_VECTOR (31 DOWNTO 0);
                signal fifo_rd_d :  STD_LOGIC;
                signal internal_rfifo_full1 :  STD_LOGIC;
                signal new_rom :  STD_LOGIC;
                signal num_bytes :  STD_LOGIC_VECTOR (31 DOWNTO 0);
                signal rfifo_entries :  STD_LOGIC_VECTOR (6 DOWNTO 0);

begin

  --vhdl renameroo for output signals
  rfifo_full <= internal_rfifo_full1;
--synthesis translate_off
    -- Generate rfifo_entries for simulation
    process (clk, rst_n)
    begin
      if rst_n = '0' then
        bytes_left <= std_logic_vector'("00000000000000000000000000000000");
        fifo_rd_d <= std_logic'('0');
      elsif clk'event and clk = '1' then
        fifo_rd_d <= fifo_rd;
        -- decrement on read
        if std_logic'(fifo_rd_d) = '1' then 
          bytes_left <= A_EXT (((std_logic_vector'("0") & (bytes_left)) - (std_logic_vector'("00000000000000000000000000000000") & (A_TOSTDLOGICVECTOR(std_logic'('1'))))), 32);
        end if;
        -- catch new contents
        if std_logic'(new_rom) = '1' then 
          bytes_left <= num_bytes;
        end if;
      end if;

    end process;

    fifo_EF <= to_std_logic((bytes_left = std_logic_vector'("00000000000000000000000000000000")));
    internal_rfifo_full1 <= to_std_logic((bytes_left>std_logic_vector'("00000000000000000000000001000000")));
    rfifo_entries <= A_EXT (A_WE_StdLogicVector((std_logic'((internal_rfifo_full1)) = '1'), std_logic_vector'("00000000000000000000000001000000"), bytes_left), 7);
    rfifo_used <= rfifo_entries(5 DOWNTO 0);
    new_rom <= std_logic'('0');
    num_bytes <= std_logic_vector'("00000000000000000000000000000000");
    fifo_rdata <= std_logic_vector'("00000000");
--synthesis translate_on

end europa;



-- turn off superfluous VHDL processor warnings 
-- altera message_level Level1 
-- altera message_off 10034 10035 10036 10037 10230 10240 10030 

library altera;
use altera.altera_europa_support_lib.all;

library altera_mf;
use altera_mf.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library lpm;
use lpm.all;

entity StepperMotorControl_jtag_uart_scfifo_r is 
        port (
              -- inputs:
                 signal clk : IN STD_LOGIC;
                 signal fifo_clear : IN STD_LOGIC;
                 signal fifo_rd : IN STD_LOGIC;
                 signal rst_n : IN STD_LOGIC;
                 signal t_dat : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                 signal wr_rfifo : IN STD_LOGIC;

              -- outputs:
                 signal fifo_EF : OUT STD_LOGIC;
                 signal fifo_rdata : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                 signal rfifo_full : OUT STD_LOGIC;
                 signal rfifo_used : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
              );
end entity StepperMotorControl_jtag_uart_scfifo_r;


architecture europa of StepperMotorControl_jtag_uart_scfifo_r is
--synthesis translate_off
component StepperMotorControl_jtag_uart_sim_scfifo_r is 
           port (
                 -- inputs:
                    signal clk : IN STD_LOGIC;
                    signal fifo_rd : IN STD_LOGIC;
                    signal rst_n : IN STD_LOGIC;

                 -- outputs:
                    signal fifo_EF : OUT STD_LOGIC;
                    signal fifo_rdata : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                    signal rfifo_full : OUT STD_LOGIC;
                    signal rfifo_used : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
                 );
end component StepperMotorControl_jtag_uart_sim_scfifo_r;

--synthesis translate_on
--synthesis read_comments_as_HDL on
--  component scfifo is
--GENERIC (
--      lpm_hint : STRING;
--        lpm_numwords : NATURAL;
--        lpm_showahead : STRING;
--        lpm_type : STRING;
--        lpm_width : NATURAL;
--        lpm_widthu : NATURAL;
--        overflow_checking : STRING;
--        underflow_checking : STRING;
--        use_eab : STRING
--      );
--    PORT (
--    signal full : OUT STD_LOGIC;
--        signal q : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
--        signal usedw : OUT STD_LOGIC_VECTOR (5 DOWNTO 0);
--        signal empty : OUT STD_LOGIC;
--        signal rdreq : IN STD_LOGIC;
--        signal aclr : IN STD_LOGIC;
--        signal data : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
--        signal clock : IN STD_LOGIC;
--        signal wrreq : IN STD_LOGIC
--      );
--  end component scfifo;
--synthesis read_comments_as_HDL off
                signal internal_fifo_EF :  STD_LOGIC;
                signal internal_fifo_rdata :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal internal_rfifo_full :  STD_LOGIC;
                signal internal_rfifo_used :  STD_LOGIC_VECTOR (5 DOWNTO 0);

begin

  --vhdl renameroo for output signals
  fifo_EF <= internal_fifo_EF;
  --vhdl renameroo for output signals
  fifo_rdata <= internal_fifo_rdata;
  --vhdl renameroo for output signals
  rfifo_full <= internal_rfifo_full;
  --vhdl renameroo for output signals
  rfifo_used <= internal_rfifo_used;
--synthesis translate_off
    --the_StepperMotorControl_jtag_uart_sim_scfifo_r, which is an e_instance
    the_StepperMotorControl_jtag_uart_sim_scfifo_r : StepperMotorControl_jtag_uart_sim_scfifo_r
      port map(
        fifo_EF => internal_fifo_EF,
        fifo_rdata => internal_fifo_rdata,
        rfifo_full => internal_rfifo_full,
        rfifo_used => internal_rfifo_used,
        clk => clk,
        fifo_rd => fifo_rd,
        rst_n => rst_n
      );


--synthesis translate_on
--synthesis read_comments_as_HDL on
--    rfifo : scfifo
--      generic map(
--        lpm_hint => "RAM_BLOCK_TYPE=AUTO",
--        lpm_numwords => 64,
--        lpm_showahead => "OFF",
--        lpm_type => "scfifo",
--        lpm_width => 8,
--        lpm_widthu => 6,
--        overflow_checking => "OFF",
--        underflow_checking => "OFF",
--        use_eab => "ON"
--      )
--      port map(
--                aclr => fifo_clear,
--                clock => clk,
--                data => t_dat,
--                empty => internal_fifo_EF,
--                full => internal_rfifo_full,
--                q => internal_fifo_rdata,
--                rdreq => fifo_rd,
--                usedw => internal_rfifo_used,
--                wrreq => wr_rfifo
--      );
--
--synthesis read_comments_as_HDL off

end europa;



-- turn off superfluous VHDL processor warnings 
-- altera message_level Level1 
-- altera message_off 10034 10035 10036 10037 10230 10240 10030 

library altera;
use altera.altera_europa_support_lib.all;

library altera_mf;
use altera_mf.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library lpm;
use lpm.all;

entity StepperMotorControl_jtag_uart is 
        port (
              -- inputs:
                 signal av_address : IN STD_LOGIC;
                 signal av_chipselect : IN STD_LOGIC;
                 signal av_read_n : IN STD_LOGIC;
                 signal av_write_n : IN STD_LOGIC;
                 signal av_writedata : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
                 signal clk : IN STD_LOGIC;
                 signal rst_n : IN STD_LOGIC;

              -- outputs:
                 signal av_irq : OUT STD_LOGIC;
                 signal av_readdata : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
                 signal av_waitrequest : OUT STD_LOGIC;
                 signal dataavailable : OUT STD_LOGIC;
                 signal readyfordata : OUT STD_LOGIC
              );
attribute ALTERA_ATTRIBUTE : string;
attribute ALTERA_ATTRIBUTE of StepperMotorControl_jtag_uart : entity is "SUPPRESS_DA_RULE_INTERNAL=""R101,C106,D101,D103""";
end entity StepperMotorControl_jtag_uart;


architecture europa of StepperMotorControl_jtag_uart is
component StepperMotorControl_jtag_uart_scfifo_w is 
           port (
                 -- inputs:
                    signal clk : IN STD_LOGIC;
                    signal fifo_clear : IN STD_LOGIC;
                    signal fifo_wdata : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                    signal fifo_wr : IN STD_LOGIC;
                    signal rd_wfifo : IN STD_LOGIC;

                 -- outputs:
                    signal fifo_FF : OUT STD_LOGIC;
                    signal r_dat : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                    signal wfifo_empty : OUT STD_LOGIC;
                    signal wfifo_used : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
                 );
end component StepperMotorControl_jtag_uart_scfifo_w;

component StepperMotorControl_jtag_uart_scfifo_r is 
           port (
                 -- inputs:
                    signal clk : IN STD_LOGIC;
                    signal fifo_clear : IN STD_LOGIC;
                    signal fifo_rd : IN STD_LOGIC;
                    signal rst_n : IN STD_LOGIC;
                    signal t_dat : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
                    signal wr_rfifo : IN STD_LOGIC;

                 -- outputs:
                    signal fifo_EF : OUT STD_LOGIC;
                    signal fifo_rdata : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
                    signal rfifo_full : OUT STD_LOGIC;
                    signal rfifo_used : OUT STD_LOGIC_VECTOR (5 DOWNTO 0)
                 );
end component StepperMotorControl_jtag_uart_scfifo_r;

--synthesis read_comments_as_HDL on
--  component alt_jtag_atlantic is
--GENERIC (
--      INSTANCE_ID : NATURAL;
--        LOG2_RXFIFO_DEPTH : NATURAL;
--        LOG2_TXFIFO_DEPTH : NATURAL;
--        SLD_AUTO_INSTANCE_INDEX : STRING
--      );
--    PORT (
--    signal t_pause : OUT STD_LOGIC;
--        signal r_ena : OUT STD_LOGIC;
--        signal t_ena : OUT STD_LOGIC;
--        signal t_dat : OUT STD_LOGIC_VECTOR (7 DOWNTO 0);
--        signal t_dav : IN STD_LOGIC;
--        signal rst_n : IN STD_LOGIC;
--        signal r_dat : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
--        signal r_val : IN STD_LOGIC;
--        signal clk : IN STD_LOGIC
--      );
--  end component alt_jtag_atlantic;
--synthesis read_comments_as_HDL off
                signal ac :  STD_LOGIC;
                signal activity :  STD_LOGIC;
                signal fifo_AE :  STD_LOGIC;
                signal fifo_AF :  STD_LOGIC;
                signal fifo_EF :  STD_LOGIC;
                signal fifo_FF :  STD_LOGIC;
                signal fifo_clear :  STD_LOGIC;
                signal fifo_rd :  STD_LOGIC;
                signal fifo_rdata :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal fifo_wdata :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal fifo_wr :  STD_LOGIC;
                signal ien_AE :  STD_LOGIC;
                signal ien_AF :  STD_LOGIC;
                signal internal_av_waitrequest :  STD_LOGIC;
                signal ipen_AE :  STD_LOGIC;
                signal ipen_AF :  STD_LOGIC;
                signal pause_irq :  STD_LOGIC;
                signal r_dat :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal r_ena :  STD_LOGIC;
                signal r_val :  STD_LOGIC;
                signal rd_wfifo :  STD_LOGIC;
                signal read_0 :  STD_LOGIC;
                signal rfifo_full :  STD_LOGIC;
                signal rfifo_used :  STD_LOGIC_VECTOR (5 DOWNTO 0);
                signal rvalid :  STD_LOGIC;
                signal sim_r_ena :  STD_LOGIC;
                signal sim_t_dat :  STD_LOGIC;
                signal sim_t_ena :  STD_LOGIC;
                signal sim_t_pause :  STD_LOGIC;
                signal t_dat :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal t_dav :  STD_LOGIC;
                signal t_ena :  STD_LOGIC;
                signal t_pause :  STD_LOGIC;
                signal wfifo_empty :  STD_LOGIC;
                signal wfifo_used :  STD_LOGIC_VECTOR (5 DOWNTO 0);
                signal woverflow :  STD_LOGIC;
                signal wr_rfifo :  STD_LOGIC;

begin

  --avalon_jtag_slave, which is an e_avalon_slave
  rd_wfifo <= r_ena AND NOT wfifo_empty;
  wr_rfifo <= t_ena AND NOT rfifo_full;
  fifo_clear <= NOT rst_n;
  --the_StepperMotorControl_jtag_uart_scfifo_w, which is an e_instance
  the_StepperMotorControl_jtag_uart_scfifo_w : StepperMotorControl_jtag_uart_scfifo_w
    port map(
      fifo_FF => fifo_FF,
      r_dat => r_dat,
      wfifo_empty => wfifo_empty,
      wfifo_used => wfifo_used,
      clk => clk,
      fifo_clear => fifo_clear,
      fifo_wdata => fifo_wdata,
      fifo_wr => fifo_wr,
      rd_wfifo => rd_wfifo
    );


  --the_StepperMotorControl_jtag_uart_scfifo_r, which is an e_instance
  the_StepperMotorControl_jtag_uart_scfifo_r : StepperMotorControl_jtag_uart_scfifo_r
    port map(
      fifo_EF => fifo_EF,
      fifo_rdata => fifo_rdata,
      rfifo_full => rfifo_full,
      rfifo_used => rfifo_used,
      clk => clk,
      fifo_clear => fifo_clear,
      fifo_rd => fifo_rd,
      rst_n => rst_n,
      t_dat => t_dat,
      wr_rfifo => wr_rfifo
    );


  ipen_AE <= ien_AE AND fifo_AE;
  ipen_AF <= ien_AF AND ((pause_irq OR fifo_AF));
  av_irq <= ipen_AE OR ipen_AF;
  activity <= t_pause OR t_ena;
  process (clk, rst_n)
  begin
    if rst_n = '0' then
      pause_irq <= std_logic'('0');
    elsif clk'event and clk = '1' then
      -- only if fifo is not empty...
      if std_logic'((t_pause AND NOT fifo_EF)) = '1' then 
        pause_irq <= std_logic'('1');
      elsif std_logic'(read_0) = '1' then 
        pause_irq <= std_logic'('0');
      end if;
    end if;

  end process;

  process (clk, rst_n)
  begin
    if rst_n = '0' then
      r_val <= std_logic'('0');
      t_dav <= std_logic'('1');
    elsif clk'event and clk = '1' then
      r_val <= r_ena AND NOT wfifo_empty;
      t_dav <= NOT rfifo_full;
    end if;

  end process;

  process (clk, rst_n)
  begin
    if rst_n = '0' then
      fifo_AE <= std_logic'('0');
      fifo_AF <= std_logic'('0');
      fifo_wr <= std_logic'('0');
      rvalid <= std_logic'('0');
      read_0 <= std_logic'('0');
      ien_AE <= std_logic'('0');
      ien_AF <= std_logic'('0');
      ac <= std_logic'('0');
      woverflow <= std_logic'('0');
      internal_av_waitrequest <= std_logic'('1');
    elsif clk'event and clk = '1' then
      fifo_AE <= to_std_logic(((std_logic_vector'("0000000000000000000000000") & (Std_Logic_Vector'(A_ToStdLogicVector(fifo_FF) & wfifo_used)))<=std_logic_vector'("00000000000000000000000000001000")));
      fifo_AF <= to_std_logic(((std_logic_vector'("000000000000000000000000") & (((std_logic_vector'("01000000") - (std_logic_vector'("0") & (Std_Logic_Vector'(A_ToStdLogicVector(rfifo_full) & rfifo_used)))))))<=std_logic_vector'("00000000000000000000000000001000")));
      fifo_wr <= std_logic'('0');
      read_0 <= std_logic'('0');
      internal_av_waitrequest <= NOT (((av_chipselect AND ((NOT av_write_n OR NOT av_read_n))) AND internal_av_waitrequest));
      if std_logic'(activity) = '1' then 
        ac <= std_logic'('1');
      end if;
      -- write
      if std_logic'(((av_chipselect AND NOT av_write_n) AND internal_av_waitrequest)) = '1' then 
        -- addr 1 is control; addr 0 is data
        if std_logic'(av_address) = '1' then 
          ien_AF <= av_writedata(0);
          ien_AE <= av_writedata(1);
          if std_logic'((av_writedata(10) AND NOT activity)) = '1' then 
            ac <= std_logic'('0');
          end if;
        else
          fifo_wr <= NOT fifo_FF;
          woverflow <= fifo_FF;
        end if;
      end if;
      -- read
      if std_logic'(((av_chipselect AND NOT av_read_n) AND internal_av_waitrequest)) = '1' then 
        -- addr 1 is interrupt; addr 0 is data
        if std_logic'(NOT av_address) = '1' then 
          rvalid <= NOT fifo_EF;
        end if;
        read_0 <= NOT av_address;
      end if;
    end if;

  end process;

  fifo_wdata <= av_writedata(7 DOWNTO 0);
  fifo_rd <= A_WE_StdLogic((std_logic'(((((av_chipselect AND NOT av_read_n) AND internal_av_waitrequest) AND NOT av_address))) = '1'), NOT fifo_EF, std_logic'('0'));
  av_readdata <= A_EXT (A_WE_StdLogicVector((std_logic'(read_0) = '1'), (std_logic_vector'("0") & ((A_REP(std_logic'('0'), 9) & A_ToStdLogicVector(rfifo_full) & rfifo_used & A_ToStdLogicVector(rvalid) & A_ToStdLogicVector(woverflow) & A_ToStdLogicVector(NOT fifo_FF) & A_ToStdLogicVector(NOT fifo_EF) & A_ToStdLogicVector(std_logic'('0')) & A_ToStdLogicVector(ac) & A_ToStdLogicVector(ipen_AE) & A_ToStdLogicVector(ipen_AF) & fifo_rdata))), (A_REP(std_logic'('0'), 9) & ((std_logic_vector'("01000000") - (std_logic_vector'("0") & (Std_Logic_Vector'(A_ToStdLogicVector(fifo_FF) & wfifo_used))))) & A_ToStdLogicVector(rvalid) & A_ToStdLogicVector(woverflow) & A_ToStdLogicVector(NOT fifo_FF) & A_ToStdLogicVector(NOT fifo_EF) & A_ToStdLogicVector(std_logic'('0')) & A_ToStdLogicVector(ac) & A_ToStdLogicVector(ipen_AE) & A_ToStdLogicVector(ipen_AF) & A_REP(std_logic'('0'), 6) & A_ToStdLogicVector(ien_AE) & A_ToStdLogicVector(ien_AF))), 32);
  process (clk, rst_n)
  begin
    if rst_n = '0' then
      readyfordata <= std_logic'('0');
    elsif clk'event and clk = '1' then
      readyfordata <= NOT fifo_FF;
    end if;

  end process;

  --vhdl renameroo for output signals
  av_waitrequest <= internal_av_waitrequest;
--synthesis translate_off
    -- Tie off Atlantic Interface signals not used for simulation
    process (clk)
    begin
      if clk'event and clk = '1' then
        sim_t_pause <= std_logic'('0');
        sim_t_ena <= std_logic'('0');
        sim_t_dat <= Vector_To_Std_Logic(A_WE_StdLogicVector((std_logic'(t_dav) = '1'), r_dat, A_REP(r_val, 8)));
        sim_r_ena <= std_logic'('0');
      end if;

    end process;

    r_ena <= sim_r_ena;
    t_ena <= sim_t_ena;
    t_dat <= std_logic_vector'("0000000") & (A_TOSTDLOGICVECTOR(sim_t_dat));
    t_pause <= sim_t_pause;
    process (fifo_EF)
    begin
        dataavailable <= NOT fifo_EF;

    end process;

--synthesis translate_on
--synthesis read_comments_as_HDL on
--    StepperMotorControl_jtag_uart_alt_jtag_atlantic : alt_jtag_atlantic
--      generic map(
--        INSTANCE_ID => 0,
--        LOG2_RXFIFO_DEPTH => 6,
--        LOG2_TXFIFO_DEPTH => 6,
--        SLD_AUTO_INSTANCE_INDEX => "YES"
--      )
--      port map(
--                clk => clk,
--                r_dat => r_dat,
--                r_ena => r_ena,
--                r_val => r_val,
--                rst_n => rst_n,
--                t_dat => t_dat,
--                t_dav => t_dav,
--                t_ena => t_ena,
--                t_pause => t_pause
--      );
--
--    process (clk, rst_n)
--    begin
--      if rst_n = '0' then
--        dataavailable <= std_logic'('0');
--      elsif clk'event and clk = '1' then
--        dataavailable <= NOT fifo_EF;
--      end if;
--
--    end process;
--
--synthesis read_comments_as_HDL off

end europa;

