// small cell with 8 reg 
module reg_8(input [7:0] w_data,
             input rd_bar,
				input wr_bar,
				input [7:0]en,
				input clk,
				output [7:0] r_data);  
	
	reg_1 byte0(r_data,rd_bar,wr_bar,en[0],clk,w_data); 
    reg_1 byte1(r_data,rd_bar,wr_bar,en[1],clk,w_data); 
    reg_1 byte2(r_data,rd_bar,wr_bar,en[2],clk,w_data); 
    reg_1 byte3(r_data,rd_bar,wr_bar,en[3],clk,w_data); 
    reg_1 byte4(r_data,rd_bar,wr_bar,en[4],clk,w_data); 
    reg_1 byte5(r_data,rd_bar,wr_bar,en[5],clk,w_data); 
    reg_1 byte6(r_data,rd_bar,wr_bar,en[6],clk,w_data); 
    reg_1 byte7(r_data,rd_bar,wr_bar,en[7],clk,w_data); 
	
endmodule