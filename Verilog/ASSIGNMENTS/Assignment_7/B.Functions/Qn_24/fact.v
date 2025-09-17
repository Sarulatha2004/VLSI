module factorial(
  input[7:0]n,
  output[15:0]result
);
function automatic [15:0]fact;
input[7:0]N;
if(N==1)
 fact=1;
else
 fact=N*fact(N-1);
endfunction
initial begin
$display("Factorial of 1= %d", fact(1));
$display("Factorial of 2= %d", fact(2));
$display("Factorial of 3= %d", fact(3));
$display("Factorial of 4= %d", fact(4));
$display("Factorial of 5= %d", fact(5));
$display("Factorial of 6= %d", fact(6));
$display("Factorial of 7= %d", fact(7));
end
endmodule
