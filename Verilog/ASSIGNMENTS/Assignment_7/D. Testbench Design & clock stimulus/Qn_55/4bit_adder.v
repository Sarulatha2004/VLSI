module adder4(input [3:0] a, input [3:0] b, output [4:0] sum);
  assign sum = a + b;
endmodule

module tb_adder4;
  reg [3:0] a, b;
  wire [4:0] sum;

  adder4 uut (.a(a), .b(b), .sum(sum));

  task apply_inputs(input [3:0] x, input [3:0] y);
    begin
      a = x; b = y; #10;
      $display("a=%b b=%b sum=%b", a, b, sum);
    end
  endtask

  initial begin
    apply_inputs(4'b0001, 4'b0010);
    apply_inputs(4'b0101, 4'b0110);
    apply_inputs(4'b1111, 4'b1111);
    $finish;
  end
endmodule
