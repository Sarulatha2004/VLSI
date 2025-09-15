module sr_ff_sync_reset (
    input  clk,
    input  reset,  
    input  S,
    input  R,
    output reg Q,
    output reg Qb
);

  always @ (posedge clk) begin
    if (reset) begin
      Q  <= 1'b0; 
      Qb <= 1'b1;
    end
    else begin
      case ({S,R})
        2'b00: ;             
        2'b01: begin Q <= 1'b0; Qb <= 1'b1; end 
        2'b10: begin Q <= 1'b1; Qb <= 1'b0; end 
        2'b11: begin Q <= 1'bx; Qb <= 1'bx; end 
      endcase
    end
  end
endmodule

