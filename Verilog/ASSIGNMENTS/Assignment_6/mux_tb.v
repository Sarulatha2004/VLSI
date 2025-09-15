module tb_mux8to1;

  reg  [7:0] d;
  reg  [2:0] sel;
  wire y;
 
  mux8to1 uut (.d(d), .sel(sel), .y(y));

  initial begin
   
    $monitor("Time=%0t | sel=%b | d=%b | y=%b", $time, sel, d, y);
 
    d = 8'b10101010;   
    sel = 3'b000; #10;
    sel = 3'b001; #10;
    sel = 3'b010; #10;
    sel = 3'b011; #10;
    sel = 3'b100; #10;
    sel = 3'b101; #10;
    sel = 3'b110; #10;
    sel = 3'b111; #10;

    $finish;
  end

endmodule

