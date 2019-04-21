module exmem_reg(clk, inst_in, pc_in, alu_in, rs2_in, memwrite_in, wbselect_in, regwrite_in, dst_in, memread_in, inst_out, pc_out, alu_out, rs2_out, memwrite_out, wbselect_out, regwrite_out, dst_out, memread_out);

input clk;
input [31:0] inst_in;
input [31:0] pc_in;
input [31:0] alu_in;
input [31:0] rs2_in;
input memwrite_in;
input memread_in;
input [1:0] wbselect_in;
input regwrite_in;
input [4:0] dst_in;
output reg[31:0] inst_out;
output reg[31:0] pc_out;
output reg [31:0] alu_out;
output reg [31:0] rs2_out;
output reg memwrite_out;
output reg memread_out;
output reg [1:0] wbselect_out;
output reg regwrite_out;
output reg [4:0] dst_out;

always @(posedge clk)
begin 

inst_out <= inst_in;
pc_out <= pc_in;
alu_out <= alu_in;
rs2_out <= rs2_in;
memwrite_out <= memwrite_in;
wbselect_out <= wbselect_in;
regwrite_out <= regwrite_in;
dst_out <= dst_in;
memread_out <= memread_in;

end

endmodule