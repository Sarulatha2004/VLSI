module sipo_shift_tb;
  reg clk,reset,din;
  wire [3:0]q;
  sipo_shift uut(.clk(clk),.reset(reset),.din(din),.q(q));
  initial begin 
    clk =0;
    forever #5 clk =~clk;
  end
  initial begin
    $dumpfile("sipo_shift.vcd");
    $dumpvars(0,sipo_shift_tb);
  end
    initial begin
    $display("Time\tclk\treset\tdin\tdout");
    $monitor("Time=%0t | clk=%b  | reset=%b  | din=%b |   q%b",$time,clk,reset,din,q);
     #10; reset=1; din=0;
     #10; din=1;
     #10; din=0;
     #10; din=1;
     #10; din=0;
     #10; reset=0; din=1;
     #10; din=0;
     #10; din=1;
     #10; din=1;
     #10;
      
      
      $finish;
    end 
endmodule
