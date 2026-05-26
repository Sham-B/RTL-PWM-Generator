module pwm_core(
    input wire slow_clk,
    input wire rst_n,
    input wire [7:0] duty,
    output reg pwm_out
);

    reg [7:0] counter;

    always @(posedge slow_clk or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 0;
            pwm_out <= 0;
        end
        else begin
            counter <= counter + 1;

            if (counter < duty)
                pwm_out <= 1;
            else
                pwm_out <= 0;
        end
    end

endmodule