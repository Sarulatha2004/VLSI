module piso_shift_tb;
  reg clk,reset,load;
  reg [3:0]pin;
  wire dout;
  piso_shift uut(.clk(clk),.reset(reset),.pin(pin),.dout(dout), .load(load));
  initial begin
    clk =0;
    forever #5 clk =~clk;
  end
  initial begin
    $dumpfile("piso_shift.vcd");
    $dumpvars(0,piso_shift_tb);
  end
    initial begin
    $monitor("Time=%0t | clk=%b  | reset=%b  | load=%b  | pin=%b| dout=%b",$time,clk,reset,load,pin,dout);
     #10; reset=1;load=0; pin=4'b0000;
     #10; pin=4'b0101;
     #10; pin=4'b0110;
     #10; pin=4'b1101;
     #10; pin=4'b0100;
     #10; reset=0;load=1; pin=4'b0101;
     #10; pin=4'b1000;
     #10; pin=4'b0111;
     #10; pin=4'b1111;
     #10; pin=4'b1010;
     #10;


      $finish;
    end
endmodule
