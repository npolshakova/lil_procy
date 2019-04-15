library verilog;
use verilog.vl_types.all;
entity id is
    port(
        inst            : in     vl_logic_vector(31 downto 0);
        dst             : out    vl_logic_vector(4 downto 0);
        addr_a          : out    vl_logic_vector(4 downto 0);
        addr_b          : out    vl_logic_vector(4 downto 0)
    );
end id;
