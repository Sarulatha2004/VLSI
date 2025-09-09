module pri_encode(d,y,v);
    input  [3:0] d;  
    output reg [1:0] y;
    output reg v ;
    always @(*) begin
        casez (d)
            4'b1???: begin y = 2'b11; v = 1; end 
            4'b01??: begin y = 2'b10; v = 1; end 
            4'b001?: begin y = 2'b01; v = 1; end 
            4'b0001: begin y = 2'b00; v = 1; end 
            default: begin y = 2'bxx; v = 0; end 
        endcase
    end
endmodule

