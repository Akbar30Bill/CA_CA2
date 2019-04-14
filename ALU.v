`timescale 1ns / 1ns
module ALU (clk,rst,A,B,Operation,Zero,out);
  //-------------------------------{
  parameter LOAD     =  0;
  parameter STORE    =  1;
  parameter JUMP     =  2;
  //-------------------------------
  parameter BRANCH_Z =  3;
  //-------------------------------
  parameter MOVE     =  4;
  parameter ADD      =  5;
  parameter SUB      =  6;
  parameter AND      =  7;
  parameter OR       =  8;
  parameter NOT      =  9;
  parameter NOP      = 10;
  parameter WND0     = 11;
  parameter WND1     = 12;
  parameter WND2     = 13;
  parameter WND3     = 14;
  //-------------------------------
  parameter ADDI     = 15;
  parameter SUBI     = 16;
  parameter ANDI     = 17;
  parameter ORI      = 18;
  //-------------------------------}
  input             clk,rst;
  input      [15:0] A,B;
  input      [4 :0] Operation;
  output reg        Zero;
  output reg [15:0] out;
  always @ ( posedge clk or posedge rst ) begin
    if(rst)begin
      Zero <= 0;
      out  <= 16'b0;
    end
    case (Operation)
      BRANCH_Z : Zero = (A==B) ? 1 : 0;
      //-------------------------------
      MOVE     : out  =   B;
      SUB      : out  = A-B;
      AND      : out  = A&B;
      OR       : out  = A|B;
      NOT      : out  =  ~B;
      //-------------------------------
      ADDI     : out  = B+A;
      SUBI     : out  = B-A;
      ANDI     : out  = B&A;
      ORI      : out  = B|A;
      default  : out  = out;
    endcase
  end
endmodule
