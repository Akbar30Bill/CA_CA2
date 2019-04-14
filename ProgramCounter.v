`timescale 1ns / 1ns
module ProgramCounter (clk, rst, LoadPc, LoadPcEnable, pc);
input         clk, rst;
input         LoadPcEnable;
input  [15:0] LoadPc;
output        pc;
  reg[15:0] pc_reg;
  always @(posedge clk, posedge rst) begin
    if (rst) pc_reg <= 16'b0;
    else if (LoadPcEnable) pc_reg<=LoadPc;
    else pc_reg <= pc_reg + 4;
  end
  assign pc = pc_reg;
endmodule //
