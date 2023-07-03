// top module 
module memory_8byte(input [7:0] w_data,
                    input clk,
					input rd_bar,
					input wr_bar,
					input [2:0] addr,
					input decoder_en,
					output [7:0] r_data);
					
		wire [7:0]en;
					
	reg_8 mem(w_data,rd_bar, wr_bar,en,clk,r_data);
	decoder3_to_8 dec( addr,en, decoder_en);
	
	
endmodule