module demux_1x4_tb;

wire [3:0]i;
reg [1:0]s;
reg y;
reg e;


demux1x4 DUT(i,s,e,y);

initial
 begin
  $dumpfile("demux1x4.vcd");
  $dumpvars(0,demux_1x4_tb);
end
 
initial 

    begin
	     #1 y=0;s=0;e=1'b1;
	    #1 $monitor($time,"   %b  %b :%b",y,s,i);
        repeat(8)
		begin
		 #4 y=$random;         
		 #4 s=$random;
          end		
		#10 $finish;
    end
endmodule