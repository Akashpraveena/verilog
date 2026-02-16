module mul_4bit(
  input[3:0]a,b,
  output reg[3:0]y
);
  always @(*)begin
    y= a*b;
  end 
endmodule
    
