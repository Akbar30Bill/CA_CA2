library verilog;
use verilog.vl_types.all;
entity ProgramCounter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        pc              : out    vl_logic
    );
end ProgramCounter;
