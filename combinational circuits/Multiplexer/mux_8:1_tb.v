module mux8_1_tb;
  reg i0,i1,i2,i3,i4,i5,i6,i7,s1,s2,s3;
  wire y;
  mux8_1 dut(.*);
  initial begin
    $dumpfile("mux8_1.vcd");
    $dumpvars(1,mux8_1_tb);
    $monitor("$time=0%t i0=%b i1=%b i2=%b i3=%b i4=%b i5=%B i6=%b i7=%b s1=%b s2=%b s3=%b y=%b",$time,i0,i1,i2,i3,i4,i5,i6,i7,s1,s2,s3,y);
    i0=1; i1=0; i2=1; i3=0; i4=1; i5=0;
    i6=1; i7=0; 
     s1=0; s2=0; s3=0; #10
     s1=0; s2=0; s3=1; #10
     s1=0; s2=1; s3=0; #10
     s1=0; s2=1; s3=1; #10
     s1=1; s2=0; s3=0; #10
     s1=1; s2=0; s3=1; #10
     s1=1; s2=1; s3=0; #10
     s1=1; s2=1; s3=1; #10
     $finish;
  end
endmodule
    
