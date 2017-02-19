//csm51a_proj3_tb.v
//Michael Wu ID: 404751542
//Minghong Zhou ID: 004424670
`timescale 1ns / 1ps
module csm51a_proj3_tb;
reg [1:0]x;
reg clk;
reg reset;
wire [1:0]z;
initial begin
    x=0;
    reset = 1;
    clk = 0;
    #10 reset =0;
    #20 x=3;
    #10 x=1;
    #10 x=3;
    #10 x=0;
    
    #20 x=1;
    #40 x=0;
    
    #20 x=3;
    #10 reset = 1;
    x=0;
    #10
    $finish;
end
always begin
    #5 clk = ~clk;
end
csm51a_proj3 U0(
    .x (x),
    .reset (reset),
    .clk(clk),
    .z (z));
endmodule