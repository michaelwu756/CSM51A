//jkff.v
//Michael Wu ID: 404751542
//Minghong Zhou ID: 004424670
module jkff(
    input wire j,
    input wire k,
    input wire clk,
    input wire clr,
    output reg q);
always @(posedge clk) begin
    if (!clr)
        q<=(j&~q)|(~k&q);
end
always @(posedge clr) begin
    q<=0;
end
endmodule