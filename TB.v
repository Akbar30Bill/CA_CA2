`timescale 1ns / 1ns
module testBench();
  reg clk, rst;
  interface in(clk, rst);
  always @(*) begin
    #100clk<=0;
    #100clk<=1;
  end
  initial begin
    #100
    rst=1;
    #876
    rst=0;
    #100000;
    $stop;
  end
endmodule
