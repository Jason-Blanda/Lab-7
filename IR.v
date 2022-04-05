module IR(in, rd, rs1, rs2, imm);

output [4:0] rd, rs1, rs2, imm;
input [31:0] in;

assign rd = in[11:7];
assign rs1 = in[19:15];
assign rs2 = in[6:0];
assign imm = in[31:20];

endmodule
