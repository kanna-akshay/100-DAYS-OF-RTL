module pc_tb;

wire parity;
wire [8:0]Dout;
reg [7:0]Din;

parc dut(Din,parity,Dout);

initial
   begin 
    $dumpfile("parc.vcd");
	$dumpvars(0,pc_tb);
	end

initial 
  begin
  
   repeat(5)
      begin
    #4 Din=$random;
	#1 $display("%b : %b :%b",Din,parity,Dout);
	 end
	#10 $finish;
	end
	
endmodule
