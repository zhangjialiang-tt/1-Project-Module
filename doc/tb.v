/*-----------------------------------------------------------------------
CONFIDENTIAL IN CONFIDENCE
This confidential and proprietary software may be only used as authorized
by a licensing agreement from zjl ().
In the event of publication, the following notice is applicable:
Copyright (C) 2013-20xx zjl Corporation
The entire notice above must be reproduced on all authorized copies.
Author				:		zjl
Technology blogs 	: 		
Email Address 		: 		540113104@gmail.com
Filename			:		.v
Data				:		2018-04-06
Description			:		.
Modification History	:
Data			By			Version			Change Description
=========================================================================
04/06/18		zjl			  1.0				Original
-----------------------------------------------------------------------*/

`timescale 1ns/1ns
module tb_;

//------------------------------------------
//Generate driver clock
reg	 			clk   ; 
reg 			rst_n ;
wire      			  ;	

localparam 		PERIOD_CLK 	= 20;		//50MHz
localparam 		PERIOD_RST 	= 100;		//100ns
//------------------------------------------
//Generate global clock
initial	
begin
	clk 			= 		0;
	forever	#(PERIOD_CLK/2)	
		clk 		= 		~clk;
end
//------------------------------------------
//Generate global reset
task task_reset;
begin
	rst_n 			= 0;
	#( PERIOD_RST )
	rst_n 			= 1;
end
endtask
//---------------------------------------------
//Generate random data for input data
parameter				N 		=		1;
reg			[N-1:0]		a_in;
task task_rand_bit;
begin
	integer i = 0;
	begin
		for( i = 0; i < 255; i=i+1 )
			@( posedge clk );
				a_in <= { $random } % ( N + 1 );
	end
end
endtask

//-----------------------------------------
//设计顶层文件例化
name	inst_name
(
	.clk			( clk 	),
	.rst_n			( rst_n ),
	.din			( din 	),
	.dout			( dout 	)
);


//---------------------------------------------
//task of generate random bit signal
//教训：设置系统初始值，很重要
task task_sysinit;
begin
	
end
endtask
//----------------------------------------------
initial
begin
	task_sysinit;
	task_reset;
	
end

endmodule

