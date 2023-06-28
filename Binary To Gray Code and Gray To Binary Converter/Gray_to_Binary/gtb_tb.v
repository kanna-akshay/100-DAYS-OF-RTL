module gtb_tb;

reg [3:0]g;
wire [3:0]b;



gtb DUT(g,b);

initial
 begin
  $dumpfile("gtb.vcd");
  $dumpvars(0,gtb_tb);
end
 
initial 

    begin
	     #1 g=0;
	    #1 $monitor($time,"  %b : %b",b,g);
        repeat(6)
		begin
		 #4 g=$random;         
		 end		
		#10 $finish;
    end
	
endmodule