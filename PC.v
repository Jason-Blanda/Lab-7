module PC(reset, clock, PC_IN, PC_OUT);
input reset, clock;
input [31:0] PC_IN;
output reg [31:0] PC_OUT;

always  @ (posedge clock) begin
if (reset)
PC_OUT = 32'd0;
else
PC_OUT = PC_IN;
end
endmodule
