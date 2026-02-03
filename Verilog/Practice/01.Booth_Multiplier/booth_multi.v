module booth_multi(
	input signed [3:0]A,
	input signed [3:0]B,
	input clk,
	input start,
	output reg signed[7:0]res,
	output reg done
);
reg signed[3:0]acc;
reg signed[3:0]multiplier;
reg q;
reg signed [3:0]multiplicant;
reg [3:0] cnt;

reg signed [3:0]acc_next;
always @(posedge clk) begin
	if(start)
	begin

		acc <=4'd0;
		multiplier <=A;
		q<=1'b0;
		multiplicant<=B;
		cnt<=4'd4;
		done<=1'b0;
	end
	else if(cnt>0) begin
		acc_next=acc;
		if((multiplier[0]==1) && (q==0))
			acc_next = acc-multiplicant;
		else if((multiplier[0]==0)&& (q==1))
			acc_next = acc+multiplicant;

		{acc,multiplier,q} <={acc_next[3],acc_next,multiplier};
		cnt<=cnt-1;
	end
	else begin

		res<={acc,multiplier};
		done <=1'b1;
	end
end
endmodule


