module mux8x1_tb;

reg [7:0]i;
reg [2:0]s;
wire y;



mux8x1 DUT(i,s,y);

initial
 begin
  $dumpfile("mux8x1.vcd");
  $dumpvars(0,mux8x1_tb);
end
 
initial 

    begin
	     #1 i=0;s=0;
	    #1 $monitor($time,"   %b  %b :%b",i,s,y);
        repeat(6)
		begin
		 #4 i=$random;         
		 #4 s=$random;
          end		
		#10 $finish;
    end
endmodule