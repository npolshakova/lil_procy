module instruction_mem(pc, inst);

	input [31:0] pc;
	output wire [31:0] inst;

	reg [31:0] rom_fact [31:0];
		
		always @*
		begin 

		/*
		FACT:
			addi a0, x0, 6
			jal ra, fact
			sw a0, 0(x0)
			sw x30, 4(x0)
         jal x0 done
			fact:
			addi sp, sp, -8
			sw  ra, 4(sp)
			sw  a0, 0(sp)
			addi a0, a0, -1
			bne a0, x0, else
			addi a0, x0, 1
			addi sp, sp, 8
			jalr x0, 0(ra)
			else:
			jal ra, fact
			addi t0, a0,0
			lw  a0, 0(sp)
			lw  ra, 4(sp)
			addi sp, sp, 8
			mul a0, a0, t0
			jalr x0, 0(ra)
         done:
		*/
		///*
		rom_fact[0] = 32'h00600513;	//addi x10 x0 6	addi a0, x0, 6
		rom_fact[1] = 32'h010000ef;	//jal x1 16
		rom_fact[2] = 32'h00a02023;	//sw x10 0(x0)	sw a0, 0(x0)
		rom_fact[3] = 32'h01e02223; //sw x30, 4(x0)
		rom_fact[4] = 32'b00000000000000000000000001111111; //halt
		rom_fact[5] = 32'b11111111100000010000000100010011; //0xff810113	addi x2 x2 -8	addi sp, sp, -8 
		rom_fact[6] = 32'b00000000000100010010001000100011; //0x00112223	sw x1 4(x2)	sw ra, 4(sp)
		rom_fact[7] = 32'b00000000101000010010000000100011; //0x00a12023	sw x10 0(x2)	sw a0, 0(sp)
		rom_fact[8] = 32'b11111111111101010000010100010011; //0xfff50513	addi x10 x10 -1	addi a0, a0, -1
		rom_fact[9] = 32'b00000000000001010001100001100011; //0x00051863	bne x10 x0 16	bne a0, x0, else
		rom_fact[10] = 32'b00000000000100000000010100010011; //0x00100513	addi x10 x0 1	addi a0, x0, 1
		rom_fact[11]= 32'b00000000100000010000000100010011; //0x00810113	addi x2 x2 8	addi sp, sp, 8
		rom_fact[12] = 32'b00000000000000001000000001100111; //0x00008067	jalr x0 x1 0	jalr x0, 0(ra)
		rom_fact[13] = 32'b11111110000111111111000011101111; //0xfe1ff0ef	jal x1 -32	jal ra, fact
		rom_fact[14] = 32'b00000000000001010000001010010011; //0x00050293	addi x5 x10 0	addi t0, a0,0
		rom_fact[15] = 32'b00000000000000010010010100000011; //0x00012503	lw x10 0(x2)	lw a0, 0(sp)
		rom_fact[16] = 32'b00000000010000010010000010000011; //0x00412083	lw x1 4(x2)	lw ra, 4(sp)
		rom_fact[17] = 32'b00000000100000010000000100010011; //0x00810113	addi x2 x2 8	addi sp, sp, 8
		rom_fact[18] = 32'b00000010010101010000010100110011; //0x02550533	mul x10 x10 x5	mul a0, a0, t0
		rom_fact[19] = 32'b00000000000000001000000001100111; //0x00008067	jalr x0 x1 0	jalr x0, 0(ra)
		//*/
		
		/*NOPS FACT:
			
			addi a0, x0, 6
			jal ra, fact
			sw a0, 0(x0)
			sw x30, 4(x0)
         jal x0 done
			
			fact:
			addi sp, sp, -8
			NOP
			sw  ra, 4(sp)
			sw  a0, 0(sp)
			NOP
			addi a0, a0, -1
			NOP
			bne a0, x0, else
			addi a0, x0, 1
			addi sp, sp, 8
			jalr x0, 0(ra)
			else:
			jal ra, fact
			addi t0, a0,0
			lw  a0, 0(sp)
			lw  ra, 4(sp)
			addi sp, sp, 8
			mul a0, a0, t0
			jalr x0, 0(ra)
         
			done:
		*/
		/*
		rom_fact[0] = 32'h00600513;	//addi x10 x0 6	addi a0, x0, 6
		rom_fact[1] = 32'h010000ef;	//jal x1 16
		rom_fact[2] = 32'h00a02023;	//sw x10 0(x0)	sw a0, 0(x0)
		rom_fact[3] = 32'h01e02223; //sw x30, 4(x0)
		rom_fact[4] = 32'b00000000000000000000000001111111; //halt
		rom_fact[5] = 32'h00000033; // nop
		rom_fact[6] = 32'b11111111100000010000000100010011; //0xff810113	addi x2 x2 -8	addi sp, sp, -8
		rom_fact[7] = 32'h00000033; // nop
		rom_fact[8] = 32'b00000000000100010010001000100011; //0x00112223	sw x1 4(x2)	sw ra, 4(sp)
		rom_fact[9] = 32'b00000000101000010010000000100011; //0x00a12023	sw x10 0(x2)	sw a0, 0(sp)
		rom_fact[10] = 32'b11111111111101010000010100010011; //0xfff50513	addi x10 x10 -1	addi a0, a0, -1
		rom_fact[11] = 32'h00000033; // nop
		rom_fact[12] = 32'b00000000000001010001100001100011; //0x00051863	bne x10 x0 16	bne a0, x0, else
		rom_fact[13] = 32'b00000000000100000000010100010011; //0x00100513	addi x10 x0 1	addi a0, x0, 1
		rom_fact[14]= 32'b00000000100000010000000100010011; //0x00810113	addi x2 x2 8	addi sp, sp, 8
		rom_fact[15] = 32'b00000000000000001000000001100111; //0x00008067	jalr x0 x1 0	jalr x0, 0(ra)
		rom_fact[16] = 32'hfd5ff0ef;	//jal x1 -44	jal ra, fact
		rom_fact[17] = 32'b00000000000001010000001010010011; //0x00050293	addi x5 x10 0	addi t0, a0,0
		rom_fact[18] = 32'b00000000000000010010010100000011; //0x00012503	lw x10 0(x2)	lw a0, 0(sp)
		rom_fact[19] = 32'b00000000010000010010000010000011; //0x00412083	lw x1 4(x2)	lw ra, 4(sp)
		rom_fact[20] = 32'b00000000100000010000000100010011; //0x00810113	addi x2 x2 8	addi sp, sp, 8
		rom_fact[21] = 32'b00000010010101010000010100110011; //0x02550533	mul x10 x10 x5	mul a0, a0, t0
		rom_fact[22] = 32'b00000000000000001000000001100111; //0x00008067	jalr x0 x1 0	jalr x0, 0(ra)
		*/
		
		/*
		Test program:
		addi x1 x0 10 # x1 = 10
		addi x2 x1 3 # x2 = 13
		addi x3 x0 1 # x3 = 1
		sw x1 0(x0) # store 10
		addi x1 x0 2 # x1 = 1
		lw x3 0(x0) # x3 = 10
		addi x3 x3 1 # x3 = 11
		sw x3 0(x0) # store 11
		sw x30, 4(x0)
		*/
		/*
		rom_fact[0] = 32'h00a00093;
		rom_fact[1] = 32'h00308113;
		rom_fact[2] = 32'h00100193;
		rom_fact[3] = 32'h00102023; 
		rom_fact[4] = 32'h00200093; 
		rom_fact[5] = 32'h00002183;  //lw x3 0(x0)
		rom_fact[6] = 32'h00118193; //addi x3 x3 1 
		rom_fact[7] = 32'h00302023; //sw x3 0(x0)
		rom_fact[8] = 32'h01e02223; //sw x30, 4(x0)
		rom_fact[9] = 32'b00000000000000000000000001111111; //8'b11111111;  //halt
		*/
		
		//Test program:
		/*
		addi x1 x0 10 # x1 = 10
		NOP
		addi x2 x1 3 # x2 = 13
		addi x3 x0 1 # x3 = 1
		sw x1 0(x0) # store 10
		NOP
		addi x1 x0 2 # x1 = 1
		lw x3 0(x0) # x3 = 10
		NOP
		addi x3 x3 1 # x3 = 11
		NOP
		sw x3 0(x0) # store 11
		sw x30, 4(x0)
		*/
		/*
		rom_fact[0] = 32'h00a00093;
		rom_fact[1] = 32'h00000033; // nop
		rom_fact[2] = 32'h00308113;
		rom_fact[3] = 32'h00100193;
		rom_fact[4] = 32'h00102023;
		rom_fact[5] = 32'h00000033; // nop	
		rom_fact[6] = 32'h00200093; 
		rom_fact[7] = 32'h00002183; 
		rom_fact[8] = 32'h00000033; // nop
		rom_fact[9] = 32'h00118193;
		rom_fact[10] = 32'h00000033; // nop
		rom_fact[11] = 32'h00302023;
		rom_fact[12] = 32'h01e02223; //sw x30, 4(x0)
		rom_fact[13] = 32'b00000000000000000000000001111111; //8'b11111111;  //halt
		*/
	
		end 
		
		assign inst = rom_fact[pc / 4];

endmodule