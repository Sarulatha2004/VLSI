module mealy_111(
input clk,rst,
input x,
output reg y
);

parameter S0=0;
parameter S1=1;
parameter S2=2;

reg [1:0]state, next_state;

always @(posedge clk or posedge rst)
begin
   if(rst) state <= S0;
   else state <= next_state;
end

always @(*)
begin
  case(state)
     S0: begin
          next_state = x? S1:S0;
  end

     S1: begin
          next_state = x? S2:S0;
  end
     S2: begin
          next_state = x? S2:S0;
  end
  default: next_state = S0;

  endcase
end
always @(*) begin
  y= ((state == S2) && (x==1))? 1:0;
  end
  endmodule
