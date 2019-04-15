module alu
(
	 data_a, data_b, alu_result,alu_select
);
	input [3:0] alu_select;
	input [31:0] data_a;
	input [31:0] data_b;
	output reg [31:0] alu_result;
	
	reg signed [31:0] a;
	reg signed [31:0] b;

	initial
	begin
		alu_result = 0;
		a = 0;
		b = 0;
	end
	
	always @(*)
	begin
		a = data_a;
		b = data_b;
		
		case(alu_select)
			4'b0010: // add
					alu_result = a + b;
			4'b0110: // sub
					alu_result = a - b;
			4'b0000: // and 
					alu_result = a & b;
			4'b0001: // or
					alu_result = a | b;	
			4'b1100: // mul
					alu_result = a * b;
			4'b0111: //sll
					alu_result = a << b;
			default: 
					alu_result = b; // Ahh!
		endcase
		
	end 
	
endmodule
