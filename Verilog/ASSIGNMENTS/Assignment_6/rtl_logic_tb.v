module rtl_logic_tb;
  reg x1, x2, x3, clock;
  wire g, f;

  rtl_logic uut (
    .x1(x1),
    .x2(x2),
    .x3(x3),
    .clock(clock),
    .g(g),
    .f(f));

  initial begin
    clock = 0;
    forever #5 clock = ~clock;
  end

  initial begin
    $monitor("Time=%0t | clk=%b x1=%b x2=%b x3=%b | g=%b f=%b", 
              $time, clock, x1, x2, x3, g, f);
    x1 = 0; x2 = 0; x3 = 0;
    #5  x1 = 0; x2 = 0; x3 = 1;  
    #15 x1 = 1; x2 = 1; x3 = 0;  
    #15 x1 = 0; x2 = 1; x3 = 1;  
    #15 x1 = 1; x2 = 1; x3 = 0;  
    #15 x1 = 0; x2 = 0; x3 = 1;  

    #30 $finish;
  end
endmodule
