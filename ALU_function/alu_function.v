//fr nor only + , -  u implement fr /,*,lftshft,etc
module alu_function(a,b,sel,y);
parameter ADD 	   	= 3'b000;
parameter SUB		 = 3'b001;
//parameter MUL		 = 3'b010;
//parameter DIV		 = 3'b011;
//parameter MODULS	 = 3'b100;
//parameter LFTSHFT	 = 3'b101;
//parameter RYTSHIT	 = 3'b110;
//parameter PWR		 = 3'b111;

input [7:0] a,b;
input [2:0] sel;//ip sel which used to sel operation to perfom by alu
output reg [7:0] y;
integer i;

//function declaration has to done outside proicedural block
function reg[7:0] alu_fun(input[7:0] a,b, input[2:0] sel);
 	begin
		case(sel)
			3'b000:begin //alu_fnctin1st case is add
				alu_fun = a + b;
			end
			3'b001:begin// 2nd case is sub
				alu_fun = a-b;
			end
			//do remaing case items
					//3'b010:begin
					//alu_function = a[3:0] * b[3:0];
					//end// as ot of mul is 8 bit *8bit is 16 and our y is 16 take 4*4
		endcase
	end
 endfunction


always@(*)begin
y = alu_fun(a,b,sel);
end
endmodule
