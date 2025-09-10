module two_always;
  reg a,b;

  initial begin
  $monitor("time=%t a=%b b=%b",$time,a,b);
    a = 0; b = 0;
#100 $finish;
  end

  always #4 a = ~a; 
  always #6 b = ~b; 
endmodule

