module demux1to4 (d,s,en,y);
    input d;        
    input [1:0] s;
    input en;     
    output [3:0] y;

    assign y[0] = (en & (s == 2'b00)) ? d : 1'b0;
    assign y[1] = (en & (s == 2'b01)) ? d : 1'b0;
    assign y[2] = (en & (s == 2'b10)) ? d : 1'b0;
    assign y[3] = (en & (s == 2'b11)) ? d : 1'b0;

endmodule

