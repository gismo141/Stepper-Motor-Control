	component StepperMotorControl is
		port (
			reset_reset_n                     : in    std_logic                     := 'X';             -- reset_n
			clk_clk                           : in    std_logic                     := 'X';             -- clk
			sram_conduit_out_SRAM_OE_N        : out   std_logic_vector(0 downto 0);                     -- SRAM_OE_N
			sram_conduit_out_SRAM_CE_N        : out   std_logic_vector(0 downto 0);                     -- SRAM_CE_N
			sram_conduit_out_SRAM_BE_N        : out   std_logic_vector(1 downto 0);                     -- SRAM_BE_N
			sram_conduit_out_SRAM_D           : inout std_logic_vector(15 downto 0) := (others => 'X'); -- SRAM_D
			sram_conduit_out_SRAM_A           : out   std_logic_vector(18 downto 0);                    -- SRAM_A
			sram_conduit_out_SRAM_WE_N        : out   std_logic_vector(0 downto 0);                     -- SRAM_WE_N
			interface_comp_0_conduit_mykey    : in    std_logic_vector(2 downto 0)  := (others => 'X'); -- mykey
			interface_comp_0_conduit_myswitch : in    std_logic_vector(7 downto 0)  := (others => 'X'); -- myswitch
			interface_comp_0_conduit_redleds  : out   std_logic_vector(7 downto 0)                      -- redleds
		);
	end component StepperMotorControl;

	u0 : component StepperMotorControl
		port map (
			reset_reset_n                     => CONNECTED_TO_reset_reset_n,                     --                    reset.reset_n
			clk_clk                           => CONNECTED_TO_clk_clk,                           --                      clk.clk
			sram_conduit_out_SRAM_OE_N        => CONNECTED_TO_sram_conduit_out_SRAM_OE_N,        --         sram_conduit_out.SRAM_OE_N
			sram_conduit_out_SRAM_CE_N        => CONNECTED_TO_sram_conduit_out_SRAM_CE_N,        --                         .SRAM_CE_N
			sram_conduit_out_SRAM_BE_N        => CONNECTED_TO_sram_conduit_out_SRAM_BE_N,        --                         .SRAM_BE_N
			sram_conduit_out_SRAM_D           => CONNECTED_TO_sram_conduit_out_SRAM_D,           --                         .SRAM_D
			sram_conduit_out_SRAM_A           => CONNECTED_TO_sram_conduit_out_SRAM_A,           --                         .SRAM_A
			sram_conduit_out_SRAM_WE_N        => CONNECTED_TO_sram_conduit_out_SRAM_WE_N,        --                         .SRAM_WE_N
			interface_comp_0_conduit_mykey    => CONNECTED_TO_interface_comp_0_conduit_mykey,    -- interface_comp_0_conduit.mykey
			interface_comp_0_conduit_myswitch => CONNECTED_TO_interface_comp_0_conduit_myswitch, --                         .myswitch
			interface_comp_0_conduit_redleds  => CONNECTED_TO_interface_comp_0_conduit_redleds   --                         .redleds
		);

