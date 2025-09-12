module gray_to_binary #(parameter N=4) (
  input  [N-1:0] gray,
  output [N-1:0] bin
);
  genvar i;

  assign bin[N-1] = gray[N-1];

  generate
    for (i=N-2; i>=0; i=i-1) 
    begin 
      assign bin[i] = bin[i+1] ^ gray[i];
    end
  endgenerate
endmodule

