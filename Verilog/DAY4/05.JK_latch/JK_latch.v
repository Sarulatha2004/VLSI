module jk_latch (
    input  J,
    input  K,
    input  En, 
    output reg Q,
    output reg Qb
);

  always @ (J or K or En) begin
    if (En) begin
      case ({J,K})
        2'b00: begin
        end
        2'b01: begin  
          Q  = 1'b0;
          Qb = 1'b1;
        end
        2'b10: begin  
          Q  = 1'b1;
          Qb = 1'b0;
        end
        2'b11: begin
          Q  = ~Q;
          Qb = ~Qb;
        end
      endcase
    end
  end
endmodule

