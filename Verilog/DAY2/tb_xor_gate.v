module tb_xor;

  reg a, b;
  wire o;
  xor_gate uut (.a(a), .b(b), .o(o));

  initial begin
    $dumpfile("xor_wave.vcd");
    $dumpvars(0, tb_xor);

    $display("time | a b | o");
    $monitor("%4t | %b %b | %b", $time, a, b, o);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
endmodule
