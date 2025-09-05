module demux(i,s,y0,y1);
input i,s;
output y0,y1;
assign y0=~s;
assign y1=s;
endmodule
