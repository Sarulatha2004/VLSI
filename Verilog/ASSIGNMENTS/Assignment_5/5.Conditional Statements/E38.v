module mux4_if(input [3:0] d, input [1:0] sel, output reg y);
  always @(*) begin
    if (sel[1] == 0) begin
      if (sel[0] == 0)
        y = d[0];   
      else
        y = d[1];   
    end
    else begin
      if (sel[0] == 0)
        y = d[2];   
      else
        y = d[3];   
    end
  end
endmodule


