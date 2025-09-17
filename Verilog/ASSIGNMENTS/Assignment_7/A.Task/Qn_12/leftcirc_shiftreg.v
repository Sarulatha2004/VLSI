module leftcirc;
reg [7:0]data;
reg [7:0]result;
 
task left_circ_shift(input [7:0]in,output [7:0]out);
begin
out={in[6:0],in[7]};
end
endtask

initial begin
data=8'b10100100;
$display("Time=%t >>>Initial value>>>=%b",$time,data);
repeat(5)
begin
left_circ_shift(data,result);#10
$display("Time=%t >>>Shifted Value>>>=%b",$time,data);
data=result;
end
end
endmodule
