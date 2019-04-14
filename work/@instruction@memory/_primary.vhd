library verilog;
use verilog.vl_types.all;
entity InstructionMemory is
    port(
        address         : in     vl_logic_vector(15 downto 0);
        instruction     : out    vl_logic_vector(8 downto 0)
    );
end InstructionMemory;
