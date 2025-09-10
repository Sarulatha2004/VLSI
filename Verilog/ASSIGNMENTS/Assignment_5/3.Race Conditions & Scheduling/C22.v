module race_blocking;
  reg a, b, clk;

  always @(posedge clk) begin
    a = b;   
  end

  always @(posedge clk) begin
    b = a;  
  end

  initial begin
    clk = 0; a = 1; b = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("Time=%0t clk=%b a=%b b=%b",$time,clk,a,b);
    #20 $finish;
  end
endmodule


