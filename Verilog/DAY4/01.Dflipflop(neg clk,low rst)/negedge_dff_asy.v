module dff_async_reset(clk,reset,d,q);
    input clk;
    input reset;
    input d;
    output reg q;
    always @(negedge clk or negedge reset) begin
        if (reset==0)
            q <= 1'b0;
        else
            q <= d;
end
endmodule
