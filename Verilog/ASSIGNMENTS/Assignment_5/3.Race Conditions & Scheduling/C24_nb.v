module two_ff_nonblocking;
  reg clk;
  reg q1, q2;

  always @(posedge clk) begin
    q1 <= q2;
    q2 <= q1;
  end

  initial begin
    clk = 0;
    q1 = 0; q2 = 1;
    $display("Time | clk | q1 q2");
    $monitor("%4t |  %b  |  %b  %b", $time, clk, q1, q2);

    repeat(4) begin
      #5 clk = ~clk;
    end
    #5 $finish;
  end
endmodule

