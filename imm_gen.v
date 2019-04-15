module imm_gen(inst, imm_sel, imm);

input [2:0] imm_sel;
input [31:0] inst;
output reg [31:0] imm;

always @(*)
begin
	case(imm_sel) // opcode
			3'b000: imm = {{20{inst[31]}},inst[31:20]}; // r type
			3'b001:  imm = {{18{inst[31]}},inst[31:20]}; //lw
			3'b010: imm = {{18{inst[31]}},inst[31:25], inst[11:7]}; // sw
			3'b100: imm = {{12{inst[31]}},inst[31],inst[19:12],inst[20],inst[30:21], 1'b0}; //jal		
			3'b011: imm = {{20{inst[31]}},inst[31:20]}; //jalr
			3'b110: imm = {{19{inst[31]}},inst[31],inst[7],inst[30:25],inst[11:8], 1'b0};// branch
			default: imm = {32{1'b1}}; // AHH
		endcase  
end 

endmodule