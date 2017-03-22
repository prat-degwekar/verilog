module mux(a , b , select , out);		//1 for a , 0 for b
	input a , b , select;
	output out;

	wire out;

	assign out = (select & a) | (!select & b);

endmodule