module instruction_mem(pc, inst);

	input [31:0] pc;
	output wire [31:0] inst;

	reg [31:0] rom_fact [31:0];
		
		always @*
		begin 
		
		/*Program 1:
		addi x1, x0, 0
		addi x2, x0, 16
		addi x3, x0, 100
		addi x4, x0, 8
		add x5, x1, x2
		add x6, x3, x4
		sw x5, 0(x1)
		sw x6, 4(x2)
		
		rom_fact[0] = 32'b00000000000000000000000010010011; //8'h00000093;	//addi x1 x0 0
		
		rom_fact[1] = 32'b00000001000000000000000100010011; //8'h01000113;	//addi x2 x0 16
		
		rom_fact[2] = 32'b00000110010000000000000110010011; //8'h06400193;	//addi x3 x0 100
		
		rom_fact[3] = 32'b00000000100000000000001000010011; //8'h00800213;	//addi x4 x0 8
		
		rom_fact[4] = 32'b00000000001000001000001010110011; //8'h002082b3;	//add x5 x1 x2
		
		rom_fact[5] = 32'b00000000010000011000001100110011; //8'h00418333;	//add x6 x3 x4
		
		rom_fact[6] = 32'b00000000010100001010000000100011; //8'h0050a023;	//sw x5 0(x1)
		
		rom_fact[7] = 32'b00000000011000010010001000100011; //8'h00612223;  //sw x6 4(x2)
		
		rom_fact[8] = 32'b00000000000000000000000001111111; //8'b11111111;  //halt
		
		*/
		
		/*
			Program 2:
				addi t0, x0, 8
				addi t1, x0, 15
				sw t1, 0(t0)
				add t2, t1, t0
				sub t3, t1, t0
				mul s1, t2, t3
				addi t0, t0, 4
				lw s2, -4(t0)
				sub s2, s1, s2
				slli s2, s2, 2
				sw s2, 0(t0)
				
					rom_fact[0] = 32'b00000000100000000000001010010011; //0x00800293	addi x5 x0 8
		
					rom_fact[1] = 32'b00000000111100000000001100010011; //0x00f00313	addi x6 x0 15
					
					rom_fact[2] = 32'b00000000011000101010000000100011; //0x0062a023	sw x6 0(x5)
					
					rom_fact[3] = 32'b00000000010100110000001110110011; //0x005303b3	add x7 x6 x5
					
					rom_fact[4] = 32'b01000000010100110000111000110011; //0x40530e33	sub x28 x6 x5
					
					rom_fact[5] = 32'b00000011110000111000010010110011; //0x03c384b3	mul x9 x7 x28
					
					rom_fact[6] = 32'b00000000010000101000001010010011; //0x00428293	addi x5 x5 4
					
					rom_fact[7] = 32'b11111111110000101010100100000011; //0xffc2a903	lw x18 -4(x5)
					
					rom_fact[8] = 32'b01000001001001001000100100110011; //0x41248933	sub x18 x9 x18
					
					rom_fact[9]= 32'b00000000001010010001100100010011; //0x00291913	slli x18 x18 2
					
					rom_fact[10]= 32'b00000001001000101010000000100011; //0x0122a023	sw x18 0(x5)
					
					rom_fact[11]= 32'b00000000000000000000000001111111; //8'b11111111;  //halt
		*/
		
		/*
		FACT:
		
			addi a0, x0, 6
			jal ra, fact
			sw a0, 0(x0)

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
		*/
		///*
		rom_fact[0] = 32'b00000000011000000000010100010011; //0x00600513	addi x10 x0 6	addi a0, x0, 6
		//rom_fact[0] = 32'b0000000000001100000000010100010011; //0x00300513	addi x10 x0 3	addi a0, x0, 3
		rom_fact[1] = 32'b00000000110000000000000011101111; //0x008000ef	jal x1 12	jal ra, fact
		rom_fact[2] = 32'b00000000101000000010000000100011; //0x00a02023	sw x10 0(x0)	sw a0, 0(x0)
		rom_fact[3] = 32'b00000000000000000000000001111111; //8'b11111111;  //halt
		rom_fact[4] = 32'b11111111100000010000000100010011; //0xff810113	addi x2 x2 -8	addi sp, sp, -8
		rom_fact[5] = 32'b00000000000100010010001000100011; //0x00112223	sw x1 4(x2)	sw ra, 4(sp)
		rom_fact[6] = 32'b00000000101000010010000000100011; //0x00a12023	sw x10 0(x2)	sw a0, 0(sp)
		rom_fact[7] = 32'b11111111111101010000010100010011; //0xfff50513	addi x10 x10 -1	addi a0, a0, -1
		rom_fact[8] = 32'b00000000000001010001100001100011; //0x00051863	bne x10 x0 16	bne a0, x0, else
		rom_fact[9] = 32'b00000000000100000000010100010011; //0x00100513	addi x10 x0 1	addi a0, x0, 1
		rom_fact[10]= 32'b00000000100000010000000100010011; //0x00810113	addi x2 x2 8	addi sp, sp, 8
		rom_fact[11] = 32'b00000000000000001000000001100111; //0x00008067	jalr x0 x1 0	jalr x0, 0(ra)
		rom_fact[12] = 32'b11111110000111111111000011101111; //0xfe1ff0ef	jal x1 -32	jal ra, fact
		rom_fact[13] = 32'b00000000000001010000001010010011; //0x00050293	addi x5 x10 0	addi t0, a0,0
		rom_fact[14] = 32'b00000000000000010010010100000011; //0x00012503	lw x10 0(x2)	lw a0, 0(sp)
		rom_fact[15] = 32'b00000000010000010010000010000011; //0x00412083	lw x1 4(x2)	lw ra, 4(sp)
		rom_fact[16] = 32'b00000000100000010000000100010011; //0x00810113	addi x2 x2 8	addi sp, sp, 8
		rom_fact[17] = 32'b00000010010101010000010100110011; //0x02550533	mul x10 x10 x5	mul a0, a0, t0
		rom_fact[18] = 32'b00000000000000001000000001100111; //0x00008067	jalr x0 x1 0	jalr x0, 0(ra)
		//*/
		
		/*
		FIB:
	
		addi t2 t2 3 # comparison
		addi a0, x0, 6 # load value
		jal ra, fib
		beq x0 x0 done
		fib:
		addi sp, sp, -8
		sw ra, 4(sp)
		sw a0, 0(sp)
		bge a0 t2 else
		addi a1, x0, 1 # if n <= 2
		addi sp, sp, 8
		jalr x0, 0(ra)
		else: # if n >= 2
		addi a0 a0 -1 # calc n - 1
		jal ra, fib # loose ra with call
		addi sp, sp, -4 # save f(n-1) on stack
		sw a1, 0(sp)
		addi a0 a0 -1 # calc n - 2
		jal ra, fib # loose ra with call
		addi t1, a1,0 # save f(n - 2)
		lw t0, 0(sp) # pop f(n-1)
		addi sp, sp, 4
		lw a0, 0(sp) # restore n
		lw ra, 4(sp)
		addi sp, sp, 8
		add a1, t1, t0 #f(n-2) + f(n-1)
		jalr x0, 0(ra)

		done: 
	*/
	/*
		rom_fact[0] = 32'b00000000001100111000001110010011; //0x00338393	addi x7 x7 3	addi t2 t2 3 # comparison **
		rom_fact[1] = 32'b00000000011000000000010100010011; //0x00600513	addi x10 x0 6	addi a0, x0, 6 # load value
		//rom_fact[1] = 32'b0000000000001000000000010100010011; //0x00200513	addi x10 x0 2	addi a0, x0, 2 # load value
		rom_fact[2] = 32'b00000000110000000000000011101111; //0x00c000ef	jal x1 12	jal ra, fib
		rom_fact[3] = 32'b00000000101100000010000000100011; //0x00b02023	sw x11 0(x0)	sw a1 0(x0) **
		rom_fact[4] = 32'b00000000000000000000000001111111; //8'b11111111;  //halt
		rom_fact[5] = 32'b11111111100000010000000100010011; //0xff810113	addi x2 x2 -8	addi sp, sp, -8
		rom_fact[6] = 32'b00000000000100010010001000100011; //0x00112223	sw x1 4(x2)	sw ra, 4(sp)
		rom_fact[7] = 32'b00000000101000010010000000100011; //0x00a12023	sw x10 0(x2)	sw a0, 0(sp)
		rom_fact[8] = 32'b00000000011101010101100001100011; //0x00755863	bge x10 x7 16	bge a0 t2 else
		rom_fact[9] = 32'b00000000000100000000010110010011; //0x00100593	addi x11 x0 1	addi a1, x0, 1 # if n <= 2
		rom_fact[10] = 32'b00000000100000010000000100010011; //0x00810113	addi x2 x2 8	addi sp, sp, 8
		rom_fact[11]= 32'b00000000000000001000000001100111; //0x00008067	jalr x0 x1 0	jalr x0, 0(ra)
		rom_fact[12] = 32'b11111111111101010000010100010011; //0xfff50513	addi x10 x10 -1	addi a0 a0 -1 # calc n - 1
		rom_fact[13] = 32'b11111110000111111111000011101111; //0xfe1ff0ef	jal x1 -32	jal ra, fib # loose ra with call
		rom_fact[14] = 32'b11111111110000010000000100010011; //0xffc10113	addi x2 x2 -4	addi sp, sp, -4 # save f(n-1) on stack **
		rom_fact[15] = 32'b00000000101100010010000000100011; //0x00b12023	sw x11 0(x2)	sw a1, 0(sp) **
		rom_fact[16] = 32'b11111111111101010000010100010011; //0xfff50513	addi x10 x10 -1	addi a0 a0 -1 # calc n - 2
		rom_fact[17] = 32'b11111101000111111111000011101111; //0xfd1ff0ef	jal x1 -48	jal ra, fib # loose ra with call **
		rom_fact[18] = 32'b00000000000001011000001100010011; //0x00058313	addi x6 x11 0	addi t1, a1,0 # save f(n - 2) **
		rom_fact[19] = 32'b00000000000000010010001010000011; //0x00012283	lw x5 0(x2)	lw t0, 0(sp) # pop f(n-1) **
		rom_fact[20] = 32'b00000000010000010000000100010011; //0x00410113	addi x2 x2 4	addi sp, sp, 4 **
		rom_fact[21] = 32'b00000000000000010010010100000011; //0x00012503	lw x10 0(x2)	lw a0, 0(sp) # restore n
		rom_fact[22] = 32'b00000000010000010010000010000011; //0x00412083	lw x1 4(x2)	lw ra, 4(sp)
		rom_fact[23] = 32'b00000000100000010000000100010011; //0x00810113	addi x2 x2 8	addi sp, sp, 8
		rom_fact[24] = 32'b00000000010100110000010110110011; //0x005305b3	add x11 x6 x5	add a1, t1, t0 #f(n-2) + f(n-1) **
		rom_fact[25] = 32'b00000000000000001000000001100111; //0x00008067	jalr x0 x1 0	jalr x0, 0(ra)
		*/
		end 
		
		assign inst = rom_fact[pc / 4];

endmodule