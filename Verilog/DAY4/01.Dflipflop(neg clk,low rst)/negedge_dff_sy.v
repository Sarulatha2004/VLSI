module dff_sync_reset(clk,reset,d,q);
    input clk;
    input reset;
    input d;
    output reg q;
    always @(negedge clk) begin
	if (reset==0)
            q <= 1'b0;
        else
            q <= d;
end
endmodule
