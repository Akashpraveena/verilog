module demux1_2_tb;
  reg din;
  reg s;
  wire y0, y1;
  demux1_2 dut(.*);
  initial begin
    $dumpfile("demux1_2.vcd");
    $dumpvars(1,demux1_2_tb);
    $monitor("$time=0%t din=%b s=%b y0=%b y1=%b",$time,din,s,y0,y1);
    din = 0; s = 0 ; #10;
    din = 0; s = 1 ; #10;
    din = 1; s = 0 ; #10;
    din = 1; s = 1 ; #10;
    $finish;
  end
endmodule
    
