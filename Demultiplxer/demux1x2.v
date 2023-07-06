module demux1_2(input s,y,e,output i0,i1);

wire sbar;

assign sbar=~s;

//dataflow model

assign i0=y&sbar&e;
assign i1=y&s&e;

endmodule