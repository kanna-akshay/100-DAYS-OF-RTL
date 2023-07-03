// test bench for reg_cell
module tb_reg_cell();

reg i,rd_bar,wr_bar,en,clk;
wire o;


reg_cell DUT(i,rd_bar,wr_bar,en,clk,o);

always  #5 clk =~clk;

initial
   begin
     $monitor($time," %b %b %b %b : %b",i,rd_bar,wr_bar,en,o);
	 
	end
	
	
initial
  begin
 
    i=0;rd_bar=1;wr_bar=0;en=1;clk=0;
	
   #14 i=1;rd_bar=0;wr_bar=0;en=1;
   #14 i=1;rd_bar=1;wr_bar=0;en=1;
   #14 i=0;rd_bar=1;wr_bar=1;en=1;
   #14 i=1;rd_bar=0;wr_bar=1;en=1;
   #14 i=0;rd_bar=0;wr_bar=0;en=1;
   
   end
   
endmodule
   
   
     