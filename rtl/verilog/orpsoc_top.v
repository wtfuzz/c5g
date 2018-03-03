`include "orpsoc-defines.v"

module orpsoc_top #(
  parameter uart0_aw = 3
)(
  input           sys_clk_pad_i,
  input           rst_n_pad_i,

`ifdef SIM
  output    tdo_pad_o,
  input   tms_pad_i,
  input   tck_pad_i,
  input   tdi_pad_i,
`endif

  output  [17:0]  sram_a_o,
  inout   [15:0]  sram_d_io,
  output          sram_ce_o,
  output          sram_oe_o,
  output          sram_we_o,
  output          sram_lb_o,
  output          sram_ub_o,

  input           uart0_srx_pad_i,
  output          uart0_stx_pad_o,

  inout   [17:0]  gpio0_io,
  input   [3:0]   gpio1_i,

  output  [9:0]   DDR2LP_CA,
  output  [1:0]   DDR2LP_CKE,
  output          DDR2LP_CK_n,
  output          DDR2LP_CK_p,
  output  [1:0]   DDR2LP_CS_n,
  output  [3:0]   DDR2LP_DM,
  inout   [31:0]  DDR2LP_DQ,
  inout   [3:0]   DDR2LP_DQS_n,
  inout   [3:0]   DDR2LP_DQS_p,
  input           DDR2LP_OCT_RZQ

);

parameter IDCODE_VALUE = 32'h14951185;

////////////////////////////////////////////////////////////////////////
//
// Clock and reset generation module
//
////////////////////////////////////////////////////////////////////////

wire  wb_clk, wb_rst;
wire  dbg_tck;

assign wb_clk = sys_clk_pad_i;
assign wb_rst = !rst_n_pad_i;

////////////////////////////////////////////////////////////////////////
//
// Modules interconnections
//
////////////////////////////////////////////////////////////////////////
`include "wb_intercon.vh"

/* Avalon Interface to LPDDR2 */
wire [31:0] lpddr2_avl_address;
wire [5:0]  lpddr2_avl_burstcount;
wire        lpddr2_avl_waitrequest_n;
wire        lpddr2_avl_waitrequest = !lpddr2_avl_waitrequest_n;
wire [31:0] lpddr2_avl_readdata;
wire        lpddr2_avl_readdatavalid;
wire        lpddr2_avl_read;
wire [31:0] lpddr2_avl_writedata;
wire [3:0]  lpddr2_avl_byteenable;
wire        lpddr2_avl_write;

// QSYS generated system for LPDDR2 controller
	c5g u0 (
    .clk_clk                            (sys_clk_pad_i),
    .reset_reset_n                      (rst_n_pad_i),

		.lpddr2_avl_0_address               (lpddr2_avl_address),
		.lpddr2_avl_0_burstcount            (lpddr2_avl_burstcount),
		.lpddr2_avl_0_waitrequest_n         (lpddr2_avl_waitrequest_n),
		.lpddr2_avl_0_readdata              (lpddr2_avl_readdata),
		.lpddr2_avl_0_readdatavalid         (lpddr2_avl_readdatavalid),
		.lpddr2_avl_0_read                  (lpddr2_avl_read),
		.lpddr2_avl_0_writedata             (lpddr2_avl_writedata),
		.lpddr2_avl_0_byteenable            (lpddr2_avl_byteenable),
		.lpddr2_avl_0_write                 (lpddr2_avl_write),

		.memory_mem_ca                      (DDR2LP_CA),
		.memory_mem_ck                      (DDR2LP_CK_p),
		.memory_mem_ck_n                    (DDR2LP_CK_n),
		.memory_mem_cke                     (DDR2LP_CKE[0]),
		.memory_mem_cs_n                    (DDR2LP_CS_n[0]),
		.memory_mem_dm                      (DDR2LP_DM),
		.memory_mem_dq                      (DDR2LP_DQ),
		.memory_mem_dqs                     (DDR2LP_DQS_p),
		.memory_mem_dqs_n                   (DDR2LP_DQS_n),
		.oct_rzqin                          (DDR2LP_OCT_RZQ)
);

// Avalon to Wishbone Bridge

wire [31:0] avm_lpddr2_address;
assign lpddr2_avl_address = avm_lpddr2_address[29:2];

wb_to_avalon_bridge #(
  .DW     (32),
  .AW     (32),
  .BURST_SUPPORT    (1)
) lpddr2_wb2avl_bridge (
  .wb_clk_i   (wb_clk),
  .wb_rst_i   (wb_rst),

  // Wishbone Slave Input
  .wb_adr_i   (wb_m2s_ram_dbus_adr),
  .wb_dat_i   (wb_m2s_ram_dbus_dat),
  .wb_sel_i   (wb_m2s_ram_dbus_sel),
  .wb_we_i    (wb_m2s_ram_dbus_we),
  .wb_cyc_i   (wb_m2s_ram_dbus_cyc),
  .wb_stb_i   (wb_m2s_ram_dbus_stb),
  .wb_cti_i   (wb_m2s_ram_dbus_cti),
  .wb_bte_i   (wb_m2s_ram_dbus_bte),
  .wb_dat_o   (wb_s2m_ram_dbus_dat),
  .wb_ack_o   (wb_s2m_ram_dbus_ack),
  .wb_err_o   (wb_s2m_ram_dbus_err),
  .wb_rty_o   (wb_s2m_ram_dbus_rty),

  // Avalon Master Output
  .m_av_address_o       (avm_lpddr2_address),
  .m_av_burstcount_o    (lpddr2_avl_burstcount),
  .m_av_waitrequest_i   (lpddr2_avl_waitrequest),
  .m_av_byteenable_o    (lpddr2_avl_byteenable),
  .m_av_readdata_i      (lpddr2_avl_readdata),
  .m_av_readdatavalid_i (lpddr2_avl_readdatavalid),
  .m_av_read_o          (lpddr2_avl_read),
  .m_av_writedata_o     (lpddr2_avl_writedata),
  .m_av_write_o         (lpddr2_avl_write)
);

////////////////////////////////////////////////////////////////////////
//
// ALTERA Virtual JTAG TAP
//
////////////////////////////////////////////////////////////////////////

wire  dbg_if_select;
wire  dbg_if_tdo;
wire  jtag_tap_tdo;
wire  jtag_tap_shift_dr;
wire  jtag_tap_pause_dr;
wire  jtag_tap_update_dr;
wire  jtag_tap_capture_dr;

altera_virtual_jtag jtag_tap0 (
  .tck_o              (dbg_tck),
  .debug_tdo_i        (dbg_if_tdo),
  .tdi_o              (jtag_tap_tdo),
  .test_logic_reset_o (),
  .run_test_idle_o    (),
  .shift_dr_o         (jtag_tap_shift_dr),
  .capture_dr_o       (jtag_tap_capture_dr),
  .pause_dr_o         (jtag_tap_pause_dr),
  .update_dr_o        (jtag_tap_update_dr),
  .debug_select_o     (dbg_if_select)
);

////////////////////////////////////////////////////////////////////////
//
// OR1K CPU
//
////////////////////////////////////////////////////////////////////////

wire  [31:0]  or1k_irq;

wire  [31:0]  or1k_dbg_dat_i;
wire  [31:0]  or1k_dbg_adr_i;
wire          or1k_dbg_we_i;
wire          or1k_dbg_stb_i;
wire          or1k_dbg_ack_o;
wire  [31:0]  or1k_dbg_dat_o;

wire          or1k_dbg_stall_i;
wire          or1k_dbg_ewt_i;
wire  [3:0]   or1k_dbg_lss_o;
wire  [1:0]   or1k_dbg_is_o;
wire  [10:0]  or1k_dbg_wp_o;
wire          or1k_dbg_bp_o;
wire          or1k_dbg_rst;

wire          sig_tick;
wire          or1k_rst;

assign or1k_rst = wb_rst | or1k_dbg_rst;

mor1kx #(
  .FEATURE_DEBUGUNIT          ("ENABLED"),
  .FEATURE_CMOV               ("ENABLED"),
  .FEATURE_INSTRUCTIONCACHE   ("ENABLED"),
  .OPTION_ICACHE_BLOCK_WIDTH  (5),
  .OPTION_ICACHE_SET_WIDTH    (7),
  .OPTION_ICACHE_WAYS         (1),
  .OPTION_ICACHE_LIMIT_WIDTH  (32),
  .FEATURE_IMMU               ("ENABLED"),
  .FEATURE_DATACACHE          ("ENABLED"),
  .OPTION_DCACHE_BLOCK_WIDTH  (5),
  .OPTION_DCACHE_SET_WIDTH    (7),
  .OPTION_DCACHE_WAYS         (1),
  .OPTION_DCACHE_LIMIT_WIDTH  (32),
  .FEATURE_DMMU               ("ENABLED"),
  .OPTION_RF_NUM_SHADOW_GPR   (15),
  .OPTION_PIC_TRIGGER         ("LATCHED_LEVEL"),

  .IBUS_WB_TYPE               ("B3_REGISTERED_FEEDBACK"),
  .DBUS_WB_TYPE               ("B3_REGISTERED_FEEDBACK"),
  .OPTION_CPU0                ("CAPPUCCINO"),
  .OPTION_RESET_PC            (32'hf0000100)
) mor1kx0 (
  .iwbm_adr_o(wb_m2s_or1k_i_adr),
  .iwbm_stb_o(wb_m2s_or1k_i_stb),
  .iwbm_cyc_o(wb_m2s_or1k_i_cyc),
  .iwbm_sel_o(wb_m2s_or1k_i_sel),
  .iwbm_we_o (wb_m2s_or1k_i_we),
  .iwbm_cti_o(wb_m2s_or1k_i_cti),
  .iwbm_bte_o(wb_m2s_or1k_i_bte),
  .iwbm_dat_o(wb_m2s_or1k_i_dat),

  .dwbm_adr_o(wb_m2s_or1k_d_adr),
  .dwbm_stb_o(wb_m2s_or1k_d_stb),
  .dwbm_cyc_o(wb_m2s_or1k_d_cyc),
  .dwbm_sel_o(wb_m2s_or1k_d_sel),
  .dwbm_we_o (wb_m2s_or1k_d_we ),
  .dwbm_cti_o(wb_m2s_or1k_d_cti),
  .dwbm_bte_o(wb_m2s_or1k_d_bte),
  .dwbm_dat_o(wb_m2s_or1k_d_dat),

  .clk(wb_clk),
  .rst(or1k_rst),

  .iwbm_err_i(wb_s2m_or1k_i_err),
  .iwbm_ack_i(wb_s2m_or1k_i_ack),
  .iwbm_dat_i(wb_s2m_or1k_i_dat),
  .iwbm_rty_i(wb_s2m_or1k_i_rty),

  .dwbm_err_i(wb_s2m_or1k_d_err),
  .dwbm_ack_i(wb_s2m_or1k_d_ack),
  .dwbm_dat_i(wb_s2m_or1k_d_dat),
  .dwbm_rty_i(wb_s2m_or1k_d_rty),

  .irq_i(or1k_irq),

  .traceport_exec_valid_o  (),
  .traceport_exec_pc_o     (),
  .traceport_exec_insn_o   (),
  .traceport_exec_wbdata_o (),
  .traceport_exec_wbreg_o  (),
  .traceport_exec_wben_o   (),

  .multicore_coreid_i   (32'd0),
  .multicore_numcores_i (32'd0),

  .snoop_adr_i (32'd0),
  .snoop_en_i  (1'b0),

  .du_addr_i(or1k_dbg_adr_i[15:0]),
  .du_stb_i(or1k_dbg_stb_i),
  .du_dat_i(or1k_dbg_dat_i),
  .du_we_i(or1k_dbg_we_i),
  .du_dat_o(or1k_dbg_dat_o),
  .du_ack_o(or1k_dbg_ack_o),
  .du_stall_i(or1k_dbg_stall_i),
  .du_stall_o(or1k_dbg_bp_o)
);

////////////////////////////////////////////////////////////////////////
//
// Debug Interface
//
////////////////////////////////////////////////////////////////////////

adbg_top dbg_if0 (
  // OR1K interface
  .cpu0_clk_i (wb_clk),
  .cpu0_rst_o (or1k_dbg_rst),
  .cpu0_addr_o  (or1k_dbg_adr_i),
  .cpu0_data_o  (or1k_dbg_dat_i),
  .cpu0_stb_o (or1k_dbg_stb_i),
  .cpu0_we_o  (or1k_dbg_we_i),
  .cpu0_data_i  (or1k_dbg_dat_o),
  .cpu0_ack_i (or1k_dbg_ack_o),
  .cpu0_stall_o (or1k_dbg_stall_i),
  .cpu0_bp_i  (or1k_dbg_bp_o),

  // TAP interface
  .tck_i    (dbg_tck),
  .tdi_i    (jtag_tap_tdo),
  .tdo_o    (dbg_if_tdo),
  .rst_i    (wb_rst),
  .capture_dr_i (jtag_tap_capture_dr),
  .shift_dr_i (jtag_tap_shift_dr),
  .pause_dr_i (jtag_tap_pause_dr),
  .update_dr_i  (jtag_tap_update_dr),
  .debug_select_i (dbg_if_select),

  // Wishbone debug master
  .wb_clk_i (wb_clk),
  .wb_rst_i       (1'b0),
  .wb_dat_i (wb_s2m_dbg_dat),
  .wb_ack_i (wb_s2m_dbg_ack),
  .wb_err_i (wb_s2m_dbg_err),

  .wb_adr_o (wb_m2s_dbg_adr),
  .wb_dat_o (wb_m2s_dbg_dat),
  .wb_cyc_o (wb_m2s_dbg_cyc),
  .wb_stb_o (wb_m2s_dbg_stb),
  .wb_sel_o (wb_m2s_dbg_sel),
  .wb_we_o  (wb_m2s_dbg_we),
  .wb_cab_o       (),
  .wb_cti_o (wb_m2s_dbg_cti),
  .wb_bte_o (wb_m2s_dbg_bte),

  .wb_jsp_adr_i (32'd0),
  .wb_jsp_dat_i (32'd0),
  .wb_jsp_cyc_i (1'b0),
  .wb_jsp_stb_i (1'b0),
  .wb_jsp_sel_i (4'h0),
  .wb_jsp_we_i  (1'b0),
  .wb_jsp_cab_i (1'b0),
  .wb_jsp_cti_i (3'd0),
  .wb_jsp_bte_i (2'd0),
  .wb_jsp_dat_o (),
  .wb_jsp_ack_o (),
  .wb_jsp_err_o (),

  .int_o ()
);

// On Chip RAM
/*
wb_ram #(
  .depth('h8000)  
) ram0 (
  .wb_clk_i (wb_clk),
  .wb_rst_i (wb_rst),
  .wb_adr_i ({wb_m2s_ram_ibus_adr, wb_m2s_ram_dbus_adr}),
  .wb_stb_i ({wb_m2s_ram_ibus_stb, wb_m2s_ram_dbus_stb}),
  .wb_cyc_i ({wb_m2s_ram_ibus_cyc, wb_m2s_ram_dbus_cyc}),
  .wb_we_i  ({wb_m2s_ram_ibus_we,  wb_m2s_ram_dbus_we }),
  .wb_sel_i ({wb_m2s_ram_ibus_sel, wb_m2s_ram_dbus_sel}),
  .wb_dat_i ({wb_m2s_ram_ibus_dat, wb_m2s_ram_dbus_dat}),
  .wb_dat_o ({wb_s2m_ram_ibus_dat, wb_s2m_ram_dbus_dat}),
  .wb_ack_o ({wb_s2m_ram_ibus_ack, wb_s2m_ram_dbus_ack})
);
*/

// SRAM
/*
wb_sram16 sram(
  .sram_adr(sram_a_o),
  .sram_dat(sram_d_io),
  .sram_ce_n(sram_ce_o),
  .sram_oe_n(sram_oe_o),
  .sram_we_n(sram_we_o),
  .wb_adr_i (wb_m2s_sram_dbus_adr),
  .wb_stb_i (wb_m2s_sram_dbus_stb),
  .wb_cyc_i (wb_m2s_sram_dbus_cyc),
  .wb_we_i  (wb_m2s_sram_dbus_we),
  .wb_sel_i (wb_m2s_sram_dbus_sel),
  .wb_dat_i (wb_m2s_sram_dbus_dat),
  .wb_dat_o (wb_s2m_sram_dbus_dat),
  .wb_ack_o (wb_s2m_sram_dbus_ack)
);
*/

////////////////////////////////////////////////////////////////////////
//
// UART0
//
// Connected to FTDI USB <-> UART converter
//
////////////////////////////////////////////////////////////////////////

wire  uart0_irq;

assign  wb_s2m_uart0_err = 0;
assign  wb_s2m_uart0_rty = 0;

uart_top uart16550_0 (
  // Wishbone slave interface
  .wb_clk_i (wb_clk),
  .wb_rst_i (wb_rst),
  .wb_adr_i (wb_m2s_uart0_adr[2:0]),
  .wb_dat_i (wb_m2s_uart0_dat),
  .wb_we_i  (wb_m2s_uart0_we),
  .wb_stb_i (wb_m2s_uart0_stb),
  .wb_cyc_i (wb_m2s_uart0_cyc),
  .wb_sel_i (4'b0), // Not used in 8-bit mode
  .wb_dat_o (wb_s2m_uart0_dat),
  .wb_ack_o (wb_s2m_uart0_ack),

  // Outputs
  .int_o    (uart0_irq),
  .stx_pad_o  (uart0_stx_pad_o),
  .rts_pad_o  (),
  .dtr_pad_o  (),

  // Inputs
  .srx_pad_i  (uart0_srx_pad_i),
  .cts_pad_i  (1'b0),
  .dsr_pad_i  (1'b0),
  .ri_pad_i (1'b0),
  .dcd_pad_i  (1'b0)
);

////////////////////////////////////////////////////////////////////////
//
// GPIO 0
//
// Connected to LEDs
//
////////////////////////////////////////////////////////////////////////

wire [17:0]  gpio0_in;
wire [17:0]  gpio0_out;
wire [17:0]  gpio0_dir;

// Tristate logic for IO
// 0 = input, 1 = output
genvar                    i;
generate
  for (i = 0; i < 17; i = i+1) begin: gpio0_tris
    assign gpio0_io[i] = gpio0_dir[i] ? gpio0_out[i] : 1'bz;
    assign gpio0_in[i] = gpio0_dir[i] ? gpio0_out[i] : gpio0_io[i];
  end
endgenerate

gpio gpio0 (
  // GPIO bus
  .gpio_i   (gpio0_in),
  .gpio_o   (gpio0_out),
  .gpio_dir_o (gpio0_dir),
  // Wishbone slave interface
  .wb_adr_i (wb_m2s_gpio0_adr[0]),
  .wb_dat_i (wb_m2s_gpio0_dat),
  .wb_we_i  (wb_m2s_gpio0_we),
  .wb_cyc_i (wb_m2s_gpio0_cyc),
  .wb_stb_i (wb_m2s_gpio0_stb),
  .wb_cti_i (wb_m2s_gpio0_cti),
  .wb_bte_i (wb_m2s_gpio0_bte),
  .wb_dat_o (wb_s2m_gpio0_dat),
  .wb_ack_o (wb_s2m_gpio0_ack),
  .wb_err_o (wb_s2m_gpio0_err),
  .wb_rty_o (wb_s2m_gpio0_rty),

  .wb_clk   (wb_clk),
  .wb_rst   (wb_rst)
);

/*
gpio gpio1 (
  // GPIO bus
  .gpio_i   ({4'h0, gpio1_i}),
  .gpio_o   (),
  .gpio_dir_o (),
  // Wishbone slave interface
  .wb_adr_i (wb_m2s_gpio1_adr[0]),
  .wb_dat_i (wb_m2s_gpio1_dat),
  .wb_we_i  (wb_m2s_gpio1_we),
  .wb_cyc_i (wb_m2s_gpio1_cyc),
  .wb_stb_i (wb_m2s_gpio1_stb),
  .wb_cti_i (wb_m2s_gpio1_cti),
  .wb_bte_i (wb_m2s_gpio1_bte),
  .wb_dat_o (wb_s2m_gpio1_dat),
  .wb_ack_o (wb_s2m_gpio1_ack),
  .wb_err_o (wb_s2m_gpio1_err),
  .wb_rty_o (wb_s2m_gpio1_rty),

  .wb_clk   (wb_clk),
  .wb_rst   (wb_rst)
);
*/

////////////////////////////////////////////////////////////////////////
//
// Interrupt assignment
//
////////////////////////////////////////////////////////////////////////

assign or1k_irq[0] = 0; // Non-maskable inside OR1K
assign or1k_irq[1] = 0; // Non-maskable inside OR1K
assign or1k_irq[2] = uart0_irq;
assign or1k_irq[3] = 0;
assign or1k_irq[4] = 0;
assign or1k_irq[5] = 0;
assign or1k_irq[6] = 0;
assign or1k_irq[7] = 0;
assign or1k_irq[8] = 0;
assign or1k_irq[9] = 0;
assign or1k_irq[10] = 0;
assign or1k_irq[11] = 0;
assign or1k_irq[12] = 0;
assign or1k_irq[13] = 0;
assign or1k_irq[14] = 0;
assign or1k_irq[15] = 0;
assign or1k_irq[16] = 0;
assign or1k_irq[17] = 0;
assign or1k_irq[18] = 0;
assign or1k_irq[19] = 0;
assign or1k_irq[20] = 0;
assign or1k_irq[21] = 0;
assign or1k_irq[22] = 0;
assign or1k_irq[23] = 0;
assign or1k_irq[24] = 0;
assign or1k_irq[25] = 0;
assign or1k_irq[26] = 0;
assign or1k_irq[27] = 0;
assign or1k_irq[28] = 0;
assign or1k_irq[29] = 0;
assign or1k_irq[30] = 0;
assign or1k_irq[31] = 0;

endmodule // orpsoc_top

