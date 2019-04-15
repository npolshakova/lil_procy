library verilog;
use verilog.vl_types.all;
entity pc is
    port(
        CLOCK_50        : in     vl_logic;
        update_pc       : in     vl_logic_vector(31 downto 0);
        pc              : out    vl_logic_vector(31 downto 0)
    );
end pc;
