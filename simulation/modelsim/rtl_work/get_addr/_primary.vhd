library verilog;
use verilog.vl_types.all;
entity get_addr is
    port(
        alu_result      : in     vl_logic_vector(31 downto 0);
        addr            : out    vl_logic_vector(7 downto 0)
    );
end get_addr;
