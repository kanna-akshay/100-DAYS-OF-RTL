module d_ff_tb;

reg D,rst,enable,clk;
wire q,qbar;

D_ff  dut( D,rst,clk,enable,q,qbar);

always #5 clk=~clk;

initial
   $monitor($time,"  D=%b  Enable=%b  : q=%b",D,enable,q);
initial 
 begin
       clk=0;rst=1'b0;
   #1   rst=1;
   #3 D=1'b1;enable=1'b1;
   #10 D=1'b0;enable=1'b0;
   
   #10 D=1'b0;enable=1'b1;
   #10 D=1'b1;enable=1'b0;
  
  
  #10 $finish;
 end
endmodule