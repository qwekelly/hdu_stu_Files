module SHUMA7SG (A,LED);
	input [3:0] A;
	output [6:0] LED;
	reg [6:0] LED;
	always @(A)
	case(A)
	4'B0000 : LED <= 7'B0000000;
	4'B0001 : LED <= 7'B1000000;
	4'B0010 : LED <= 7'B0100000;
	4'B0011 : LED <= 7'B0010000;
	4'B0100 : LED <= 7'B0001000;
	4'B0101 : LED <= 7'B0000100;
	4'B0110 : LED <= 7'B0000010;
	4'B0111 : LED <= 7'B0000001;
	4'B1000 : LED <= 7'B1111111;
	4'B1001 : LED <= 7'B1111110;
	4'B1010 : LED <= 7'B1111101;
	4'B1011 : LED <= 7'B1111011;
	4'B1100 : LED <= 7'B0110111;
	4'B1101 : LED <= 7'B1101111;
	4'B1110 : LED <= 7'B1011111;
	4'B1111 : LED <= 7'B0111111;
	default : LED <= 7'B1111111;
	endcase
endmodule