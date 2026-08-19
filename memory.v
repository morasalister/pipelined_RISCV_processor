module imem(input [31:0] a,output [31:0] d); 
  reg [31:0] m[0:255]; 
  assign d=m[a[9:2]]; 
endmodule


module dmem(input clk,input we,input [31:0] a,wd,output [31:0] d); 
  reg [31:0] m[0:255]; 
  assign d=m[a[9:2]]; 
  always @(posedge clk) 
    if(we)m[a[9:2]]<=wd; 
endmodule
