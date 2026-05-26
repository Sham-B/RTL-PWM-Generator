`timescale 1ns/1ps

module top_pwm_tb;

    reg clk;
    reg rst_n;
    reg [7:0] duty;
    
    wire pwm_out;

    // DUT
    top_pwm uut (
        .clk(clk),
        .rst_n(rst_n),
        .duty(duty),
        .pwm_out(pwm_out)
    );

    // 100 MHz clock
    always #5 clk = ~clk;

    initial begin

        // initial values
        clk = 0;
        rst_n = 0;
        duty = 0;

        // release reset
        #20;
        rst_n = 1;

        // 25% duty
        #200;
        duty = 8'd64;

        // 50% duty
        #200;
        duty = 8'd128;

        // 75% duty
        #200;
        duty = 8'd192;

        // 0% duty
        #200;
        duty = 8'd0;

        // stop simulation
        #500;
        $finish;
    end
endmodule