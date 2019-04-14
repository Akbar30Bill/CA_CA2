`timescale 1ns / 1ns
module RegisterFile(clk,rst,windowIn,WriteDataEnable,ReadReg1,ReadReg2,WriteReg,WriteData,ReadData1,ReadData2);
  input             clk,rst,WriteDataEnable;
  input      [1 :0]  ReadReg1,ReadReg2,WriteReg;
  input      [15:0] WriteData;
  input      [2 :0]  windowIn;
  output reg [15:0] ReadData1,ReadData2;
  reg        [15:0] r0;
  reg        [15:0] r1;
  reg        [15:0] r2;
  reg        [15:0] r3;
  reg        [15:0] r4;
  reg        [15:0] r5;
  reg        [15:0] r6;
  reg        [15:0] r7;
  reg        [15:0] r8;
  reg        [2 :0]  window;
  always @ ( posedge clk or posedge rst ) begin
    if (rst) begin
      r0        <= 16'b0;
      r1        <= 16'b0;
      r2        <= 16'b0;
      r3        <= 16'b0;
      r4        <= 16'b0;
      r5        <= 16'b0;
      r6        <= 16'b0;
      r7        <= 16'b0;
      r8        <= 16'b0;
      window    <= 2'b0;
      ReadData1 <= 16'b0;
      ReadData2 <= 16'b0;
    end
    else begin
      if   (windowIn != window) begin
        window <= windowIn;
      end
      case (window)
        2'b00:begin
          case (ReadReg1)
            2'b00:ReadData1<=r0;
            2'b01:ReadData1<=r1;
            2'b10:ReadData1<=r2;
            2'b11:ReadData1<=r3;
          endcase
          case (ReadReg2)
            2'b00:ReadData2<=r0;
            2'b01:ReadData2<=r1;
            2'b10:ReadData2<=r2;
            2'b11:ReadData2<=r3;
          endcase
        end
        2'b01:begin
          case (ReadReg1)
            2'b00:ReadData1<=r2;
            2'b01:ReadData1<=r3;
            2'b10:ReadData1<=r4;
            2'b11:ReadData1<=r5;
          endcase
          case (ReadReg2)
            2'b00:ReadData2<=r2;
            2'b01:ReadData2<=r3;
            2'b10:ReadData2<=r4;
            2'b11:ReadData2<=r5;
          endcase
        end
        2'b10:begin
          case (ReadReg1)
            2'b00:ReadData1<=r4;
            2'b01:ReadData1<=r5;
            2'b10:ReadData1<=r6;
            2'b11:ReadData1<=r7;
          endcase
          case (ReadReg2)
            2'b00:ReadData2<=r4;
            2'b01:ReadData2<=r5;
            2'b10:ReadData2<=r6;
            2'b11:ReadData2<=r7;
          endcase
        end
        2'b11:begin
          case (ReadReg1)
            2'b00:ReadData1<=r6;
            2'b01:ReadData1<=r7;
            2'b10:ReadData1<=r8;
            2'b11:ReadData1<=r1;
          endcase
          case (ReadReg2)
            2'b00:ReadData2<=r6;
            2'b01:ReadData2<=r7;
            2'b10:ReadData2<=r8;
            2'b11:ReadData2<=r1;
          endcase
        end
      endcase
      if   (WriteDataEnable)begin
        case(window)
          2'b00:r0<=WriteData;
          2'b01:r2<=WriteData;
          2'b10:r4<=WriteData;
          2'b11:r6<=WriteData;
        endcase
      end
    end
  end
endmodule
