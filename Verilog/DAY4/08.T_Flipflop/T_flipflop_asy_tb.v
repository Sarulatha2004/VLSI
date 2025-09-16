module tb_t_ff;
  reg clk, reset, T;
  wire Q;
  t_ff_async_reset u1 (.clk(clk), .reset(reset), .T(T), .Q(Q));

  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("Time=%4t |  clk=%b    reset=%b    T=%b |    Q=%b", 
              $time, clk, reset, T, Q);

    reset=1; T=0; #12;
    reset=0;

    T=0; #20; 

    T=1; #40;  

    reset=1; #7; 
    reset=0; #20;

    T=1; #30;

    $finish;
  end
endmodule

