module tb_or;

  reg a, b;
  wire o;

  or_gate uut (.a(a), .b(b), .o(o));

  initial begin
    $dumpfile("or_wave.vcd");
    $dumpvars(0, tb_or);

    $display("time | a b | o");
    $monitor("%4t | %b %b | %b", $time, a, b, o);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
endmodule
