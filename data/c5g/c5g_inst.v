	c5g u0 (
		.clk_clk                         (<connected-to-clk_clk>),                         //           clk.clk
		.lpddr2_avl_0_waitrequest_n      (<connected-to-lpddr2_avl_0_waitrequest_n>),      //  lpddr2_avl_0.waitrequest_n
		.lpddr2_avl_0_beginbursttransfer (<connected-to-lpddr2_avl_0_beginbursttransfer>), //              .beginbursttransfer
		.lpddr2_avl_0_address            (<connected-to-lpddr2_avl_0_address>),            //              .address
		.lpddr2_avl_0_readdatavalid      (<connected-to-lpddr2_avl_0_readdatavalid>),      //              .readdatavalid
		.lpddr2_avl_0_readdata           (<connected-to-lpddr2_avl_0_readdata>),           //              .readdata
		.lpddr2_avl_0_writedata          (<connected-to-lpddr2_avl_0_writedata>),          //              .writedata
		.lpddr2_avl_0_byteenable         (<connected-to-lpddr2_avl_0_byteenable>),         //              .byteenable
		.lpddr2_avl_0_read               (<connected-to-lpddr2_avl_0_read>),               //              .read
		.lpddr2_avl_0_write              (<connected-to-lpddr2_avl_0_write>),              //              .write
		.lpddr2_avl_0_burstcount         (<connected-to-lpddr2_avl_0_burstcount>),         //              .burstcount
		.lpddr2_status_local_init_done   (<connected-to-lpddr2_status_local_init_done>),   // lpddr2_status.local_init_done
		.lpddr2_status_local_cal_success (<connected-to-lpddr2_status_local_cal_success>), //              .local_cal_success
		.lpddr2_status_local_cal_fail    (<connected-to-lpddr2_status_local_cal_fail>),    //              .local_cal_fail
		.memory_mem_ca                   (<connected-to-memory_mem_ca>),                   //        memory.mem_ca
		.memory_mem_ck                   (<connected-to-memory_mem_ck>),                   //              .mem_ck
		.memory_mem_ck_n                 (<connected-to-memory_mem_ck_n>),                 //              .mem_ck_n
		.memory_mem_cke                  (<connected-to-memory_mem_cke>),                  //              .mem_cke
		.memory_mem_cs_n                 (<connected-to-memory_mem_cs_n>),                 //              .mem_cs_n
		.memory_mem_dm                   (<connected-to-memory_mem_dm>),                   //              .mem_dm
		.memory_mem_dq                   (<connected-to-memory_mem_dq>),                   //              .mem_dq
		.memory_mem_dqs                  (<connected-to-memory_mem_dqs>),                  //              .mem_dqs
		.memory_mem_dqs_n                (<connected-to-memory_mem_dqs_n>),                //              .mem_dqs_n
		.oct_rzqin                       (<connected-to-oct_rzqin>),                       //           oct.rzqin
		.reset_reset_n                   (<connected-to-reset_reset_n>)                    //         reset.reset_n
	);

