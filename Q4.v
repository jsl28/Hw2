module m(q,clk);
input clk;
output reg [3:0] q = 4'b1000;
//reg temp[3:0] = 4'b1000;
reg temp;
reg [15:0] count =16'b0;
//count = 0;
always@(posedge clk)begin
 count <= count +16'b1 ;
 if(count == 25000)begin
  count <=16'b1;
  //q[0]  <= temp[1];//q[1]
  //q[1] <= temp[2];//q[2];//
  //q[2] <= temp[3];//q[3];//
  //q[3] <= temp[0];//q[0];//
  //temp = q[0];
  //q[0] = q[1];
  //q[1] = q[2];
  //q[2] = q[3];
  //q[3] = temp;
  //temp = q;
  q[3:0] = {q[2:0], q[3]};
  end
 end

endmodule