module m(q,clk);
input clk;
output reg q = 0;
reg [15:0] count =16'b0;
//count = 0;
always@(posedge clk)begin
 count <= count +16'b1 ;
 if(count == 25000)begin
  count<=16'b1;
  q <= ~q;
  end
 end

endmodule