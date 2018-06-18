//Dickens Leung
//EECE 643

module sic_tb;

	reg x1, x2, rst;
	wire z;

	sic UUT (.x1(x1), .x2(x2), .rst(rst), .z(z));

	initial begin

		//start in state 0
		//First test 00 -> 01 -> 11
		//Output should be z = 0
		rst = 0; x1 = 0; x2 = 0; 
		#10;
		rst = 1; x1 = 0; x2 = 1; 
		#10;
		x1 = 1; x2 = 1;
		#10;

		//Second test 00 -> 01 -> 11 -> 01 -> 11
		//Output should be z = 1
		x1 = 1; x2 = 1;
		#10;
		x1 = 0; x2 = 1;
		#10;
		x1 = 1; x2 = 1;
		#10;

		//Third test 00 -> 01 -> 11 -> 10 -> 11
		//Output should be z = 0
		rst = 0; x1 = 0; x2 = 0;
		#10;
		rst = 1; x1 = 0; x2 = 1; 
		#10;
		x1 = 1; x2 = 1;
		#10;
		x1 = 1; x2 = 0;
		#10;
		x1 = 1; x2 = 1;
		#10;

		//Fourth test 00 -> 10 -> 11
		//Output should be z = 1
		rst = 0; x1 = 0; x2 = 0;
		#10;
		rst = 1; x1 = 1; x2 = 0; 
		#10;
		x1 = 1; x2 = 1;
		#10;

		//Fifth test 00 -> 10 -> 11 -> 01 -> 11
		//Output should be z = 1
		x1 = 1; x2 = 1;
		#10;
		x1 = 0; x2 = 1;
		#10;
		x1 = 1; x2 = 1;
		#10;

		//Sixth test 00 -> 10 -> 11 -> 10 -> 11
		//Output should be z = 0
		rst = 0; x1 = 0; x2 = 0;
		#10;
		rst = 1; x1 = 1; x2 = 0; 
		#10;
		x1 = 1; x2 = 1;
		#10;
		x1 = 1; x2 = 0;
		#10;
		x1 = 1; x2 = 1;
		#10;

	end 
endmodule 