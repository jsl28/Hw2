`include "./Q2.v"

module top;
reg o0,o1,o2,o3,o4,o5,o6,o7;
wire a,b,c;
Priority_Encoder uut(o0,o1,o2,o3,o4,o5,o6,o7,a,b,c);

//always@(a or b or c)begin
 //$display("%d,%d,%d,%d,%d,%d,%d,%d,\n%d,%d,%d",o0,o1,o2,o3,o4,o5,o6,o7,a,b,c);
 //end
initial begin
 $monitor("%d,%d,%d,%d,%d,%d,%d,%d,\n%d,%d,%d",o0,o1,o2,o3,o4,o5,o6,o7,a,b,c);
 o0=0; o1=0; o2=0;o3=1;o4=0;o5=1;o6=0;o7=1;
 #1
 o0=0; o1=0; o2=1;o3=0;o4=1;o5=0;o6=1;o7=0;
 #1
 o0=0; o1=0; o2=0;o3=0;o4=1;o5=0;o6=0;o7=1;
 #1
 $finish;
 end

endmodule