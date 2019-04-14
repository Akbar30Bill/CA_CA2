`timescale 1ns / 1ns
module ProgramCounter (clk, rst, pc);
input clk, rst;
output pc;
  reg[15:0] pc_reg;
  always @(posedge clk, posedge rst) begin
    if (rst) begin
      pc_reg <= 16'b0;
    end
    else begin
      pc_reg <= pc_reg + 4;
    end
  end
  assign pc = pc_reg;
endmodule //
