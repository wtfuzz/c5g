`include "timescale.v"
`include "orpsoc-defines.v"

module clkgen
(
  // Main clocks in, depending on board
  input sys_clk_pad_i,
  // Asynchronous, active low reset in
  input rst_n_pad_i,
  // Input reset - through a buffer, asynchronous
  output  async_rst_o,

  // Wishbone clock and reset out  
  output  wb_clk_o,
  output  wb_rst_o

  // JTAG clock
`ifdef SIM
  input tck_pad_i,
  output  dbg_tck_o
`endif
);

// First, deal with the asychronous reset
wire  async_rst;
wire  async_rst_n;

assign  async_rst_n  = rst_n_pad_i;
assign  async_rst  = ~async_rst_n;

// Everyone likes active-high reset signals...
assign  async_rst_o = ~async_rst_n;

`ifdef SIM
assign  dbg_tck_o = tck_pad_i;
`endif

//
// Declare synchronous reset wires here
//

// An active-low synchronous reset signal (usually a PLL lock signal)
wire   sync_rst_n;
 
wire   pll_lock;

`ifndef SIM

pll pll0 
(
  .rst (async_rst),
  .refclk (sys_clk_pad_i),
  .outclk_0 (wb_clk_o),
  .locked (pll_lock)
);

`else

assign wb_clk_o = sys_clk_pad_i;
assign pll_lock = 1'b1;

`endif

assign sync_rst_n = pll_lock;

//
// Reset generation
//
//

// Reset generation for wishbone
reg [15:0]  wb_rst_shr;

always @(posedge wb_clk_o or posedge async_rst)
  if (async_rst)
    wb_rst_shr <= 16'hffff;
  else
    wb_rst_shr <= {wb_rst_shr[14:0], ~(sync_rst_n)};

assign wb_rst_o = wb_rst_shr[15];

endmodule // clkgen
