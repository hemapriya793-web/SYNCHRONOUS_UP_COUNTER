module SHIFT_REGISTER (
    input  wire clk,     // clock input
    input  wire rst,     // synchronous reset
    input  wire serial_in, // serial data input
    output reg  [2:0] q   // 3-bit register output
);

always @(posedge clk) begin
    if (rst)
        q <= 3'b000;          // reset all bits
    else
        q <= {q[1:0], serial_in}; // shift left
end

endmodule
