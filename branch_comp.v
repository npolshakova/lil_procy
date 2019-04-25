module branch_comp(data_a, data_b, branch_eq);

input [31:0] data_a;
input [31:0] data_b;
output reg  branch_eq;
initial
begin
	branch_eq = 0;
end 

always@*
begin 
	branch_eq = (data_a == data_b);
end 

endmodule