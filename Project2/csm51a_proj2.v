`timescale 1ns / 1ps
module csm51a_proj2(
    input [3:0]x,
    output a,
    output b,
    output c,
    output d,
    output e,
    output f,
    output g
    );
    
wire term0=~(~x[2]|~x[1]|~x[0]);
assign a=~(~(~x[2]|x[1]|x[0])|~(x[3]|x[2]|x[1]|~x[0]));
assign b=~(~(~x[2]|x[1]|~x[0])|~(~x[2]|~x[1]|x[0]));
assign c=~(~(x[2]|~x[1]|x[0])|0);
assign d=~(~(~x[2]|x[1]|x[0])|term0|~(x[3]|x[2]|x[1]|~x[0]));
assign e=~(x[0]|~(~x[2]|x[1]));
assign f=~(~(~x[1]|~x[0])|~(x[2]|~x[1])|~(x[3]|x[2]|~x[0]));
assign g=~(~(x[3]|x[2]|x[1])|term0);
endmodule
