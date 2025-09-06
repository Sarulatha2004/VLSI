//Half Adder Module
module half_adder (a,b,sum,carry);
    input a, b;
    output sum,carry;
    xor(sum, a, b);
    and(carry, a, b);
endmodule


// Full Adder Module using 2 Half Adders
module full_adder(a,b,cin,sum,carry);
    input a, b, cin;
    output sum, carry;
    wire s1, c1, c2;

    half_adder ha1 (.a(a),   .b(b),   .sum(s1), .carry(c1));
    half_adder ha2 (.a(s1),  .b(cin), .sum(sum), .carry(c2));
    or(carry, c1, c2);
endmodule

