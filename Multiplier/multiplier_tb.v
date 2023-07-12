module tb_multiplier();

reg [3:0] a;
reg [3:0] b;


wire [7:0]y;

carry_save_multiplier DUT(a,b,y);

task stimulus(input [3:0] d1,d2);
  begin
    a=d1;
	b=d2;
  end
endtask


initial
  $monitor($time,"a = %d b = %d :y = %d ",a,b,y);

initial
   begin

     stimulus(4'h0,4'h0);
 #10 stimulus(4'ha,4'h3);
 #10 stimulus(4'h5,4'h7);
 #10 stimulus(4'h3,4'h9);
 #10 stimulus(4'ha,4'h3);
 #10 stimulus(4'hf,4'hf);
 
 #30 $finish;
 end
 
 endmodule