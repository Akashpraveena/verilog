module sub_4bit(
  input[3:0]a,b,
  output reg[3:0]difference
);
  always @(*)begin
    difference= a-b;
  end 
endmodule
    
