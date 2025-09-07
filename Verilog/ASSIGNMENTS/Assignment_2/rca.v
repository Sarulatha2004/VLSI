// Half Adder
module half_adder (a, b,sum,carry);
    input a,b;
    output sum,carry;
    xor (sum, a, b);   
    and (carry, a, b); 
endmodule

module full_adder (a, b, cin,sum, cout);
    input a,b,cin;
    output sum,cout;
    wire s1, c1, c2;
    half_adder ha1 (.a(a), .b(b), .sum(s1), .carry(c1));
    half_adder ha2 (.a(s1), .b(cin), .sum(sum), .carry(c2));
    or (cout, c1, c2);
endmodule


module ripple_carry_adder_4bit (a,b,cin,sum,cout);
    input  [3:0] a, b;
    input  cin;
    output [3:0] sum;
    output cout;
    wire c1, c2, c3;
    full_adder fa0 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(c1));
    full_adder fa1 (.a(a[1]), .b(b[1]), .cin(c1),  .sum(sum[1]), .cout(c2));
    full_adder fa2 (.a(a[2]), .b(b[2]), .cin(c2),  .sum(sum[2]), .cout(c3));
    full_adder fa3 (.a(a[3]), .b(b[3]), .cin(c3),  .sum(sum[3]), .cout(cout));
endmodule

