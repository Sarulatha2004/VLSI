module more_one(
input clk,
input rst,
input in,
output reg out
);

reg [2:0]state, next_state;
parameter S000=0, S001=1, S010=2, S011=3, S100=4, S101=5, S110=6, S111=7;

always@(posedge clk or posedge rst)
begin
	if(rst)
		state <= S000;
	else
		state <= next_state;
end
 

always @ (in or state)
begin
	case(state)
		S000:begin
			if(in)begin
				next_state = S001;
			end
			else begin
				next_state = S000;
			end
			out = 0;
		end

		S001:begin
			if(in)begin
                                next_state = S011;
			end
			else begin
                                next_state = S010;
			end
                        out = 0;
                end

		S010:begin
			if(in) begin
                                next_state = S101;
			end
			else begin
                                next_state = S100;
			end
                        out = 0;
                end

		S011:begin
                        if(in)begin
                                next_state = S111;
			end
			else begin
                                next_state = S110;
			end
                        out = 1;
                end

		S100:begin
			if(in) begin
                                next_state = S001;
			end
			else begin
                                next_state = S000;
			end
                        out = 0;
                end

		S101:begin
			if(in) begin
                                next_state = S011;
			end
			else begin
                                next_state = S010;
			end
                        out = 1;
                end

		S110:begin
			if(in)begin
                                next_state = S101;
		           end
			   else begin
                                next_state = S100;
			end
                        out = 1;
                end

		S111:begin
			if(in) begin
                                next_state = S111;
			end
			else begin
                                next_state = S110;
			end
                        out = 1;
                end

		default: next_state = S000;
	endcase
end
endmodule
