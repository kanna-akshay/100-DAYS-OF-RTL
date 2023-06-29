//functional behaviour of full Subtractor

module FA_4bit_tb;

reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;

adder_4bit DUT1(a,b,cin,sum,cout);

initial
  begin 
    $dumpfile("adder_4bit.vcd");
    $dumpvars(0,FA_4bit_tb);
  end;


initial
 begin
    #5 a=4'h0;b=4'h0;cin=1'b0;
    #1 $display("%b %b %b :%b %b ",a,b,cin,sum,cout);  
    repeat(5)
   begin
    #5 a=$random;b=$random;cin=1'b0;
    #1 $display("%b %b %b :%b %b ",a,b,cin,sum,cout);

   end
   #5 a=4'hf;b=4'hf;cin=1'b0;
   #1 $display("%b %b %b :%b %b ",a,b,cin,sum,cout);
  #10 $finish;
 end
endmodule