module tb_jk_latch;
  reg J, K, En;
  wire Q, Qb;

  jk_latch uut (
    .J(J), .K(K), .En(En), .Q(Q), .Qb(Qb)
  );

  initial begin
    $display("Time | En J K | Q Qb");
    $monitor("%4t | %b %b %b | %b  %b", $time, En, J, K, Q, Qb);

    J=0; K=0; En=0; #10;

    En=1;

    J=1; K=0; #10;   
    J=0; K=1; #10;
    J=0; K=0; #10;   
    J=1; K=1; #10;  
    J=1; K=1; #10;   

    En=0; J=1; K=0; #10; 

    $finish;
  end
endmodule

