module full_subtractor(input a,b,cin,output difference,borrow);
  assign difference = (a ^ b ^ cin);
  assign borrow = ~ a&(b^cin)| b&cin ;
endmodule
