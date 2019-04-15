library verilog;
use verilog.vl_types.all;
entity inc_pc is
    port(
        data0x          : in     vl_logic_vector(31 downto 0);
        data1x          : in     vl_logic_vector(31 downto 0);
        result          : out    vl_logic_vector(31 downto 0)
    );
end inc_pc;
