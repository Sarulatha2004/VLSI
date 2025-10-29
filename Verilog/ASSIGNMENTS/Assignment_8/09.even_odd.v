module even_odd(
input clk,rst,in,
output reg even0,even1,odd0,odd1
);

reg [1:0] state,next_state;

parameter S0=0;
parameter S1=1;
parameter S2=2;
parameter S3=3;

always @(posedge clk or posedge rst)
begin
	if(rst)
		state <= S0;
	else
		state <= next_state;
end

always @(in or state)begin
	case(state)
		S0:next_state = in? S1:S2;
		S1:next_state = in? S0:S3;
		S2:next_state = in? S3:S0;
		S3:next_state = in? S2:S1;
		default:next_state = S0;
	endcase
end

always @ (state) begin
	case(state)
		S0:begin
			even0=1;even1=1;odd0=0;odd1=0;
		end
		 S1:begin
                        even0=1;even1=0;odd0=0;odd1=1;
                end
		 S2:begin
                        even0=0;even1=1;odd0=1;odd1=0;
                end
		 S3:begin
                        even0=0;even1=0;odd0=1;odd1=1;
                end

		default:begin
			even0=1;even1=1;odd0=0;odd1=0;
		end
	endcase
end
endmodule

