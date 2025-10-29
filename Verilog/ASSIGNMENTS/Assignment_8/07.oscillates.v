module oscillate(
input A,
input clk,
input rst,
output reg [1:0] out
);
reg [1:0] next_state;

always @(posedge clk or posedge rst)
begin
	if(rst)
		out <= 2'b00;
	else
	        out <= next_state;
end

always @(*) begin
	case (out)
		2'b00:next_state = A ? 2'b10: 2'b01;
		2'b01:next_state = A ? 2'b11: 2'b00;
		2'b10:next_state = A ? 2'b00: 2'b11;
		2'b11:next_state = A ? 2'b01: 2'b10;

		default: next_state= 2'b00;
	endcase
end
endmodule


