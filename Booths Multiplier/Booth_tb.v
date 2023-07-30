//Booth Multiplicaton testbench
module booth_tb;

reg clk,reset,start;
reg signed [3:0]M,Q;
wire signed [7:0]Y;
wire valid;

always #5 clk = ~clk;

Booths_Multiplication  DUT(M,Q,clk,reset,start,Y,valid);


initial
$monitor($time,"M=%d, Q=%d, valid=%d, Y=%d ",M,Q,valid,Y);
initial
begin
M=5;Q=7;clk=1'b1;reset=1'b0;start=1'b0;
#11 reset = 1'b1;
#10 start = 1'b1;
#10 start = 1'b0;
@valid
#10 M=-4;Q=6;start = 1'b1;
#10 start = 1'b0;
@valid
#10 M=-3;Q=-5;start = 1'b1;
#10 start = 1'b0;
@valid
#10 M=2;Q=-8;start = 1'b1;
#10 start = 1'b0;
end      
endmodule