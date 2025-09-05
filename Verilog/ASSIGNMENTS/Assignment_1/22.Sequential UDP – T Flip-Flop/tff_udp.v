primitive tff_udp(q,t,clk);
output q;
reg q;
input t,clk;
initial q=0;
table
 // t  clk : q :nq
    0  (01) : ? : -;
    1  (01) : 0 : 1;
    1  (01) : 1 : 0;
    ?   ?   : ? : -;
endtable  
endprimitive
