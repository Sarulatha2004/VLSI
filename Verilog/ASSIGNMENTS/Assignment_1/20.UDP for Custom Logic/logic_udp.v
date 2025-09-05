primitive logic_udp(f,x,y,z);
output f;
input x,y,z;
table
  // x  y  z : f;
     0  0  0 : 0;
     0  0  1 : 0;
     0  1  0 : 1;
     0  1  1 : 0;
     1  0  0 : 1;
     1  0  1 : 1;
     1  1  0 : 1;
     1  1  1 : 1;
endtable
endprimitive

