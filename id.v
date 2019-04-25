module id(inst, dst, addr_a, addr_b);

input [31:0] inst;
output reg [4:0] dst;
output reg [4:0] addr_a;
output reg [4:0] addr_b;


	always @*
	begin
		addr_a = inst[19:15];
		addr_b = inst[24:20];
		dst = inst[11:7];
	end 

endmodule