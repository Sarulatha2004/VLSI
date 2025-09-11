module loop_wave;
  reg a, b, c;
  integer i;
  initial begin
    a = 0;
    for (i = 0; i < 10; i = i + 1) begin
      #5 a = ~a;
    end
  end

  initial begin
    b = 0;
    repeat (12) begin
      #5 b = ~b;
    end
  end

  initial begin
    c = 0;
    forever #5 c = ~c;
  end

  initial begin
    $monitor("Time=%0t | a=%b b=%b c=%b", $time, a, b, c);
    #200 $finish;   // stop simulation after 100 time units
  end
endmodule

