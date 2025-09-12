module tb_decoder_casez;
  reg [3:0] in;
  wire [7:0] out;

  decoder_casez uut(.in(in), .out(out));

  initial begin
    $dumpfile("decoder_casez.vcd");
    $dumpvars(0, tb_decoder_casez);
    $monitor("Time=%0t | in=%b | out=%b", $time, in, out);

    in = 4'b0000; #10;
    in = 4'b0001; #10;
    in = 4'b0010; #10;
    in = 4'b0011; #10;
    in = 4'b0101; #10;
    in = 4'b0110; #10;
    in = 4'b1000; #10;
    in = 4'b1111; #10;
    in = 4'b1010; #10;
    in = 4'b1100; #10;
    in = 4'b0111; #10;
    in = 4'b1110; #10;
    #50 $finish;
  end
endmodule

