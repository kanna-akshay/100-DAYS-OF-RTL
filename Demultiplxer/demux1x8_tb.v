module demux_1x8_tb;

wire [7:0]i;
reg [2:0]s;
reg y;
reg e;


demux1x8 DUT(i,s,e,y);

initial
 begin
  $dumpfile("demux1x8.vcd");
  $dumpvars(0,demux_1x8_tb);
end
 
initial 

    begin
	     #1 y=0;s=0;e=1'b1;
	    #1 $monitor($time,"   %b  %b :%b",y,s,i);
        repeat(10)
		begin
		 #4 y=$random;         
		 #4 s=$random;
          end		
		#10 $finish;
    end
endmodule