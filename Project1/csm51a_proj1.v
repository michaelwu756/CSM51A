`timescale 1ns / 1ps
module myCircut(
    input [2:0] x,
    output z
    );

wire m1,m2,m6;
assign m1=~x[2]&~x[1]&x[0];
assign m2=~x[2]&x[1]&~x[0];
assign m6=x[2]&x[1]&~x[0];
assign z=m1|m2|m6;
endmodule