module RCA_parameter #(parameter N = 26)(
  input [N-1:0]A,B,
  input cin,
  output [N-1:0]sum,
  output carry);
  wire [N:0]cout;
  genvar i;
  assign cout[0] = cin;
  generate
    for (i=0;i<N;i=i+1) begin : FA_loop
      full_adder FA(.a(A[i]),.b(B[i]),.cin(cout[i]),.sum(sum[i]),.carry(cout[i+1]));
    end
  endgenerate
  assign carry = cout[N];
endmodule

module full_adder(
        input a,b,cin,
        output sum,carry);
       assign {carry,sum} = a+b+cin;
endmodule
