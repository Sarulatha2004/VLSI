module forever_disable;
  reg clk;

  initial begin : gen_clk
    clk = 0;
    forever #5 clk = ~clk;
  end

  initial begin
    $monitor("TIME = %0t | clk = %b",$time,clk);
    #50 disable gen_clk;
    $display("Stopped clock at time=%0t", $time);
    #10 $finish;
  end
endmodule

