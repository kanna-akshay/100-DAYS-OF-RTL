module barrel_shifter_tb();

reg [7:0]a;
reg [2:0]amt;
wire [7:0]y;

barrel_shifter DUT(a,amt,y);

initial
  begin 
     $dumpfile("bs.vcd");
	 $dumpvars(0,barrel_shifter_tb);
  end

initial
  begin
    #10 a=8'h12;amt=3'b011;
    #10 $display("a=%b amt=%b y=%b",a,amt,y);
    #10 a=8'h12;amt=3'b010;
    #10 $display("a=%b amt=%b y=%b",a,amt,y);
    #10 a=8'h12;amt=3'b111;
    #10 $display("a=%b amt=%b y=%b",a,amt,y);    
    #10 a=8'h12;amt=3'b001;    
    #10 $display("a=%b amt=%b y=%b",a,amt,y); 
    #10 a=8'hFD;amt=3'b101;    
    #10 $display("a=%b amt=%b y=%b",a,amt,y); 
    #10 a=8'h13;amt=3'b011;    
    #10 $display("a=%b amt=%b y=%b",a,amt,y); 
    #10 a=8'h1F;amt=3'b011;    
    #10 $display("a=%b amt=%b y=%b",a,amt,y); 
    #100 $finish;
   end      
endmodule