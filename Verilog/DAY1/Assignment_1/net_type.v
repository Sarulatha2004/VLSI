module net_type;
reg a,b;
  wand wand_net;     
  wor  wor_net;      
  tri  tri_net;     
  triand triand_net; 
  assign wand_net = a;
  assign wand_net = b;
  assign wor_net = a;
  assign wor_net = b;   
  assign tri_net = a;
  assign tri_net = b;
  assign triand_net = a;  
  assign triand_net = b;
  initial begin
   $monitor("time=%0t : a=%b b=%b wand_net=%b wor_net=%b tri_net=%b triand_net=%b",$time,a,b, wand_net, wor_net, tri_net, triand_net);
  a=1'b0;b=1'b1;#10;
  a=1'b1;b=1'b0;#10;
  a=1'b1;b=1'b1;#10;
  a=1'b0;b=1'b0;#10;
  a=1'b0;b=1'bz;#10;
  a=1'b1;b=1'bz;#10;
  a=1'bz;b=1'b1;#10;
  a=1'bz;b=1'b0;#10;
  $finish;
  end
endmodule

