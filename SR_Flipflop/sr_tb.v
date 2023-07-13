module sr_tb;

reg s,r,rst,clk;
wire q,qbar;

sr  dut( s,r,rst,clk,q,qbar);

always #5 clk=~clk;

initial
  begin 
     $dumpfile("sr.vcd");
     $dumpvars(0,sr_tb);
   end;

initial 
 begin
    clk=0;rst=1'b0;
  #14 s=1'b0;r=1'b0;rst=1;
  #1 $display( $time ,"%b %b  %b :%b %b ",s,r,rst,q,qbar);
  #9 s=1'b0;r=1'b1;rst=1;
  #1 $display($time ,"%b %b  %b :%b %b ",s,r,rst,q,qbar);
  #9 s=1'b1;r=1'b0;rst=1;
  #1 $display($time ,"%b %b  %b :%b %b ",s,r,rst,q,qbar);
  #9 s=1'b1;r=1'b1;rst=1;
  #1 $display($time ,"%b %b  %b :%b %b ",s,r,rst,q,qbar);

  
  #10 $finish;
 end;
endmodule