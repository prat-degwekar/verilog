module pfa16_tb;
	reg [31:0] a , b;
	reg cin;
	wire [31:0] s;
	wire cout;

	pfa32 calc(a , b , cin , s , cout);

	initial begin

	a = 32'b11001100110011001100110011001100;
	b = 32'b00110011001100110011001100110011;
	cin = 1'b1;

	end

	initial begin

	$monitor("time = " , $time , "a = %db , b = %b , cin = %b , sum = %b , cout = %b" , a , b , cin , s , cout);

	end


endmodule