`include "./Q1_encoder.v"
`include "./Q1_decoder.v"


module encode_decode;
reg i0,i1,i2;//,o0,o1,o2,o3,o4,o5,o6,o7,a,b,c;
wire o0,o1,o2,o3,o4,o5,o6,o7,a,b,c;
decoder3to8 uut(i0,i1,i2,o0,o1,o2,o3,o4,o5,o6,o7);
//always@(o0 or o1 or o2 or o3 or o4 or o5 or o6 or o7)begin
 //$display("%d,%d,%d,\n%d,%d,%d,%d,%d,%d,%d,%d",i0,i1,i2,o0,o1,o2,o3,o4,o5,o6,o7);
 //end
//assign in0 = o0;
//assign in1 = o1;
//assign in2 = o2;
//assign in3 = o3;
//assign in4 = o4;
//assign in5 = o5;
//assign in6 = o6;
//assign in7 = o7;
Encoder uut2(o0,o1,o2,o3,o4,o5,o6,o7,a,b,c);
always@(a or b or c)begin
 $display("%d,%d,%d\n,%d,%d,%d,%d,%d,%d,%d,%d\n,%d,%d,%d\n",i0,i1,i2,o0,o1,o2,o3,o4,o5,o6,o7,a,b,c);
 end
initial begin
 i0=0; i1=0; i2=0;
 #2
 i0=1; i1=0; i2=0;
 #2
 i0=0; i1=1; i2=0;
 #2
 i0=1; i1=1; i2=0;
 #2
 i0=0; i1=0; i2=1;
 #2
 i0=1; i1=0; i2=1;
 #2
 i0=0; i1=1; i2=1;
 #2
 i0=1; i1=1; i2=1;
 end
initial begin
 #20
 $finish;
 end

endmodule