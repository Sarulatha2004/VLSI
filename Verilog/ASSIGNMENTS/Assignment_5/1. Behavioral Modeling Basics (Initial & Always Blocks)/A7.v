module multi_initial;
  reg a, b;

  initial begin
    a = 0;
    #5 a = 1;
  end

  initial begin
    b = 0;
    #10 b = 1;
  end
initial begin
$monitor("time=%t a=%b b=%b",$time,a,b);
#100 $finish;
end
endmodule

