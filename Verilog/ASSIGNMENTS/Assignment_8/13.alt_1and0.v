module alt1_0(
input clk,rst,in,
output out
);

reg [2:0]state,next_state;

parameter S0=0;
parameter S1=1;
parameter S2=2;
parameter S3=3;
parameter S4=4;
parameter S5=5;
parameter S6=6;


always @(posedge clk or posedge rst)
begin
	if(rst)
		state <= S0;
	else
		state <= next_state;
end

always @(state or in)
begin
	case(state)
		S0: next_state = in ? S2:S1;
		S1: next_state = in ? S3:S1;
		S2: next_state = in ? S2:S4;
		S3: next_state = in ? S2:S5;
		S4: next_state = in ? S6:S1;
		S5: next_state = in ? S3:S1;
		S6: next_state = in ? S2:S4;
		default: next_state = S0;
	endcase
end


assign out= (state == S5) || (state== S6);
endmodule
