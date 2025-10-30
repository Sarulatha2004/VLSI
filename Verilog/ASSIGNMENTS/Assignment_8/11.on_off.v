module on_off(
input clk,
input rst,
input j,k,
output reg out
);

reg state ,next_state;
parameter  OFF=0;
parameter ON=1;

always @(posedge clk or posedge rst)
begin

	if(rst)
		state <= OFF;
	else 
		state <= next_state;
end

always @ (*) begin
	case(state)
		OFF:
		begin
			next_state = j? ON:OFF;
		end

		ON:
		begin
			next_state =  k? OFF:ON;
		end
		default:next_state = OFF;
	endcase
end
always @ (state)
begin
	case(state)
		OFF:out=1'b0;
		ON:out=1'b1;
	endcase
end
endmodule
