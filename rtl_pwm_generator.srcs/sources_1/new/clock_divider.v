module clock_divider #(
    parameter DIVIDER = 4
)(
    input wire clk,
    input wire rst_n,
    output reg slow_clk
);

    reg [15:0] count;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            count <= 0;
            slow_clk <= 0;
        end
        else begin
            if (count == DIVIDER-1) begin
                count <= 0;
                slow_clk <= ~slow_clk;
            end
            else begin
                count <= count + 1;
            end
        end
    end

endmodule