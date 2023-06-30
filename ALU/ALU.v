module alu1#(parameter wordsize=32,
            parameter sel_line_size=4)(
           input [wordsize-1:0]a,y,
           input [sel_line_size-1:0]alu_sel,
           output [wordsize-1:0]alu_out,
           output carryout);
           
      reg [wordsize-1:0]alu_result;
      wire [wordsize:0]tem;
      
      assign alu_out=alu_result;
      assign tem= a+y;
      assign carryout= tem[wordsize];
      always @(*)
      begin
       case(alu_sel)
          4'b0000:// addition
            alu_result=a+y;
          4'b0001:// substraction
            alu_result=a-y;
          4'b0010:// multiplication
            alu_result=a*y;
          4'b0011:// division
            alu_result=a/y;
          4'b0100:// logical shift left
            alu_result=a<<1;
          4'b0101:// logical shift right
            alu_result=a>>1;
          4'b0110:// rotate left
            alu_result={a[6:0],a[7]};
          4'b0111:// rotate right
            alu_result={a[0],a[7:1]};
          4'b1000:// logical and
            alu_result= a & y;
          4'b1001:// logical or
            alu_result= a | y;
          4'b1010://logical nor
            alu_result= ~(a|y);
          4'b1011:// logical nand
            alu_result= ~(a&y);
          4'b1100://logical xor;
            alu_result = a ^ y;
          4'b1101://logical xnor
            alu_result =~(a^y);
          4'b1110:// greater or lesser comparision
            alu_result = (a>y)?1:0;
          4'b1111:// equal comparision
            alu_result= (a==y)?1:0;
           default: alu_result =a+y;
          endcase
       end
 
 
  endmodule

