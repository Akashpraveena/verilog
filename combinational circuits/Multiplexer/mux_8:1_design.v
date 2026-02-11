module mux8_1(input i0,i1,i2,i3,i4,i5,i6,i7,s1,s2,s3,output y);
  assign y=(~s1&~s2&~s3&i0)|(~s1&~s2&s3&i1)|(~s1&s2&~s3&i2)|(~s1&s2&s3&i3)|(s1&~s2&~s3&i4)|(s1&~s2&s3&i5)|(s1&s2&~s3&i6)|(s1&s2&s3&i7);
endmodule
