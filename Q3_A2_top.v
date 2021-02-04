`include "./Q3_A2.v"

module q3_top;
reg clk;
wire q;

m cc(q,clk);

always @(q) begin
 $display("$time=%d, output=%b",$time,q);
 end
initial begin
 forever begin
  clk=0;
  #5
  clk=1;
  #5
  clk=0;
  end
 end
 
initial begin
 #3100000 
 $finish;
end
    
endmodule

