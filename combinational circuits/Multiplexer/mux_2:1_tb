module mux2_1_tb;
  reg i0,i1,s;
  wire y;
  mux2_1 dut(.*);
  initial begin
  $dumpfile("mux2_1.vcd");
  $dumpvars(1,mux2_1_tb);
    $monitor("$time=0%t i0=%b i1=%b s=%b y=%b",$time,i0,i1,s,y);
    i0=1; i1=0;
    s=0; #10
    s=1; #10
    $finish;
  end
endmodule
    
    
