module bus_mux #(parameter N=8) (
  input  [N-1:0] A, B,
  input sel,
  output [N-1:0] Y
);
  genvar i;

  generate
    for (i=0; i<N; i=i+1) 
    begin 
      assign Y[i] = sel ? B[i] : A[i];
    end
  endgenerate
endmodule

