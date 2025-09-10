module toggle_example;
  reg t;

  initial begin
  $monitor(" time=%t t=%b", $time,t);
    t = 0;
  #100 $finish;
  end

  always #5 t = ~t;
endmodule

