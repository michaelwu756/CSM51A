`timescale 1ns / 1ps
module csm51a_proj2_tb;
    reg [3:0]x;
    wire a;
    wire b;
    wire c;
    wire d;
    wire e;
    wire f;
    wire g;
    initial begin
        for (x=0;x!=9;x=x+1) begin
            #50;
        end
        #50 $finish;
    end
    csm51a_proj2 U0(x,a,b,c,d,e,f,g);
endmodule
