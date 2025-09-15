module rtl_logic(
  input x1, x2, x3, clock,
  output reg  g, f);

  always @(posedge clock) begin
    g <= x3 | (x1 & x2);   
    f <= (x1 & x2);       
  end

endmodule
