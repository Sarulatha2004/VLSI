
module clk_gen;
  reg clk;

  initial begin
    clk = 0;           
    forever #5 clk = ~clk;  
  end

  initial begin
   $dumpfile("clk_wave.vcd");
   $dumpvars;
   $monitor("time=%t | clk=%b",$time,clk);
    #100 $finish;
  end

endmodule

