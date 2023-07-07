module mux2_1(input s,i0,i1,output y);

wire sbar;

assign sbar=~s;

//dataflow model

assign y=(i1&sbar)|(i0&s);

endmodule