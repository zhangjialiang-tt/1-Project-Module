//状态机模板：4段式状态机
localparam				IDLE 	=		;
localparam				S1 		=		;
localparam				S2 		=		;
localparam				S3 		=		;
localparam				S4 		=		;
reg			[]			state_c;
reg			[]			state_n;
wire					idle2s1_start;
wire					s12s2_start ; 
wire					s22s3_start ; 
wire					s32s4_start ; 
//第一段：同步时序always模块，格式化描述次态寄存器迁移到现态寄存器（不需更改）
always @ ( posedge clk or negedge rst_n )
begin
	if (!rst_n) begin
		state_c 			<= 			IDLE;
	end
	else begin
		state_c 			<= 			state_n;
	end
end

//第二段：组合逻辑always模块，描述状态转移判断
always @ （*）
begin
	case( state_c )
		IDLE : begin
			if( idle2s1_start ) begin
				state_n = S1;
			end
			else begin
				state_n = state_c;
			end
		end
		S1 : begin
			if( S12s2_start ) begin
				state_n = S2;
			end
			else begin
				state_n = state_c;
			end
		end
		S2 : begin
			if( S22s3_start ) begin
				state_n = S3;
			end
			else begin
				state_n = state_c;
			end
		end		
		default : state_n = IDLE;
		endcase
end

//第三段：设计转移条件
assign idle2s1_start = state_c == IDLE && ;
assign s12s2_start = state_c == IDLE && ;
assign s22s3_start = state_c == IDLE && ;
assign s32s4_start = state_c == IDLE && ;

//第四段：同步时序always模块，格式化描述寄存器输出（可有多个输出）
always @(posedge clk or posedge rst) begin
	if ( !rst_n ) begin
		out1 <= 1'b0;		
	end
	else begin
		out1 <= 1'b0;
	end
end
