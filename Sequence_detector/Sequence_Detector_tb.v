module sequential_detector_tb();

reg Seq_in,clk,reset;
wire Seq_out;
integer i=0;
//reg [15:0] seq;

Seq_det DUT(Seq_in,clk,reset,Seq_out);

always #5 clk = ~clk;
 
task sg(input [15:0]seq); 
     begin
	  for(i=0;i<16;i=i+1) begin
	 @(posedge clk)   Seq_in=seq[i];
	end
end

endtask

initial
 begin
  clk=1'b0;reset=1'b1;
 
 sg(16'h6664);
//seq=16'h56a1;
#170 $finish;

end

endmodule
