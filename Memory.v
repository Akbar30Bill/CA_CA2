`timescale 1ns / 1ns
module memory(clk,rst,Address,WriteDataEnable,ReadDataEnable,WriteData,ReadData);
  input             clk,rst;
  input             ReadDataEnable;
  input      [10:0] Address;
  input             WriteDataEnable;
  input      [16:0] WriteData;
  output reg [16:0] ReadData;
  reg        [16:0] Memory [0:1024];
  integer i;
  always @ (posedge clk, posedge rst) begin
    if (rst)begin
      for (i = 0 ; i < 1025 ; i = i+1)
        Memory[i]<=16'b0;
    end
    else if (ReadDataEnable) begin
      ReadData<=Memory[Address];
    end
  end
endmodule
