module tb_wrong_casex;
  reg [3:0] in;
  wire y;

  wrong_casex uut(.in(in), .y(y));

  initial begin
    $dumpfile("wrong_casex.vcd");
    $dumpvars(0, tb_wrong_casex);
    $monitor("Time=%0t | in=%b | y=%b", $time, in, y);


    in = 4'b1000; #10;   
    in = 4'b1100; #10;   
    in = 4'b0000; #10;   
    in = 4'b0100; #10; 
    in = 4'b1111; #10;   

    
    in = 4'b1x00; #10;   
    in = 4'b0x00; #10;   

    #50 $finish;
  end
endmodule

