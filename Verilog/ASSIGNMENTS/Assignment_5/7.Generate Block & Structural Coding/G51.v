module reg_array_init;
  reg [7:0] my_reg;
  genvar i;

  generate
    for (i=0; i<8; i=i+1) begin : init_loop
      initial my_reg[i] = 1'b0;
    end
  endgenerate
initial begin
 $display("Bits are initialized: %b",my_reg);
 #100 $finish;
end
endmodule

