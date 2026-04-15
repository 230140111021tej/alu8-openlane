module alu8 (
    input  [7:0] a,
    input  [7:0] b,
    input  [2:0] op,
    output reg [7:0] y,
    output reg carry,
    output reg zero
);
    reg [8:0] tmp;

    always @(*) begin
        y = 8'h00;
        carry = 1'b0;
        tmp = 9'h000;

        case (op)
            3'b000: begin tmp = a + b; y = tmp[7:0]; carry = tmp[8]; end
            3'b001: begin tmp = a - b; y = tmp[7:0]; carry = tmp[8]; end
            3'b010: begin y = a & b; end
            3'b011: begin y = a | b; end
            3'b100: begin y = a ^ b; end
            3'b101: begin y = a << 1; carry = a[7]; end
            3'b110: begin y = a >> 1; carry = a[0]; end
            default: begin y = 8'h00; carry = 1'b0; end
        endcase

        zero = (y == 8'h00);
    end
endmodule
