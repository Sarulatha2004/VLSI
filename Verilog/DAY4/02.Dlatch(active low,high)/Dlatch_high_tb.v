module d_latch_tb;
  reg d,en;
  wire q,qbar;
  Dlatch uut (.d(d),.en(en),.q(q),.qbar(qbar));
  initial begin
    $display ("Time\td\ten\tq\tqbar");
    $monitor ("%0t\t %b\t %b\t %b\t %b",$time,d,en,q,qbar);
    
   #10; en=1; d=1;
   #10;       d=0;
   #10; en=0; d=1;
   #10;       d=0;
   #10;
   $finish;
  end 
endmodule
