`include "./Q4.v"

module q4_top;
reg clk;
wire[3:0] q;

m uut(q,clk);

always @(q) begin
 $display("$time=%d, output=%b",$time,q);
 end
initial begin
 forever begin
  clk=1;
  #5
  clk=0;
  #5
  clk=1;
  end
 end
 
initial begin
 #3100000 
 $finish;
end

endmodule