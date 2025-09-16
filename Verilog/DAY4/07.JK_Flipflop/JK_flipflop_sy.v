module jk_ff_sync_reset (
    input  clk,
    input  reset,   
    input  J,
    input  K,
    output reg Q,
    output reg Qb
);

  always @ (posedge clk) begin
    if (reset) begin
      Q  <= 1'b0;   
      Qb <= 1'b1;
    end
    else begin
      case ({J,K})
        2'b00: ;                    
        2'b01: begin Q <= 1'b0; Qb <= 1'b1; end 
        2'b10: begin Q <= 1'b1; Qb <= 1'b0; end 
        2'b11: begin Q <= ~Q; Qb <= ~Qb; end
      endcase
    end
  end
endmodule

