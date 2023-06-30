`timescale 1ns/1ps

module tb_alu;
//inputs
  reg [31:0]a,y;
  reg [3:0]alu_sel;
//output
  wire [31:0]alu_out;
  wire carryout;
  integer i;
  
  alu1 DUT(.a(a),
          .y(y),
          .alu_sel(alu_sel),
          .alu_out(alu_out),
          .carryout(carryout));
          
   initial
        begin
          $dumpfile("alu.vcd");
          $dumpvars(0,tb_alu);
         end
                   
      initial begin
      
      a=32;
      y=2;
      alu_sel=4'h0;
      #10
      
      for(i=0;i<=15;i=i+1)
        begin
          alu_sel=alu_sel +8'h01;
          #10;
        end
        
        a=24;
        y=21;
       
       #10 $finish;
      end
 
endmodule
        
  
  
