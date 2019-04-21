module hazard_detect(rs1, rs2, rd, mem_read, pcwrite, control_sel);

input [4:0] rs1;
input [4:0] rs2;
input [4:0] rd;
input mem_read;
output reg pcwrite;
output reg control_sel;

always @*
begin 

	if(mem_read && (rs1 == rd || rs2 == rd)) // stall
	begin
		pcwrite = 1'b1;
		control_sel = 1'b1;
	end 
	else 
	begin 
		pcwrite = 1'b0;
		control_sel = 1'b0;
	end 

end

endmodule