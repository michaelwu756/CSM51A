`timescale 1ns / 1ps
module sim;
reg [2:0]x;
wire z;
initial begin
    for (x=0;x!=7;x=x+1) begin
        #100;
    end
    #100 $finish;
end
myCircut U0(x,z);
endmodule