`timescale 1ns/1ns
module ALUControler(clk, rst, ALUOperation, Instruction);
  input         clk, rst;
  input  [15:0] Instruction;
  output [4 :0] ALUOperation;
  always @ (posedge clk , posedge rst)begin
    case(Instruction)
      16'b0000xxxxxxxxxxxx:begin ALUOperation<=0  end
      16'b0001xxxxxxxxxxxx:begin ALUOperation<=1  end
      16'b0010xxxxxxxxxxxx:begin ALUOperation<=2  end
      16'b0100xxxxxxxxxxxx:begin ALUOperation<=3  end
      16'b1000xxxx00000001:begin ALUOperation<=4  end
      16'b1000xxxx00000010:begin ALUOperation<=5  end
      16'b1000xxxx00000100:begin ALUOperation<=6  end
      16'b1000xxxx00001000:begin ALUOperation<=7  end
      16'b1000xxxx00010000:begin ALUOperation<=8  end
      16'b1000xxxx00100000:begin ALUOperation<=9  end
      16'b1000xxxx01000000:begin ALUOperation<=10 end
      16'b1000xxxx10000000:begin ALUOperation<=11 end
      16'b1000xxxx10000001:begin ALUOperation<=12 end
      16'b1000xxxx10000010:begin ALUOperation<=13 end
      16'b1000xxxx10000011:begin ALUOperation<=14 end
      16'b1100xxxxxxxxxxxx:begin ALUOperation<=15 end
      16'b1101xxxxxxxxxxxx:begin ALUControler<=16 end
      16'b1110xxxxxxxxxxxx:begin ALUControler<=17 end
      16'b1111xxxxxxxxxxxx:begin ALUOperation<=18 end
    endcase
  end
endmodule
