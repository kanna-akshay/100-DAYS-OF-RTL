module mux2x1_tb;

reg i0;
reg i1;
reg s;
wire y;

integer i;

mux2_1 DUT(.s(s),.i0(i0),.i1(i1),.y(y));

initial
 begin
  $dumpfile("mux2x1.vcd");
  $dumpvars(0,mux2x1_tb);
end
 
initial 

    begin
	    #1 $monitor($time,"%b %b %b :%b",i1,i0,s,y);
		 i0=1'b0;i1=1'b0;s=1'b0;
       for(i=0;i<8;i=i+1) begin
	     if(i%2==1) #4 i0=1'b1;
		 else #4 i0=1'b0;
		 if(i>3) #4 i1=1'b1;
		 else #4 i1=1'b0;
		 #4 s=$random;
        end
		#10 $finish;
    end
endmodule	