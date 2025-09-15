module tb_sr_latch;
  reg S, R;     
  wire Q, Qb;    

  srlatch uut (.S(S), .R(R), .Q(Q), .Qb(Qb));

  initial begin
    $monitor("Time=%4t |  S=%b   R=%b  | Q=%b  Qb=%b", $time, S, R, Q, Qb);

    S = 1; R= 1;
    #10;

    S = 0; R = 1;
    #10;

    S = 1; R = 0;  
    #10;

    S = 1; R = 1;
    #10;

    S = 0; R = 0; 
    #10;

    S = 1; R = 1; 
    #10;

    $finish;
  end
endmodule

