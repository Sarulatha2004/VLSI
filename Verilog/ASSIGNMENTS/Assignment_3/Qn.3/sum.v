module sum_var(a,b,sum);
    input a,b;
    output [1:0] sum;
    assign #5 sum = a + b;
endmodule

