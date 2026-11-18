`timescale 1ns/1ps

// Baseline simulation testbench for iverilog.
// Identical stimulus to src/dot11_tx_tb.v, but:
//   - test-vector path resolves from this sim/ directory
//   - num_stf_minus is driven explicitly (0 = current default HW behaviour)
// Run vvp from this directory so the IFFT icmem_*.mem symlinks resolve.

module dot11_tx_tb_base;

reg  clock;
reg  reset;

reg  phy_tx_start;
wire phy_tx_done;
wire phy_tx_started;

reg [63:0] bram_din;
wire [9:0] bram_addr;

wire        result_iq_valid;
wire signed [15:0] result_i;
wire signed [15:0] result_q;

// covert-channel knob: 0 => no STF zeroing (baseline)
reg [7:0] num_stf_minus;

integer result_fd;

reg [63:0] Memory [0:1023];
initial begin
    $dumpfile("dot11_tx_base.vcd");
    $dumpvars;

    $readmemh("../unit_test/test_vec/tx_intf.mem", Memory);

    result_fd = $fopen("dot11_tx_base.txt", "w");

    clock = 0;
    reset = 1;
    phy_tx_start = 0;
    num_stf_minus = 0;

    # 20 reset = 0;
    phy_tx_start = 1;
    # 25 phy_tx_start = 0;
end

always begin //200MHz
    #2.5 clock = !clock;
end

always @(posedge clock) begin
    if(reset)
        bram_din <= 0;
    else begin
        if (result_iq_valid)
            $fwrite(result_fd, "%d %d\n", result_i, result_q);

        bram_din <= Memory[bram_addr];
        if (phy_tx_done == 1) begin
            $fclose(result_fd);
            $finish;
        end
    end
end


dot11_tx dot11_tx_inst (
    .clk(clock),
    .phy_tx_arest(reset),

    .phy_tx_start(phy_tx_start),
    .phy_tx_done(phy_tx_done),
    .phy_tx_started(phy_tx_started),

    .init_pilot_scram_state(7'b1111111),
    .init_data_scram_state(7'b1111111),

    .bram_din(bram_din),
    .bram_addr(bram_addr),

    .result_iq_ready(1'b1),
    .result_iq_valid(result_iq_valid),
    .result_i(result_i),
    .result_q(result_q),
    .num_stf_minus(num_stf_minus)
);

endmodule
