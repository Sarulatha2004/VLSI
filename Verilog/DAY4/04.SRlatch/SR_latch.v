module srlatch (
    input  S,  
    input  R,   
    output reg Q,
    output reg Qb
);

  always @ (S or R or Q or Qb) begin
    case ({S,R})
      2'b01: begin  
        Q  = 1'b1;
        Qb = 1'b0;
      end

      2'b10: begin  
        Q  = 1'b0;
        Qb = 1'b1;
      end

      2'b11: begin   
      end

      2'b00: begin 
        Q  = 1'bx;
        Qb = 1'bx;
      end
    endcase
  end
endmodule

