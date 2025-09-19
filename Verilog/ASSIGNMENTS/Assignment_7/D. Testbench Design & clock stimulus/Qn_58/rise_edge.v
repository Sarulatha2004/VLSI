module reg_tb;
  reg clk, d;
  reg q;

  always @(posedge clk) begin
     q<=d;
  end 

  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    d = 0;
    $monitor("t=%0t clk=%b d=%b q=%b", $time, clk, d, q);
    #8 d = 1;
    #10 d = 0;
    #10 d = 1;
    #20 $finish;
  end
endmodule
