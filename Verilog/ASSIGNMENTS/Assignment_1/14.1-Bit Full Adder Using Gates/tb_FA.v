module tb_FA;

  reg a, b,cin;
  wire s,cout;
  Full_Adder uut(.a(a), .b(b), .cin(cin), .s(s), .cout(cout));

  initial begin
    $dumpfile("FA_wave.vcd");
    $dumpvars(0, tb_FA);

    $display("time | a b cin | s cout");
    $monitor("%4t | %b %b %b| %b %b", $time, a, b,cin,s,cout);

    a=0; b=0; cin=0; #10;
    a=0; b=0; cin=1; #10;
    a=0; b=1; cin=0; #10;
    a=0; b=1; cin=1; #10;
    a=1; b=0; cin=0; #10;
    a=1; b=0; cin=1; #10;
    a=1; b=1; cin=0; #10;
    a=1; b=1; cin=1; #10;
   
    $finish;
  end
endmodule
