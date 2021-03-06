module CODE3 (DIN, KEY);
	input [7:0] DIN ;
	output [3:0] KEY;
	reg [3:0] KEY;
	always @ (DIN)
	case (DIN)
	8'b11111110 : KEY<=4'b0001;
	8'b11111101 : KEY<=4'b0010;
	8'b11111011 : KEY<=4'b0011;
	8'b11110111 : KEY<=4'b0100;
	8'b11101111 : KEY<=4'b0101;
	8'b11011111 : KEY<=4'b0110;
	8'b10111111 : KEY<=4'b0111;
	8'b01111111 : KEY<=4'b1000;
	8'b00111111 : KEY<=4'b1001;
	8'b11111111 : KEY<=4'b0000;
	default :KEY<=4'b0000;
	endcase
endmodule 