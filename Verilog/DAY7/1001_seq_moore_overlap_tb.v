module moore_1001_overlap_tb;
  reg clk,rst,x;
  wire y;
  
  moore_1001_overlap uut(.clk(clk), .rst(rst), .x(x), .y(y));

  initial clk = 0;   
  always #5 clk = ~clk;
    
  initial begin
    $dumpfile("moore_1110_overlap.vcd");
    $dumpvars;
    $monitor ("TIME = %0t | CLK = %b | RST = %b | STATE = %b | NEXT_STATE = %b | X = %b | Y = %b " , $time,clk,rst,uut.state,uut.next_state,x,y);
    x = 0;
    #5 rst = 1;
    #5 rst = 0;
    
    #10 x = 1;
    #10 x = 0;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;
    #10 x = 1;
    #10 x = 0;
    #10 x = 0;
    #10 x = 1;
    #10 x = 0;
    #10 x = 0;
    #10 x = 1;
    #10 x = 1;
    #10 x = 1;
    #10;
    $finish;
  end
endmodule
