module tb_not;

  reg a;
  wire o;

  
  not_gate uut (.a(a), .o(o));

  initial begin
    $dumpfile("not_wave.vcd");
    $dumpvars(0, tb_not);

    $display("time | a b | o");
    $monitor("%2t | %b  | %b", $time, a, o);

    a=0; #10;
    a=1; #10;
    $finish;
  end
endmodule
