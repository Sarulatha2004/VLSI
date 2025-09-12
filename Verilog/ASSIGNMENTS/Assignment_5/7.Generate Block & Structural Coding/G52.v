module full_adder (
  input a, b, cin,
  output sum, cout
);
  assign {cout, sum} = a + b + cin;
endmodule

module ripple_adder_4 (
  input [3:0] A, B,
  input Cin,
  output [3:0] Sum,
  output Cout
);
  wire [3:0] carry;
  genvar i;

  generate
    for (i=0; i<4; i=i+1) begin 
      if (i==0) begin
        full_adder FA (A[i], B[i], Cin, Sum[i], carry[i]);
      end else begin
        full_adder FA (A[i], B[i], carry[i-1], Sum[i], carry[i]);
      end
    end
  endgenerate

  assign Cout = carry[3];
endmodule

