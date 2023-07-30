//Booths Algoritm singed multiplecation
module Booths_Multiplication#(parameter NUMBER_OF_BITS = 4)
                             (input signed[NUMBER_OF_BITS-1:0] M,Q,
							  input clk,reset,start,
							  output reg signed [(2*NUMBER_OF_BITS)-1:0] Y,
							   output reg valid);


reg signed [(2*NUMBER_OF_BITS)-1:0] next_Y,Y_temp;
reg next_state, pres_state;
reg [1:0] temp,next_temp;
reg [1:0] count,next_count;
reg  next_valid;

parameter IDLE = 1'b0;
parameter START = 1'b1;

always @ (posedge clk or negedge reset)
begin
if(!reset)
begin
  Y          <= 8'd0;
  valid      <= 1'b0;
  pres_state <= IDLE;
  temp       <= 2'd0;
  count      <= 2'd0;
end
else
begin
  Y          <= next_Y;
  valid      <= next_valid;
  pres_state <= next_state;
  temp       <= next_temp;
  count      <= next_count;
end
end

always @ (*)
begin 
case(pres_state)
IDLE:
begin
next_count = 2'b0;
next_valid = 1'b0;
if(start)
begin
    next_state = START;
    next_temp  = {Q[0],1'b0};
    next_Y     = {4'd0,Q};
end
else
begin
    next_state = pres_state;
    next_temp  = 2'd0;
    next_Y     = 8'd0;
end
end

START:
begin
    case(temp)
    2'b10:   Y_temp = {Y[7:4]-M,Y[3:0]};
    2'b01:   Y_temp = {Y[7:4]+M,Y[3:0]};
    default: Y_temp = {Y[7:4],Y[3:0]};
    endcase
next_temp  = {Q[count+1],Q[count]};
next_count = count + 1'b1;
next_Y     = Y_temp >>> 1;
next_valid = (&count) ? 1'b1 : 1'b0; 
next_state = (&count) ? IDLE : pres_state;	
end
endcase
end
endmodule 
	