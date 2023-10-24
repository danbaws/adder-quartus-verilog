module bin_to_bcd #(
 DIGITS = 6,
 WIDTH = 10
)(
 input [WIDTH-1:0] bin_i,
 output reg [DIGITS-1:0][3:0] bcd_o
);
reg [WIDTH-1:0] tmp;
always @ (*) begin
 integer i;
 tmp = bin_i;
 for(i=0; i<DIGITS; i=i+1) begin
 bcd_o[i] = tmp % 10;
 tmp = tmp / 10;
 end
 
 //zero nedorit
 for(i=DIGITS-1; i>0; i=i-1) begin
 if(bcd_o[i]==0)
 bcd_o[i]=10;
 else
 break;
 end
end
endmodule