module mux_16x1(
    input [15:0] in,
    input [3:0] sel,
    output y

);
    assign y =in[sel];
endmodule
