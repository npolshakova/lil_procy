`timescale 10ns/1ns
module tb_full;
 // inputs
 reg clk;
 
  lil_procy_ver s1(clk);
 
 initial
 begin
 clk = 0;
 #1000 $stop;
 end

 always
 #5 clk=~clk;

endmodule
