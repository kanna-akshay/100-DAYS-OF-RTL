//functional behaviour of full Subtractor

module FS_4bit_tb;

reg [3:0]a,b;
reg Bout;
wire [3:0]diff;
wire Bin;

substractor_4bit DUT(a,b,Bout,diff,Bin);

initial
  begin 
    $dumpfile("substractor_4bit.vcd");
    $dumpvars(0,FS_4bit_tb);
  end;


initial
 begin
    #5 a=4'h0;b=4'h0;Bout=1'b0;
    #1 $display("%b %b %b :%b %b ",a,b,Bout,diff,Bin);  
    repeat(5)
   begin
    #5 a=$random;b=$random;Bout=1'b0;
    #1 $display("%b %b %b :%b %b ",a,b,Bout,diff,Bin);

   end
   #5 a=4'hf;b=4'hf;Bout=1'b0;
   #1 $display("%b %b %b :%b %b ",a,b,Bout,diff,Bin);
  #10 $finish;
 end
endmodule