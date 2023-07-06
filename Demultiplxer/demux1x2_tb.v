module demux_1x2_tb;

wire i0;
wire i1;
reg s;
reg y;
reg e;



demux1_2 DUT(.s(s),.i0(i0),.i1(i1),.y(y),.e(e));

initial
 begin
  $dumpfile("demux.vcd");
  $dumpvars(0,demux_1x2_tb);
end
 
initial 

    begin
	    #1 e=1;
	    #1 $monitor($time,"%b %b %b:%b %b",y,s,e,i0,i1);
		repeat(8) begin
		 #4 y=$random;
		 #4 s=$random;
        end
		#10 $finish;
    end
endmodule	