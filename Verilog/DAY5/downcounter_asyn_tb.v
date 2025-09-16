module tb_async_down_counter;
  reg clk, reset;
  wire [3:0] q;
  async_down_counter uut (.clk(clk), .reset(reset), .q(q));

  always #5 clk = ~clk;

  initial begin
    $dumpfile("async_down_counter.vcd");
    $dumpvars(0, tb_async_down_counter);
    $monitor("Time=%0t | clk=%b | reset=%b | q=%b(%d) ",$time,clk,reset,q,q);
    clk = 0; reset = 1;
    #10 reset = 0;

    #200 $finish;
end
endmodule
