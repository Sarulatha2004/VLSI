module tb_race_blocking;
  reg clk;
  reg a,b;
  always @(posedge clk) a = b;
  always @(posedge clk) b = a;

  initial begin
    clk = 0; a = 0; b = 1; 
    forever #5 clk = ~clk;
  end
  always @(posedge clk) 
   $display("BLOCKING RACE: Time=%0t clk=%b a=%b b=%b", $time, clk, a, b);

  initial #100 $finish;
endmodule

