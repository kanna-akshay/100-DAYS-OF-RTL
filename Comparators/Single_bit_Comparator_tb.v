module comp_tb;

reg a,b,e;
wire eq,lt,gt;

comp  dut( a,b,e,lt,eq,gt);
initial
  begin 
     $dumpfile("comp.vcd");
     $dumpvars(0,comp_tb);
   end

initial 
 begin
  #5 a=1'b0;b=1'b0;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);
  #5 a=1'b0;b=1'b1;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);
  #5 a=1'b1;b=1'b0;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);
  #5 a=1'b1;b=1'b1;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);

  
  #10 $finish;
 end
endmodule