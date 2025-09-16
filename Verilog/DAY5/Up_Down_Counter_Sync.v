module up_down_counter_sync(clk,reset,M,Q);
input clk,reset,M;
output reg [3:0]Q;
always @ (posedge clk or posedge reset) begin
if(reset)
 Q<=4'b000;
else if(M)
	Q<=Q+1;
else 
	Q<=Q-1;
end 
endmodule
