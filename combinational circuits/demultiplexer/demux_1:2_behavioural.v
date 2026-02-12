module demux1_2(input din,input s, output reg y0,y1);
  always@(*) begin
    case(s)
      1'b0: begin
        y0 = din;
        y1 = 1'b0;
      end
      1'b1: begin
        y0 = 1'b0;
        y1 = din;
      end
    endcase
  end
endmodule
