`include "alu_function.v"
module tb;
reg [7:0] a,b;
reg [2:0] sel;//ip sel which used to sel operation to perfom by alu
wire [7:0] y;
integer i;
alu_function al1(a,b,sel,y);
 	
	initial begin
		 for(i = 0 ; i < 5 ; i = i+1)begin
			a = $urandom_range(10,50);
				b = $urandom_range(51,80);
			sel = i;
			#5;
			$display("a=%0b,b=%0b,sel=%0b,y=%0b",a,b,sel,y);
		 end
		 end
endmodule
