module forwarding(regwrite, rs1, rs2, wb_reg, a_select, b_select);

input regwrite;
input [4:0] rs1;
input [4:0] rs2; 
input [4:0] wb_reg;
output reg a_select;
output reg b_select;

always @*
begin 

	if(regwrite && wb_reg != 0 && wb_reg == rs1) a_select = 1'b1;
	else a_select = 1'b0;
	
	if(regwrite && wb_reg != 0 && wb_reg == rs2) b_select = 1'b1;
	else b_select = 1'b0;

end

endmodule