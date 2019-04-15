module registers(CLOCK_50, wb, addr_a, addr_b, dst, data_a, data_b, reg_write);

input CLOCK_50;
input [31:0] wb;
input [4:0] addr_a;
input [4:0] addr_b;
input [4:0] dst;
input reg_write;
output reg [31:0] data_a;
output reg [31:0] data_b;

reg [31:0] regs [31:0];

initial
	begin
		regs[0] = 0; // x0
		regs[1] = 0; // ra
		regs[2] = 32'b00000000000000000000000011111111;// sp
		regs[3] = 0;
		regs[4] = 0;
		regs[5] = 0;
		regs[6] = 0;
		regs[7] = 0;
		regs[8] = 0;
		regs[9] = 0;
		regs[10] = 0;
		regs[11] = 0;
		regs[12] = 0;
		regs[13] = 0;
		regs[14] = 0;
		regs[15] = 0;
		regs[16] = 0;
		regs[17] = 0;
		regs[18] = 0;
		regs[19] = 0;
		regs[20] = 0;
		regs[21] = 0;
		regs[22] = 0;
		regs[23] = 0;
		regs[24] = 0;
		regs[25] = 0;
		regs[26] = 0;
		regs[27] = 0;
		regs[28] = 0;
		regs[29] = 0;
		regs[30] = 0;
		regs[31] = 0;
	end

	always @(posedge CLOCK_50)
	begin
		
		if(reg_write && dst != 0) 
			regs[dst] <= wb;
	end 
	
	always @(addr_a or addr_b)
	begin
		data_a = regs[addr_a];
		data_b = regs[addr_b];
	end 

endmodule