//csm51a_proj3.v
//Michael Wu ID: 404751542
//Minghong Zhou ID: 004424670
module dff(
   input wire d,
   input wire clk,
   input wire clr,
   output reg q);
always @(posedge clk) begin
    if (!clr)
        q<=d;
end
always @(posedge clr) begin
   q<=0;
end
endmodule

module csm51a_proj3(
    input wire [1:0]x,
    input wire reset,
    input wire clk,
    output reg [1:0] z
);
reg j1;
reg k1;
reg j0;
reg k0;
wire x1;//synchronized inputs
wire x0;
wire s1;
wire s0;
jkff jkff1(
    .j (j1),
    .k (k1),
    .clk (clk),
    .clr (reset),
    .q (s1));
jkff jkff0(
    .j (j0),
    .k (k0),
    .clk (clk),
    .clr (reset),
    .q (s0));
dff dff1(
    .d (x[1]),
    .clk (clk),
    .clr (reset),
    .q (x1));
dff dff0(
    .d (x[0]),
    .clk (clk),
    .clr (reset),
    .q (x0));
    
always @(*) begin
    j1<=x1|(s0&x0);
    k1<=x1|(~s0&x0);
    j0<=~s1&x0;
    k0<=x1|(s1&x0);
    z[1]<=(s1&~s0&x0)|(s1&x1);
    z[0]<=s1&~s0&x1;
end
endmodule