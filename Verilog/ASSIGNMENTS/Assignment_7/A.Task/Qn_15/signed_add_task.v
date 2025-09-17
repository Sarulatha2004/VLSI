module add_task_signed;
  reg signed [7:0] A, B;
  reg signed [8:0] Sum;  
  task add_task(input signed [7:0] A, input signed [7:0] B, output signed [8:0] O);
  begin
    O = A + B;
  end
  endtask

  initial begin
    A = 8'sd50; B = -8'sd20;
    add_task(A, B, Sum);
    $display("Time=%0t | A=%0d | B=%0d | Sum=%0d",$time,A,B,Sum);

    #10 A = -8'sd100; B = -8'sd28;
    add_task(A, B, Sum);
    $display("Time=%0t | A=%0d | B=%0d | Sum=%0d",$time,A,B,Sum);

    #10 A = 8'sd127; B = 8'sd5;
    add_task(A, B, Sum);
    $display("Time=%0t | A=%0d | B=%0d | Sum=%0d",$time,A,B,Sum);

    #10 $finish;
  end
endmodule

