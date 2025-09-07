// 2-to-1 MUX 
module mux2to1 ( a, b, sel, y);
 input a,b,sel;
 output y;
    wire nsel, w1, w2;
    not (nsel, sel);       
    and (w1, a, nsel);     
    and (w2, b, sel);      
    or  (y, w1, w2);   
endmodule
//4-to-1 mux
module mux4to1 (d,sel,y);
    input [3:0]d;
    input [1:0]sel;
    output y;
    wire w1, w2;
    mux2to1 m1 (.a(d[0]), .b(d[1]), .sel(sel[0]), .y(w1));
    mux2to1 m2 (.a(d[2]), .b(d[3]), .sel(sel[0]), .y(w2));
    mux2to1 m3 (.a(w1), .b(w2), .sel(sel[1]), .y(y));
endmodule
//8-to-1 mux
module mux8to1_using_4to1 ( d,sel,y);
    input [7:0]d;
    input [2:0]sel;
    output y;
    wire l_out, h_out;
    mux4to1 m_low  (.d(d[3:0]), .sel(sel[1:0]), .y(l_out));
    mux4to1 m_high (.d(d[7:4]), .sel(sel[1:0]), .y(h_out));
    mux2to1 m_final (.a(l_out), .b(h_out), .sel(sel[2]), .y(y));
endmodule

