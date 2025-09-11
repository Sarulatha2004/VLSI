module buffer_repeat;
  reg clk;
  reg [7:0] data, buffer [0:7];
  integer i;
  
  initial clk = 0;
  always #5 clk = ~clk;

  initial begin
    i = 0;
    repeat(8) begin
      @(posedge clk);
      data = i * 10;
      buffer[i] = data;
      $display("Stored %0d at time %0t", data, $time);
      i = i + 1;
      
    end
    $finish;
  end
endmodule

