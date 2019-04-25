module control(control_sel, inst, pc_src, imm_sel, reg_write, branch_eq, b_sel, a_sel, addsub, mem_write, wb_sel, mem_read, alu_sel1, alu_sel2);

input control_sel;
input [31:0] inst;
input branch_eq;

output reg [1:0] pc_src;
output reg [2:0] imm_sel;
output reg reg_write;
output reg b_sel;
output reg a_sel;
output reg [1:0] alu_sel1;
output reg addsub;
output reg alu_sel2;
output reg mem_write;
output reg mem_read;
output reg [1:0] wb_sel;

	initial
	begin
		 pc_src = 2'b00;
		 imm_sel = 0;
		 reg_write = 0;
		 b_sel = 0;
		 a_sel = 0;
		 alu_sel1 = 0;
		 alu_sel2 = 0;
		 addsub = 0;
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
			alu_sel1 = 0;
			alu_sel2 = 0;
			addsub = 0;
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
					pc_src = 2'b01;
					wb_sel = 2;
					alu_sel1 = 0;
					alu_sel2 = 0;
					addsub = 0;
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
					alu_sel1 = 0;
					alu_sel2 = 0;
					addsub = 0;
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
					endcase
					wb_sel = 0;
					alu_sel1 = 0;
					alu_sel2 = 0;
					addsub = 0;
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
								7'b0000000: // add 
								begin 
								alu_sel1 = 0;
								alu_sel2 = 0;
								addsub = 0;
								end
								7'b0100000: // sub
								begin 
								alu_sel1 = 0;
								alu_sel2 = 0;
								addsub = 1;
								end
								7'b0000001: // mul
								begin 
								alu_sel1 = 0;
								alu_sel2 = 1;
								addsub = 0;
								end
								default: // ahh
								begin 
								alu_sel1 = 0;
								alu_sel2 = 0;
								addsub = 0;
								end
						endcase
						3'b111: // and
						begin 
								alu_sel1 = 1;
								alu_sel2 = 0;
								addsub = 0;
						end
						3'b110: // or
						begin 
								alu_sel1 = 2;
								alu_sel2 = 0;
								addsub = 0;
						end
						3'b001: // sll
						begin 
								alu_sel1 = 3;
								alu_sel2 = 0;
								addsub = 0;
						end
						default: // ahh
						begin 
							alu_sel1 = 0;
							alu_sel2 = 0;
							addsub = 0;
						end
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
					alu_sel1 = 0;
					alu_sel2 = 0;
					addsub = 0;
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
					alu_sel1 = 0;
					alu_sel2 = 0;
					addsub = 0;
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
						3'b000: // add 
						begin
						alu_sel1 = 0;
						alu_sel2 = 0;
						addsub = 0;
						end
						3'b111: // and
						begin
						alu_sel1 = 1;
						alu_sel2 = 0;
						addsub = 0;
						end
						3'b110: // or
						begin
						alu_sel1 = 2;
						alu_sel2 = 0;
						addsub = 0;
						end
						3'b001: // sll
						begin
						alu_sel1 = 3;
						alu_sel2 = 0;
						addsub = 0;
						end
						default: // ahh
						begin
						alu_sel1 = 0;
						alu_sel2 = 0;
						addsub = 0;
						end	
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
					alu_sel1 = 0;
					alu_sel2 = 0;
					addsub = 0;
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
					alu_sel1 = 0;
					alu_sel2 = 0;
					addsub = 0;
				end
		endcase
	end

endmodule