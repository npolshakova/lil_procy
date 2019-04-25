module branch_comp(data_a, data_b, branch_unsigned, branch_eq, branch_lt);

input [31:0] data_a;
input [31:0] data_b;
input branch_unsigned;
output reg  branch_eq;
output reg branch_lt;

initial
begin
	branch_eq = 0;
	branch_lt = 0;
end 

always@*
begin 
	branch_eq = (data_a == data_b);
	branch_lt = (data_a < data_b);
end 

endmodule