module sic(
	input x1, x2,
	output z
);

wire Y1, Y2;
reg y1, y2;

//predefined states
parameter s0=2'd0, s0=2'd1, s0=2'd2, s0=2'd3;

//assign output and next state
assign Y1 = (x1 & x2) | (x1 & ~x2 & y1);
assign Y2 = (x1 & ~x2) | (x1 & x2 & ~y1 & ~y2) | (x1 & x2 & y1 & y2);
assign z = (x1 & x2 & y1 & ~y2) | (x1 & x2 & ~y1 & y2);

endmodule
