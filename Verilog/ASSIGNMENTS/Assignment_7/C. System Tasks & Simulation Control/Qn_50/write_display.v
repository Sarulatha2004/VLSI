module write_display;
reg a,b;

initial begin
a=0;b=1;
$display("Time=%0t | a=%b |  b=%b ",$time,a,b);#5;
a=1;b=0;#5
$display("Time=%0t | a=%b |  b=%b ",$time,a,b);#5;
a=1;b=1;#5
$write("Time=%0t| a=%b | b=%b |",$time,a,b);#5
a=0;b=0;#5
$write("Time=%0t| a=%b | b=%b |",$time,a,b);#5

#100;
end 
endmodule

