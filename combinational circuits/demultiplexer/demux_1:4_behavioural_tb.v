module demux1_4_tb;
  reg din;
  reg [1:0]s;
  wire y0,y1,y2,y3;
  demux1_4 dut(.*);
  initial begin
    $dumpfile("demux1_4.vcd");
    $dumpvars(1,demux1_4_tb);
    $monitor("$time=0%t din=%b s=%b y0=%b y1=%b y2=%b y3=%b",$time,din,s,y0,y1,y2,y3);
    din=1;
    s=2'b00; #10;
    s=2'b01; #10;
    s=2'b10; #10;
    s=2'b11; #10;
  end 
endmodule
    
