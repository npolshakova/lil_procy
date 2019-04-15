library verilog;
use verilog.vl_types.all;
entity instruction_mem is
    port(
        pc              : in     vl_logic_vector(31 downto 0);
        inst            : out    vl_logic_vector(31 downto 0)
    );
end instruction_mem;
