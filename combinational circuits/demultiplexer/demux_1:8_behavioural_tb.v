module demux1_8_tb;
  reg din;
  reg [2:0]s;
  wire[7:0]y;
  demux1_8 dut(.*);
  initial begin
    $dumpfile("demux1_8.vcd");
    $dumpvars(1,demux1_8_tb);
    $monitor("$time=0%t din=%b s=%b y=%b",$time,din,s,y);
    din=1;
    s= 3'b000; #10;
    s= 3'b001; #10;
    s= 3'b010; #10;
    s= 3'b011; #10;
    s= 3'b100; #10;
    s= 3'b101; #10;
    s= 3'b110; #10;
    s= 3'b111; #10;
    $finish;
  end 
endmodule
    
