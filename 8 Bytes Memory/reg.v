module reg_1 (input [7:0] w_data,
                input rd_bar,
				input wr_bar,
				input en,
				input clk,
				output [7:0] r_data);
				     
 reg_cell bit0(r_data[0],rd_bar,wr_bar,en,clk,w_data[0]); 
 reg_cell bit1(r_data[1],rd_bar,wr_bar,en,clk,w_data[1]); 
 reg_cell bit2(r_data[2],rd_bar,wr_bar,en,clk,w_data[2]); 
 reg_cell bit3(r_data[3],rd_bar,wr_bar,en,clk,w_data[3]); 
 reg_cell bit4(r_data[4],rd_bar,wr_bar,en,clk,w_data[4]); 
 reg_cell bit5(r_data[5],rd_bar,wr_bar,en,clk,w_data[5]); 
 reg_cell bit6(r_data[6],rd_bar,wr_bar,en,clk,w_data[6]); 
 reg_cell bit7(r_data[7],rd_bar,wr_bar,en,clk,w_data[7]); 


endmodule		