module mux4to1_param #(parameter N = 4   )
(
    input  [N-1:0] i0,  
    input  [N-1:0] i1,  
    input  [N-1:0] i2, 
    input  [N-1:0] i3,  
    input  [1:0] sel,  
    output  [N-1:0] y   
);
    assign y = (sel == 2'b00) ? i0 :
               (sel == 2'b01) ? i1 :
               (sel == 2'b10) ? i2 :
                                i3;

endmodule

