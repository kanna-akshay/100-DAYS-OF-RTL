//test benches for  2-input gates

module tb_dataflow();

reg A,B;
wire Y_and,Y_nand,Y_nor,Y_or,Y_xnor,Y_xor;

logic_gate_Dataflow DUT(A,B,Y_and,Y_nand,Y_nor,Y_or,Y_xnor,Y_xor);


initial
  begin
      $display(" A B :Y_and Y_nand Y_nor Y_or Y_xnor Y_xor");
   #5 A=1'b0;B=1'b0;
   #1 $display("%b %b :       %b      %b          %b        %b        %b       %b",A,B,Y_and,Y_nand,Y_nor,Y_or,Y_xnor,Y_xor);
   #5 A=1'b0;B=1'b1;
   #1 $display("%b %b :       %b      %b          %b        %b        %b       %b",A,B,Y_and,Y_nand,Y_nor,Y_or,Y_xnor,Y_xor);
   #5 A=1'b1 ;B=1'b0;  
   #1 $display("%b %b :       %b      %b          %b        %b        %b       %b",A,B,Y_and,Y_nand,Y_nor,Y_or,Y_xnor,Y_xor);
   #5 A=1'b1 ;B=1'b1; 
   #1 $display("%b %b :       %b      %b          %b        %b        %b       %b",A,B,Y_and,Y_nand,Y_nor,Y_or,Y_xnor,Y_xor);
 
   #10 $finish;
    end
endmodule