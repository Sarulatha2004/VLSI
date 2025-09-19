module full_adder(input a, input b, input cin, output sum, output cout);
  assign {cout, sum} = a + b + cin;
endmodule

module tb_compare;
  reg a, b, cin;
  wire sum, cout;
  reg exp_sum, exp_cout;

  full_adder uut (.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

  integer i;
  initial begin
    for(i=0; i<8; i=i+1) begin
      {a,b,cin} = i; #5;
      {exp_cout, exp_sum} = a + b + cin;
      if ((sum !== exp_sum) || (cout !== exp_cout))
        $display("Mismatch at %b: Expected sum=%b cout=%b, Got sum=%b cout=%b", 
                  {a,b,cin}, exp_sum, exp_cout, sum, cout);
      else
        $display("Match at %b: sum=%b cout=%b", {a,b,cin}, sum, cout);
    end
    $finish;
  end
endmodule
