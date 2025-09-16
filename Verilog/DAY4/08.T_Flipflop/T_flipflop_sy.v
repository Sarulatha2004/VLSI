module t_ff_sync_reset (
    input  clk,
    input  reset,   
    input  T,
    output reg Q
);

  always @ (posedge clk) begin
    if (reset) begin
      Q <= 1'b0;        
    end
    else begin
      if (T) 
        Q <= ~Q;         
      else 
        Q <= Q;       
    end
  end
endmodule

