module mux4x1_tb;

reg [3:0]i;
reg [1:0]s;
wire y;



mux4x1 DUT(i,s,y);

initial
 begin
  $dumpfile("mux4x1.vcd");
  $dumpvars(0,mux4x1_tb);
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