module mux4_casex (input [1:0] sel, input [3:0] d, output reg y);
  always @(*) begin
    casex (sel)
      2'b0x: y = d[0]; 
      2'b1x: y = d[2];   
      default: y = 1'b0;
    endcase
  end
endmodule

