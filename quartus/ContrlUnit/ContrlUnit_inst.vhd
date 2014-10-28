	component ContrlUnit is
		port (
			reset_reset_n              : in    std_logic                     := 'X';             -- reset_n
			clk_clk                    : in    std_logic                     := 'X';             -- clk
			sram_conduit_out_SRAM_OE_N : out   std_logic_vector(0 downto 0);                     -- SRAM_OE_N
			sram_conduit_out_SRAM_CE_N : out   std_logic_vector(0 downto 0);                     -- SRAM_CE_N
			sram_conduit_out_SRAM_BE_N : out   std_logic_vector(1 downto 0);                     -- SRAM_BE_N
			sram_conduit_out_SRAM_D    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- SRAM_D
			sram_conduit_out_SRAM_A    : out   std_logic_vector(18 downto 0);                    -- SRAM_A
			sram_conduit_out_SRAM_WE_N : out   std_logic_vector(0 downto 0);                     -- SRAM_WE_N
			pio_sw_external_export     : in    std_logic_vector(8 downto 0)  := (others => 'X'); -- export
			lcd_external_RS            : out   std_logic;                                        -- RS
			lcd_external_RW            : out   std_logic;                                        -- RW
			lcd_external_data          : inout std_logic_vector(7 downto 0)  := (others => 'X'); -- data
			lcd_external_E             : out   std_logic;                                        -- E
			pio_led9_external_export   : out   std_logic;                                        -- export
			pio_key_external_export    : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- export
			pio_hex0_externa_export    : out   std_logic_vector(6 downto 0);                     -- export
			pio_hex1_external_export   : out   std_logic_vector(6 downto 0);                     -- export
			pio_hex2_external_export   : out   std_logic_vector(6 downto 0);                     -- export
			pio_hex3_externa_export    : out   std_logic_vector(6 downto 0)                      -- export
		);
	end component ContrlUnit;

	u0 : component ContrlUnit
		port map (
			reset_reset_n              => CONNECTED_TO_reset_reset_n,              --             reset.reset_n
			clk_clk                    => CONNECTED_TO_clk_clk,                    --               clk.clk
			sram_conduit_out_SRAM_OE_N => CONNECTED_TO_sram_conduit_out_SRAM_OE_N, --  sram_conduit_out.SRAM_OE_N
			sram_conduit_out_SRAM_CE_N => CONNECTED_TO_sram_conduit_out_SRAM_CE_N, --                  .SRAM_CE_N
			sram_conduit_out_SRAM_BE_N => CONNECTED_TO_sram_conduit_out_SRAM_BE_N, --                  .SRAM_BE_N
			sram_conduit_out_SRAM_D    => CONNECTED_TO_sram_conduit_out_SRAM_D,    --                  .SRAM_D
			sram_conduit_out_SRAM_A    => CONNECTED_TO_sram_conduit_out_SRAM_A,    --                  .SRAM_A
			sram_conduit_out_SRAM_WE_N => CONNECTED_TO_sram_conduit_out_SRAM_WE_N, --                  .SRAM_WE_N
			pio_sw_external_export     => CONNECTED_TO_pio_sw_external_export,     --   pio_sw_external.export
			lcd_external_RS            => CONNECTED_TO_lcd_external_RS,            --      lcd_external.RS
			lcd_external_RW            => CONNECTED_TO_lcd_external_RW,            --                  .RW
			lcd_external_data          => CONNECTED_TO_lcd_external_data,          --                  .data
			lcd_external_E             => CONNECTED_TO_lcd_external_E,             --                  .E
			pio_led9_external_export   => CONNECTED_TO_pio_led9_external_export,   -- pio_led9_external.export
			pio_key_external_export    => CONNECTED_TO_pio_key_external_export,    --  pio_key_external.export
			pio_hex0_externa_export    => CONNECTED_TO_pio_hex0_externa_export,    --  pio_hex0_externa.export
			pio_hex1_external_export   => CONNECTED_TO_pio_hex1_external_export,   -- pio_hex1_external.export
			pio_hex2_external_export   => CONNECTED_TO_pio_hex2_external_export,   -- pio_hex2_external.export
			pio_hex3_externa_export    => CONNECTED_TO_pio_hex3_externa_export     --  pio_hex3_externa.export
		);

