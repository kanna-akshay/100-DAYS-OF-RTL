module btg_tb;

reg [3:0]b;
wire [3:0]g;



btg DUT(b,g);

initial
 begin
  $dumpfile("btg.vcd");
  $dumpvars(0,btg_tb);
end
 
initial 

    begin
	     #1 b=0;
	    #1 $monitor($time,"  %b : %b",b,g);
        repeat(6)
		begin
		 #4 b=$random;         
		 end		
		#10 $finish;
    end
	
endmodule