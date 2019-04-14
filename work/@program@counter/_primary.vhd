library verilog;
use verilog.vl_types.all;
entity ProgramCounter is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        LoadPc          : in     vl_logic_vector(15 downto 0);
        LoadPcEnable    : in     vl_logic;
        pc              : out    vl_logic
    );
end ProgramCounter;
