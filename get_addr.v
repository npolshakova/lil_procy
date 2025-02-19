module get_addr(alu_result, addr);

input [31:0] alu_result;
output [7:0] addr;

assign addr = alu_result[6:0];

endmodule