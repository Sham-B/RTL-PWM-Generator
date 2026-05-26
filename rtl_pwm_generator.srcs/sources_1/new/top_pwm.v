module top_pwm(
    input wire clk,
    input wire rst_n,
    input wire [7:0] duty,
    output wire pwm_out
);

    wire slow_clk;

    // divider instance
    clock_divider #(
        .DIVIDER(4)
    ) div_inst (
        .clk(clk),
        .rst_n(rst_n),
        .slow_clk(slow_clk)
    );

    // pwm instance
    pwm_core pwm_inst (
        .slow_clk(slow_clk),
        .rst_n(rst_n),
        .duty(duty),
        .pwm_out(pwm_out)
    );

endmodule