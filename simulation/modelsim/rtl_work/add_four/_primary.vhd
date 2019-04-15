library verilog;
use verilog.vl_types.all;
entity add_four is
    port(
        four            : out    vl_logic_vector(31 downto 0)
    );
end add_four;
