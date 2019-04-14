`timescale 1ns / 1ns
//-------------------------------
`define LOAD  0
`define STORE 1
`define JUMP  2
//-------------------------------
`define BRANCH_Z 3
//-------------------------------
`define MOVE 4
`define ADD  5
`define SUB  6
`define AND  7
`define OR   8
`define NOT  9
`define NOP  10
`define WND0 11
`define WND1 12
`define WND2 13
`define WND3 14
//-------------------------------
`define ADDI 15
`define SUBI 16
`define ANDI 17
`define ORI  18

module ALU (clk,rst,A,B,Operation,Zero,out);
  input         clk,rst;
  input  [15:0] A,B;
  input  [4 :0] Operation;
  output        Zero;
  output [15:0] out
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
      OR       : out  = A|b;
      NOT      : out  = A!b;
    endcase
  end
endmodule
