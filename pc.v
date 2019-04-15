module pc(CLOCK_50, update_pc, pc);

input CLOCK_50;
input [31:0] update_pc;
output reg [31:0] pc;

initial
begin 
	pc = 0;
end 

always @(posedge CLOCK_50)
	begin
	
	pc <= update_pc;
			
	end

endmodule