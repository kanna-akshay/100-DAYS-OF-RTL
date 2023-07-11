module tb_csa();

reg [3:0] a;
reg [3:0] b;
reg [3:0] c;
reg [3:0] d;

wire [4:0]sum;
wire cout;

carry_save_adder csa1(a,b,c,d,sum,cout);

task stimulus(input [3:0] d1,d2,d3,d4);
  begin
    a=d1;
	b=d2;
	c=d3;
	d=d4;
  end
endtask


initial
  $monitor($time,"a = %b b = %b c = %b d= %b :sum = %b cout = %b",a,b,c,d,sum,cout);

initial
   begin

     stimulus(4'h0,4'h0,4'h0,4'h0);
 #10 stimulus(4'ha,4'h3,4'h5,4'h4);
 #10 stimulus(4'h5,4'h7,4'h6,4'h3);
 #10 stimulus(4'h3,4'h9,4'ha,4'h2);
 #10 stimulus(4'ha,4'h3,4'hf,4'h8);
 #10 stimulus(4'hf,4'hf,4'hf,4'hf);
 
 #30 $finish;
 end
 
 endmodule