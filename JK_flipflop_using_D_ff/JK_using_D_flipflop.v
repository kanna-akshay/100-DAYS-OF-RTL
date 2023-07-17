// JK flipflop using D flipflop
module JK_using_D(input J,K,rst,clk,
          output  q,
		  output qbar);
	
    wire D,t1,t2;

     assign t1=J&qbar;
     assign t2=(~K)&q;
     assign D=t1|t2;	 
	D_ff D_ff(D,rst,clk,1'b1,q,qbar);
	
endmodule