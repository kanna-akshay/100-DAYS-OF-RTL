module T_ff_tb;

reg T,rst,enable,clk;
wire q,qbar;

T_ff  dut( T,rst,clk,enable,q,qbar);

always #5 clk=~clk;

initial
   $monitor($time,"  T=%b  Enable=%b  : q=%b",T,enable,q);
initial 
 begin
       clk=0;rst=1'b0;
   #1   rst=1;
   #3 T=1'b1;enable=1'b1;
   #10 T=1'b0;enable=1'b0;
   
   #10 T=1'b0;enable=1'b1;
   #10 T=1'b1;enable=1'b0;
  
  
  #10 $finish;
 end
endmodule