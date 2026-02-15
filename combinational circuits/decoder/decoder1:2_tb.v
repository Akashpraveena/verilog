module decoder1_2_tb;
  reg d;
  wire y0,y1;
  decoder1_2 dut(.*);
  initial begin
  $dumpfile("decoder1_2.vcd");
  $dumpvars(1,decoder1_2_tb);
  $monitor("$time=0%t d=%b y0=%b y1=%b",$time,d,y0,y1);
  d=1; #10
  d=0; #10
  $finish;
  end
endmodule
  
