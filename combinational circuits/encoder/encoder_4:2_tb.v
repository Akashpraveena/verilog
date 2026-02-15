module encoder4_2_tb;
reg[3:0]i;
wire[1:0]y;
encoder4_2 dut(.*);
initial begin
  $monitor("$time=0%t i=%b y=%b",$time,i,y);
i=4'b0000;#10;
i=4'b0001;#10;
i=4'b0010;#10;
i=4'b0011;#10;
$finish;
end
endmodule


