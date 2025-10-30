module mul1_by4(
input clk,rst,in,
output reg out
);

reg [1:0]state, next_state;

parameter S0=0,
	  S1=1,
	  S2=2,
	  S3=3;
always @(posedge clk or posedge rst)
begin
	if(rst)
		state <= S0;
	else
		state <= next_state;
end

always @ (state or in)
begin
	case(state)
		S0:next_state = in ? S1:S0;
		S1:next_state = in ? S2:S1;
		S2:next_state = in ? S3:S2;
		S3:next_state = in ? S0:S3;
		default:next_state =S0;
	endcase
end

always @(state)
begin
	if(state == S0 && rst==0)
		out=1;
	else
		out=0;
end
endmodule
