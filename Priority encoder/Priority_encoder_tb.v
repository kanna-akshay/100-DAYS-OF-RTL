module pc_tb;

reg [7:0]i;
wire [2:0]y;



priority_encoder DUT(i,y);

initial
 begin
  $dumpfile("pc.vcd");
  $dumpvars(0,pc_tb);
end
 
initial 

    begin
	     #1 i=0;
	    #1 $monitor($time,"  %b : %b",i,y);
        repeat(6)
		begin
		 #4 i=$random;         
		 end		
		#10 $finish;
    end
	
endmodule