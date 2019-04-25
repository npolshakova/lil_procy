module mini_alu
(
	 data_a, data_b, result_and,result_or
);
	input [31:0] data_a;
	input [31:0] data_b;
	output reg [31:0] result_and;
	output reg [31:0] result_or;
	
	always @(*)
	begin
			result_and = data_a & data_b;
			result_or = data_a | data_b;
		
	end 
	
endmodule
