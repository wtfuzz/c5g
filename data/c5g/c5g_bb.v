
module c5g (
	clk_clk,
	lpddr2_avl_0_waitrequest_n,
	lpddr2_avl_0_beginbursttransfer,
	lpddr2_avl_0_address,
	lpddr2_avl_0_readdatavalid,
	lpddr2_avl_0_readdata,
	lpddr2_avl_0_writedata,
	lpddr2_avl_0_byteenable,
	lpddr2_avl_0_read,
	lpddr2_avl_0_write,
	lpddr2_avl_0_burstcount,
	lpddr2_status_local_init_done,
	lpddr2_status_local_cal_success,
	lpddr2_status_local_cal_fail,
	memory_mem_ca,
	memory_mem_ck,
	memory_mem_ck_n,
	memory_mem_cke,
	memory_mem_cs_n,
	memory_mem_dm,
	memory_mem_dq,
	memory_mem_dqs,
	memory_mem_dqs_n,
	oct_rzqin,
	reset_reset_n,
	lpddr2_pll_ref_clk_clk);	

	input		clk_clk;
	output		lpddr2_avl_0_waitrequest_n;
	input		lpddr2_avl_0_beginbursttransfer;
	input	[26:0]	lpddr2_avl_0_address;
	output		lpddr2_avl_0_readdatavalid;
	output	[31:0]	lpddr2_avl_0_readdata;
	input	[31:0]	lpddr2_avl_0_writedata;
	input	[3:0]	lpddr2_avl_0_byteenable;
	input		lpddr2_avl_0_read;
	input		lpddr2_avl_0_write;
	input		lpddr2_avl_0_burstcount;
	output		lpddr2_status_local_init_done;
	output		lpddr2_status_local_cal_success;
	output		lpddr2_status_local_cal_fail;
	output	[9:0]	memory_mem_ca;
	output	[0:0]	memory_mem_ck;
	output	[0:0]	memory_mem_ck_n;
	output	[0:0]	memory_mem_cke;
	output	[0:0]	memory_mem_cs_n;
	output	[3:0]	memory_mem_dm;
	inout	[31:0]	memory_mem_dq;
	inout	[3:0]	memory_mem_dqs;
	inout	[3:0]	memory_mem_dqs_n;
	input		oct_rzqin;
	input		reset_reset_n;
	input		lpddr2_pll_ref_clk_clk;
endmodule
