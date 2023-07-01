module two_bit_comp_tb;

reg [1:0]a,b;
reg e;
wire eq,lt,gt;

comp_2bit  dut(a,b,e,lt,eq,gt);
initial
  begin 
     $dumpfile("comp2.vcd");
     $dumpvars(0,two_bit_comp_tb);
   end

initial 
 begin
  #5 a=$random;b=$random;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);
  #5 a=$random;b=$random;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);
  #5 a=$random;b=$random;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);
  #5 a=$random;b=$random;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);
  #5 a=$random;b=$random;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);
  #5 a=$random;b=$random;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);
  #5 a=$random;b=$random;e=1;
  #1 $display("%b %b  %b :%b %b %b",a,b,e,lt,eq,gt);

  
  #10 $finish;
 end
endmodule