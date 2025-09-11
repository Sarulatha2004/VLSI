module MSB;
reg [7:0]data;
integer i;

initial
begin
 i=7;data= 8'b00001111;
  while(data[7]==0)
    begin
     while(i>0)
     begin
      data[i]=data[i-1];
      i--;
      end
      data[0]=0;
      $display(" data=%b", data);
      i=7;
    end
    $display("data=%b",data);
end 
endmodule

