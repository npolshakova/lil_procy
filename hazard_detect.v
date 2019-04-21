module hazard_detect(rs1, rs2, rd, mem_read, control_sel);

input [4:0] rs1;
input [4:0] rs2;
input [4:0] rd;
input mem_read;
output reg control_sel;

always @*
begin 

	if(mem_read && (rd != 0) && (rs1 == rd || rs2 == rd)) control_sel = 1'b1; // stall
	else control_sel = 1'b0;
	
end

endmodule