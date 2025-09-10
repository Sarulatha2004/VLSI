module blocking_example;
  reg a, b;

  initial begin
$monitor("time=%t, a=%b, b=%b",$time,a,b);
    a <= 0; b <= 0;
    #5 a <= 1; b <= a;
   #100  $finish;
  end
endmodule

