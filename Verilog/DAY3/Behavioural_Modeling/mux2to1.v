module mux2to1(a,b,sel,y);
    input wire a, b, sel;
    output reg y;
    always @(*) begin
        if (sel)
            y <= b;
        else
            y <= a;
    end
endmodule

