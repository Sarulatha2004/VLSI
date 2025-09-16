module tb_jk_ff;
  reg clk, reset, J, K;
  wire Q, Qb;

  jk_ff_sync_reset u1 (.clk(clk), .reset(reset), .J(J), .K(K), .Q(Q), .Qb(Qb));
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("Time=%4t |  clk=%b    reset=%b    J=%b  K=%b |    Q=%b       Qb=%b",
              $time, clk, reset, J, K, Q, Qb);


    reset=1; J=0; K=0; #12;
    reset=0;


    J=1; K=0; #20;
    J=0; K=1; #20;
    J=0; K=0; #20;
    J=1; K=1; #20;
    J=1; K=1; #20;

    reset=1; #7;
    reset=0; #20;

    $finish;
  end
endmodule
