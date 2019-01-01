localparam min = 10;
localparam seed = 1;
initial begin
//1.
	forever
		@ ( posedge clk )
			rand_data = min+{ $random } % ( max-min+1 );
end

initial begin
//2.
	repeat ( 10 )
		@ ( posedge clk )
		rand_data = { $random } % 100;
end
//3.
initial begin
	rand_data = { $random } % 100;
end

//4.
task task_rand_bit;
begin
	integer i;
	begin
		for( i = 0; i < 255; i=i+1 )begin
			@( posedge clk );
				rand_data = { $random } % 2;
		end
	end
end
endtask
