module barrel_tb;

	reg[31:0] a;
	reg[4:0] shift;
	reg rot;
	wire[31:0] out;
	reg clk;

	//#18
	barrelshift bs(a , shift , rot , out , clk);

	initial begin
		
		clk = 0;
	
	end

	always begin

		#1
		clk = ~clk;

	end

	initial begin
		
		clk = 1'b1;
		a = 32'b00000000111111110000000011111111;
		rot = 1'b0;
		shift = 5'b00100;
		
		#2
		
		a = 32'b11110011111111110000000011111111;
		rot = 1'b1;
		shift = 5'b00100;
		
		/*#2
		
		a = 32'b00000000111111110000000011111111;
		rot = 1'b0;
		shift = 5'b00100;
		
		#2
		
		a = 32'b11110000111111110000000011111111;
		rot = 1'b1;
		shift = 5'b00100;
		
		#2
		
		a = 32'b00000000111111110000000011111111;
		rot = 1'b0;
		shift = 5'b00100;
		
		#2
		
		a = 32'b11110000111111110000000011111111;
		rot = 1'b1;
		shift = 5'b00100;
		
		#2
		
		a = 32'b00000000111111110000000011111111;
		rot = 1'b0;
		shift = 5'b00100;
		
		#2
		
		a = 32'b11110000111111110000000011111111;
		rot = 1'b1;
		shift = 5'b00100;*/

	end

	always begin

		#48
		$finish;

	end

	initial begin

		$monitor($time , " , a = %b , shift = %b , rotate = %b , output = %b" , a , shift , rot , out);

	end

endmodule // barrel_tb