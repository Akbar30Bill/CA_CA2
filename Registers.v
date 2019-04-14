`timescale 1ns / 1ns
module RegisterFile(clk,rst,ReadReg1,ReadReg2,WriteReg,WriteData,ReadData1,ReadData2);
  input        clk,rst;
  input [2:0]  ReadReg1,ReadReg2,WriteReg;
  input [15:0] WriteData
  output[15:0] ReadData1,ReadData2;
  reg [7:0]registers[15:0]
  always @ ( posedge clk , posedge rst ) begin
    if (rst) begin
      registers <= 0;
    end
    else begin
      // here we implement registers funcs
    end
  end
endmodule
