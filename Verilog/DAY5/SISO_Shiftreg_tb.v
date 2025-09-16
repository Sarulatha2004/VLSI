module siso_shift_tb;
  reg clk,reset,din;
  wire dout;
  siso_shift uut(.clk(clk),.reset(reset),.din(din),.dout(dout));
  initial begin 
    clk =0;
    forever #5 clk =~clk;
  end
  initial begin
    $dumpfile("siso_shift.vcd");
    $dumpvars(0,siso_shift_tb);
  end
    initial begin
    $display("Time\tclk\treset\tdin\tdout");
    $monitor("%0t\t%b\t%b\t%b\t%b",$time,clk,reset,din,dout);
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
