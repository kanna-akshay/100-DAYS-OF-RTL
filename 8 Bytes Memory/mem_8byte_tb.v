// test bench for mem_8byte
module tb_mem_8byte();

reg [7:0] w_data;
reg rd_bar,wr_bar,clk,decoder_en;
reg [2:0] addr;
wire [7:0] r_data;

memory_8byte DUT(w_data,clk,rd_bar,wr_bar,addr,decoder_en,r_data);

always  #5 clk =~clk;

initial
   begin
     $monitor($time," %b %b %b %b %b : %b",addr,w_data,rd_bar,wr_bar,decoder_en,r_data);
	 
	end
	
	
initial
  begin
 
    addr=3'b111;w_data=8'haa;wr_bar=0;rd_bar=1;decoder_en=1;clk=0;
 #14 addr=3'b101;w_data=8'h1a;wr_bar=0;rd_bar=1;decoder_en=1;
 #14 addr=3'b111;w_data=8'haa;wr_bar=1;rd_bar=0;decoder_en=1;
 #14 addr=3'b111;w_data=8'ha3;wr_bar=0;rd_bar=0;decoder_en=1;
 #14 addr=3'b100;w_data=8'h11;wr_bar=0;rd_bar=1;decoder_en=1;
 #14 addr=3'b100;wr_bar=1;rd_bar=0;decoder_en=1;
 #14 addr=3'b110;w_data=8'h33;wr_bar=0;rd_bar=1;decoder_en=1;
 #14 addr=3'b110;wr_bar=1;rd_bar=0;decoder_en=1;
 #14 addr=3'b100;wr_bar=1;rd_bar=0;decoder_en=1;
 	
   
   
   end
   
endmodule