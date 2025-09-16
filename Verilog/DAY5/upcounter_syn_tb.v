module tb_sync_up_counter;
  reg clk, reset;
  wire [3:0] q;
  sync_up_counter uut (.clk(clk), .reset(reset), .q(q));

  always #5 clk = ~clk; 

  initial begin
    $dumpfile("sync_up_counter.vcd");
    $dumpvars(0, tb_sync_up_counter);
    $monitor("Time=%0t | clk=%b | reset=%b | q=%b(%d) ",$time,clk,reset,q,q);
    clk = 0; reset = 1;
    #10 reset = 0;        

    #200 $finish;         
  end
endmodule

