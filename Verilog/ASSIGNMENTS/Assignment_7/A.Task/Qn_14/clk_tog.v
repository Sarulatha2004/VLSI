module clk_toggle;
  reg clk;
task toggle_clk(output reg clk);
integer i;
    begin
      clk = 0;  
      for (i = 0; i < 10; i = i + 1) begin
        #5 clk = ~clk; 
        $display("Time=%t | clk=%b", $time, clk);
      end
    end
  endtask

  initial begin
    $display("Starting clock toggle simulation");
    toggle_clk(clk);
    #20 $finish;
  end
endmodule

