module tb_nor;

  reg a, b;
  wire o;
  nor_gate uut (.a(a), .b(b), .o(o));

  initial begin
    $dumpfile("nor_wave.vcd");
    $dumpvars(0, tb_nor);

    $display("time | a b | o");
    $monitor("%4t | %b %b | %b", $time, a, b, o);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
endmodule
