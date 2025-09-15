module mux8to1 (
    input  [7:0] d,      
    input  [2:0] sel,     
    output reg    y      
);

integer i;

always @(*) begin
    y = 1'b0;         
    for (i = 0; i < 8; i = i + 1) begin
        if (sel == i)   
            y = d[i];
    end
end

endmodule

