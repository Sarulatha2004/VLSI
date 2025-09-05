primitive Dlatch_udp(q,clk,d);
output q;
reg q;
input d,clk;
table
  // clk d : qn :qn+1
      1  0 : ?  : 0;
      1  1 : ?  : 1;
      0  ? : 0  : 0;
      0  ? : 1  : 1;
endtable 
endprimitive
      


