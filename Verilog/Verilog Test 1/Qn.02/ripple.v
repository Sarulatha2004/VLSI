module full_adder(
input a,b,cin,
output sum,
output cout);

assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule

module ripple_carry(
input [3:0]a,b,
input cin,
output [3:0]sum,
output cout);

wire [3:0]carry;

genvar i;
generate
for(i=0;i<4;i=i+1) begin
if(i==0) begin
 full_adder FA(.a(a[i]), .b(b[i]), .cin(cin), .sum(sum[i]), .cout(carry[i]));
end
else begin
full_adder FA(.a(a[i]), .b(b[i]), .cin(carry[i-1]), .sum(sum[i]), .cout(carry[i]));
end
end
endgenerate
assign cout=carry[3];
endmodule
