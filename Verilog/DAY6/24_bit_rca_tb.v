module RCA_parameter_tb;
  parameter N = 26;
  reg [N-1:0]A,B;
  reg cin;
  wire [N-1:0]sum;
  wire carry;

  RCA_parameter uut(A,B,cin,sum,carry);
  initial begin
    $dumpfile("rca.vcd");
    $dumpvars;
    
    $monitor("TIME=%0t  A=%b(%d)  B=%b(%d)  Cin=%b  Sum=%b(%d)  Cout=%b",$time,A,A,B,B,cin,sum,sum,carry);

    A=26'd100; B=26'd101; cin=0;#10
    A=26'd50; B=26'd35; cin=1;#10
    A=26'd220; B=26'd45;cin=0;#10
    #100; $finish;
    end
endmodule
