module control(control_sel, inst, pc_src, branch_unsigned, imm_sel, reg_write, branch_eq, branch_lt, b_sel, a_sel, alu_sel, mem_write, wb_sel, mem_read);

input control_sel;
input [31:0] inst;
input branch_eq;
input branch_lt;

output reg [1:0] pc_src;
output reg [2:0] imm_sel;
output reg reg_write;
output reg branch_unsigned;
output reg b_sel;
output reg a_sel;
output reg [3:0] alu_sel;
output reg mem_write;
output reg mem_read;
output reg [1:0] wb_sel;

	initial
	begin
		 pc_src = 2'b00;
		 imm_sel = 0;
		 reg_write = 0;
		 branch_unsigned = 0;
		 b_sel = 0;
		 a_sel = 0;
		 alu_sel = 0;
		 mem_write = 0;
		 mem_read = 0;
		 wb_sel = 0;
	end 
	
	always @(*)
	begin
		if(control_sel)  // insert bubble
		begin 
			imm_sel = 3'b000;
			mem_write = 0;
			mem_read = 0;
			b_sel = 0;
			a_sel = 0;
			reg_write = 0;
			pc_src = 2'b10;
			wb_sel = 0;
			alu_sel = 4'b0010; // add 
		end
		else 
		case(inst[6:0])
			7'b1100111: // jalr
				begin
					imm_sel = 3'b011;
					mem_write = 0;
					mem_read = 0;
					b_sel = 1;
					a_sel = 0;
					reg_write = 1;
					pc_src = 2'b11;
					wb_sel = 2;
					alu_sel = 4'b0010; // add 
				end 
		7'b1101111: // jal 
				begin
					imm_sel = 3'b100;
					mem_write = 0;
					mem_read = 0;
					b_sel = 1;
					a_sel = 1;			
					reg_write = 1;
					pc_src = 2'b01;
					wb_sel = 2;
					alu_sel = 4'b0010; // add 
				end 
			7'b1100011: // branch 
				begin
					imm_sel = 3'b110;
					mem_write = 0;
					mem_read = 0;
					b_sel = 1;
					a_sel = 1;
					reg_write = 0;
					
					case(inst[14:12])
						3'b000: //beq
						begin
							if(branch_eq) 
								pc_src = 2'b01;
							else 
								pc_src = 2'b00;
						end
						3'b001: //bne
						begin
							if(~branch_eq) 
								pc_src = 2'b01;
							else 
								pc_src = 2'b00;
						end
						3'b100: //blt
						begin
							if(branch_lt) 
								pc_src = 2'b01;
							else 
								pc_src = 2'b00;
						end
						3'b101: //bge
						begin
							if(~branch_lt) 
								pc_src = 2'b01;
							else 
								pc_src = 2'b00;
						end
						default:
							pc_src = 2'b00;
					endcase
					wb_sel = 0;
					alu_sel = 4'b0010; // add 
				end 
			7'b0110011: // r format
				begin
					imm_sel = 3'b000;
					mem_write = 0;
					mem_read = 0;
					b_sel = 0;
					a_sel = 0;
					reg_write = 1;
					pc_src = 2'b00;
					wb_sel = 1;	
					case(inst[14:12])
						3'b000: 
						case(inst[31:25]) // func7
								7'b0000000: alu_sel = 4'b0010; // add 
								7'b0100000: alu_sel = 4'b0110; // sub 
								7'b0000001: alu_sel = 4'b1100; // mul
								default:    alu_sel = 4'b1111; // ahh
						endcase
						3'b111: alu_sel = 4'b0000; // and
						3'b110: alu_sel = 4'b0001; // or
						3'b001: alu_sel = 4'b0111; // sll
						default:alu_sel = 4'b1111; // ahh	
					endcase
				end 
			7'b0000011: // load  
				begin
				imm_sel = 3'b001;
					mem_write = 0;
					mem_read = 1;
					b_sel = 1;
					a_sel = 0;
					reg_write = 1;
					pc_src = 2'b00;
					wb_sel = 0;
					alu_sel = 4'b0010; // add 
				end 
			7'b0100011: // sd  
				begin
				imm_sel = 3'b010;
					mem_write = 1;
					mem_read = 0;
					b_sel = 1;
					a_sel = 0;
					reg_write = 0;
					pc_src = 2'b00;
					wb_sel = 0; // X
					alu_sel = 4'b0010; // add 
				end 			
			7'b0010011: // r immediate  
				begin
					imm_sel = 3'b000;
					mem_write = 0;
					mem_read = 0;
					b_sel = 1;
					a_sel = 0;
					reg_write = 1;
					pc_src = 2'b00;
					wb_sel = 1;
					case(inst[14:12])
						3'b000: alu_sel = 4'b0010; // add 
						3'b111: alu_sel = 4'b0000; // and
						3'b110: alu_sel = 4'b0001; // or
						3'b001: alu_sel = 4'b0111; // sll
						default:alu_sel = 4'b1111; // ahh	
					endcase
				end
			7'b1111111: // halt  
				begin
					imm_sel = 3'b000;
					mem_write = 0;
					mem_read = 0;
					b_sel = 1;
					a_sel = 1;
					reg_write = 0;
					pc_src = 2'b01; // pc set to current pc
					wb_sel = 0; //X
					alu_sel = 4'b0010; // add 
				end
			default: // ahh
				begin
					imm_sel = 3'b000;
					mem_write = 0;
					mem_read = 0;
					b_sel = 1;
					a_sel = 0;
					reg_write = 0;
					pc_src = 2'b00;
					wb_sel = 0; // X
					alu_sel = 4'b0010; // add 
				end
		endcase
	end

endmodule