module tb_sr_ff;
  reg clk, reset, S, R;
  wire Q, Qb;

  sr_ff_sync_reset u1 (.clk(clk), .reset(reset), .S(S), .R(R), .Q(Q), .Qb(Qb));

  initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end

  initial begin
    $monitor("Time=%4t |  clk=%b    reset=%b    S=%b  R=%b |   Q= %b|  Qb=%b",
              $time, clk, reset, S, R, Q, Qb);

    reset=1; S=0; R=0; #12; 
    reset=0;

    S=1; R=0; #20; 
    S=0; R=1; #20; 
    S=0; R=0; #20; 
    S=1; R=1; #20;
    reset=1; #7;    
    reset=0; #20;   

    $finish;
  end
endmodule

