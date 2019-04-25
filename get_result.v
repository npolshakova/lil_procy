module get_result(long, result);

input [63:0] long;
output [31:0] result;

assign result = long[31:0];

endmodule