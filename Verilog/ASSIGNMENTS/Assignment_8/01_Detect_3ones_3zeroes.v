module det_ones_zeroes(
    input clk,
    input reset,
    input x,
    output reg y
);

reg [2:0] state, next_state;

parameter s0 = 3'b000; 
parameter s1 = 3'b001; 
parameter s2 = 3'b010; 
parameter s3 = 3'b011; 
parameter s4 = 3'b100; 

always @(posedge clk or posedge reset) begin
    if (reset)
        state <= s0;
    else
        state <= next_state;
end
always @(*) begin
    case(state)
        s0: next_state = (x==1) ? s1 : s2;
        s1: next_state = (x==1) ? s3 : s2; 
        s2: next_state = (x==1) ? s1 : s4; 
        s3: next_state = (x==1) ? s3 : s2; 
        s4: next_state = (x==1) ? s1 : s4; 
        default: next_state = s0;
    endcase
end


always @(*) begin
    case(state)
        s3: y = 1;   
        s4: y = 1;   
        default: y = 0;
    endcase
end

endmodule

