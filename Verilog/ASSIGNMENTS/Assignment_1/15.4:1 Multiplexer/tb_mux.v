module tb_mux;

  reg i0,i1,i2,i3,s1,s0;
  wire y;
  mux4x1 uut(.i0(i0), .i1(i1), .i2(i2), .i3(i3), .s0(s0), .s1(s1), .y(y));
  initial begin
    $dumpfile("mux_wave.vcd");
    $dumpvars(0, tb_mux);
    i0=1'b0;
    i1=1'b1;
    i2=1'b1;
    i3=1'b1;
    $display("time | s1 s0 | i0 i1 i2 i3 | y ");
    $monitor("%4t | %b %b | %b %b %b %b | %b", $time, s1,s0,i0,i1,i2,i3,y);
    s1=0; s0=0; #10;
    s1=0; s0=1; #10;
    s1=1; s0=0; #10;
    s1=1; s0=1; #10;
    $finish;
    end
endmodule
