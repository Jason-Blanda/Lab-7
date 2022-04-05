module PC_ROM_ID(reset, clock, RD, RS1, RS2, IMM);

	input reset, clock;
	output [4:0] RD, RS1, RS2;
	output [11:0] IMM;
	wire [31:0] PC_O;
	wire [31:0] R_O, PC_O4;
	
	PC UUT_PC (reset, clock, PC_O4, PC_O);
	Adder4 UUT_Adder4 (reset, clock, PC_O, PC_O4);
	
	ROM UUT_ROM(R_O, clock, PC_O);
	IR UUT1_PC (R_O, RD, RS1, RS2, IMM);

	endmodule
	
