module get_shift(val, shift);

input [31:0] val;
output [4:0] shift;

assign shift = val[4:0];

endmodule
