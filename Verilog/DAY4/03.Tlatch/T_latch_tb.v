module t_latch_tb;
reg t;
reg en;
reg res;
wire Q;
Tlatch uut (.t(t),.en(en),.res(res), .q(q));
  
initial begin
    en=0;
    #5 t = 1; 
    #5 t = 1; 
    #5 t = 1;  
    
    #5en = 1;
    #5 res=1;
    #5 t = 1; 
    #5 t = 1; 
    #5 t = 0; 

    #5 en = 1; 
    #5 res=0;
    #5 t = 1;              
    #5 t = 0;              
    #5 t = 1;             
    #5 $finish;
end

initial begin
  $monitor("Time=%0t | t=%b  | en=%b  | res=%b | q=%b", $time, t, en, res, q);
end

endmodule
