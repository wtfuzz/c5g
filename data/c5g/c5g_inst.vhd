	component c5g is
		port (
			clk_clk                         : in    std_logic                     := 'X';             -- clk
			lpddr2_avl_0_waitrequest_n      : out   std_logic;                                        -- waitrequest_n
			lpddr2_avl_0_beginbursttransfer : in    std_logic                     := 'X';             -- beginbursttransfer
			lpddr2_avl_0_address            : in    std_logic_vector(26 downto 0) := (others => 'X'); -- address
			lpddr2_avl_0_readdatavalid      : out   std_logic;                                        -- readdatavalid
			lpddr2_avl_0_readdata           : out   std_logic_vector(31 downto 0);                    -- readdata
			lpddr2_avl_0_writedata          : in    std_logic_vector(31 downto 0) := (others => 'X'); -- writedata
			lpddr2_avl_0_byteenable         : in    std_logic_vector(3 downto 0)  := (others => 'X'); -- byteenable
			lpddr2_avl_0_read               : in    std_logic                     := 'X';             -- read
			lpddr2_avl_0_write              : in    std_logic                     := 'X';             -- write
			lpddr2_avl_0_burstcount         : in    std_logic                     := 'X';             -- burstcount
			lpddr2_status_local_init_done   : out   std_logic;                                        -- local_init_done
			lpddr2_status_local_cal_success : out   std_logic;                                        -- local_cal_success
			lpddr2_status_local_cal_fail    : out   std_logic;                                        -- local_cal_fail
			memory_mem_ca                   : out   std_logic_vector(9 downto 0);                     -- mem_ca
			memory_mem_ck                   : out   std_logic_vector(0 downto 0);                     -- mem_ck
			memory_mem_ck_n                 : out   std_logic_vector(0 downto 0);                     -- mem_ck_n
			memory_mem_cke                  : out   std_logic_vector(0 downto 0);                     -- mem_cke
			memory_mem_cs_n                 : out   std_logic_vector(0 downto 0);                     -- mem_cs_n
			memory_mem_dm                   : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_mem_dq                   : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs                  : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n                : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			oct_rzqin                       : in    std_logic                     := 'X';             -- rzqin
			reset_reset_n                   : in    std_logic                     := 'X'              -- reset_n
		);
	end component c5g;

	u0 : component c5g
		port map (
			clk_clk                         => CONNECTED_TO_clk_clk,                         --           clk.clk
			lpddr2_avl_0_waitrequest_n      => CONNECTED_TO_lpddr2_avl_0_waitrequest_n,      --  lpddr2_avl_0.waitrequest_n
			lpddr2_avl_0_beginbursttransfer => CONNECTED_TO_lpddr2_avl_0_beginbursttransfer, --              .beginbursttransfer
			lpddr2_avl_0_address            => CONNECTED_TO_lpddr2_avl_0_address,            --              .address
			lpddr2_avl_0_readdatavalid      => CONNECTED_TO_lpddr2_avl_0_readdatavalid,      --              .readdatavalid
			lpddr2_avl_0_readdata           => CONNECTED_TO_lpddr2_avl_0_readdata,           --              .readdata
			lpddr2_avl_0_writedata          => CONNECTED_TO_lpddr2_avl_0_writedata,          --              .writedata
			lpddr2_avl_0_byteenable         => CONNECTED_TO_lpddr2_avl_0_byteenable,         --              .byteenable
			lpddr2_avl_0_read               => CONNECTED_TO_lpddr2_avl_0_read,               --              .read
			lpddr2_avl_0_write              => CONNECTED_TO_lpddr2_avl_0_write,              --              .write
			lpddr2_avl_0_burstcount         => CONNECTED_TO_lpddr2_avl_0_burstcount,         --              .burstcount
			lpddr2_status_local_init_done   => CONNECTED_TO_lpddr2_status_local_init_done,   -- lpddr2_status.local_init_done
			lpddr2_status_local_cal_success => CONNECTED_TO_lpddr2_status_local_cal_success, --              .local_cal_success
			lpddr2_status_local_cal_fail    => CONNECTED_TO_lpddr2_status_local_cal_fail,    --              .local_cal_fail
			memory_mem_ca                   => CONNECTED_TO_memory_mem_ca,                   --        memory.mem_ca
			memory_mem_ck                   => CONNECTED_TO_memory_mem_ck,                   --              .mem_ck
			memory_mem_ck_n                 => CONNECTED_TO_memory_mem_ck_n,                 --              .mem_ck_n
			memory_mem_cke                  => CONNECTED_TO_memory_mem_cke,                  --              .mem_cke
			memory_mem_cs_n                 => CONNECTED_TO_memory_mem_cs_n,                 --              .mem_cs_n
			memory_mem_dm                   => CONNECTED_TO_memory_mem_dm,                   --              .mem_dm
			memory_mem_dq                   => CONNECTED_TO_memory_mem_dq,                   --              .mem_dq
			memory_mem_dqs                  => CONNECTED_TO_memory_mem_dqs,                  --              .mem_dqs
			memory_mem_dqs_n                => CONNECTED_TO_memory_mem_dqs_n,                --              .mem_dqs_n
			oct_rzqin                       => CONNECTED_TO_oct_rzqin,                       --           oct.rzqin
			reset_reset_n                   => CONNECTED_TO_reset_reset_n                    --         reset.reset_n
		);

