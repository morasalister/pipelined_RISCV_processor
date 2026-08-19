`timescale 1ns/1ps 
module tb_riscv_pipeline; 
  reg clk=0,reset=1; 
  wire [31:0] x3,x4,x5,x6,x7; 
  riscv_pipeline d(clk,reset,x3,x4,x5,x6,x7); 
  always #5 clk=~clk; 
  initial 
    begin #1; 
      d.IM.m[0]=32'h00500093;
      d.IM.m[1]=32'h00700113;
      d.IM.m[2]=32'h002081b3;
      d.IM.m[3]=32'h40118233;
      d.IM.m[4]=32'h00402023;
      d.IM.m[5]=32'h00002283;
      d.IM.m[6]=32'h00228333;
      d.IM.m[7]=32'h00630463;
      d.IM.m[8]=32'h06300393;
      d.IM.m[9]=32'h02a00393;
      #20 reset=0;
      #250;
      if(x3==12&&x4==7&&x5==7&&x6==14&&x7==42)
        $display("PASS: pipelined RV32I program completed successfully.");
      else $display("FAIL x3=%0d x4=%0d x5=%0d x6=%0d x7=%0d",x3,x4,x5,x6,x7);
      $finish;
    end 
endmodule
