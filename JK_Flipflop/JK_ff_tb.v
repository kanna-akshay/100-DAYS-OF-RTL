module JK_ff_tb;

reg J,K,rst,clk;
wire q,qbar;

JK  dut( J,K,rst,clk,q,qbar);

always #5 clk=~clk;

initial
  #2 $monitor($time,"  J=%b K=%b: q=%b",J,K,q);
initial 
 begin
       clk=0;rst=1'b1;
   #1   rst=1;
   #3 J=1'b0;K=1'b1;
   #10 J=1'b0;K=1'b0;
   #10 rst=1'b0;
   #5 rst =1'b1;
   #5 J=1'b1;K=1'b0;
   #10 J=1'b1;K=1'b1;
  
  #10 $finish;
 end
endmodule