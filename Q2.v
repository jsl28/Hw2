module Priority_Encoder(o0,o1,o2,o3,o4,o5,o6,o7,a,b,c);
input o0,o1,o2,o3,o4,o5,o6,o7;
output wire a,b,c;
//reg i0=0,i1=0,i2=0;
assign a = ((~o0)&o1)|((~o0)&(~o2)&o3)|((~o0)&(~o2)&(~o4)&o5)|((~o0)&(~o2)&(~o4)&(~o6)&o7);
//assign i1 = 0;
assign b = (o2&(~o1)&(~o0))|(o3&(~o2)&(~o1)&(~o0))|(o6&(~o5)&(~o4)&(~o3)&(~o2)&(~o1)&(~o0))|(o7&(~o6)&(~o5)&(~o4)&(~o3)&(~o2)&(~o1)&(~o0));
//assign i2 = 0;
assign c = (o4&(~o3)&(~o2)&(~o1)&(~o0))|(o5&(~o4)&(~o3)&(~o2)&(~o1)&(~o0))|(o6&(~o5)&(~o4)&(~o3)&(~o2)&(~o1)&(~o0))|(o7&(~o6)&(~o5)&(~o4)&(~o3)&(~o2)&(~o1)&(~o0));
//always@(*) begin
// case({o7,o6,o5,o4,o3,o2,o1,o0})
  //8'bzzzzzzz1: {i2,i1,i0} = 3'b000;
  //8'bzzzzzz1z: {i2,i1,i0} = 3'b001;
  //8'bzzzzz1zz: {i2,i1,i0} = 3'b010;
  //8'bzzzz1zzz: {i2,i1,i0} = 3'b011;
  //8'bzzz1zzzz: {i2,i1,i0} = 3'b100;
  //8'bzz1zzzzz: {i2,i1,i0} = 3'b101;
  //8'bz1zzzzzz: {i2,i1,i0} = 3'b110;
  //8'b1zzzzzzz: {i2,i1,i0} = 3'b111;
 //endcase
//end
//assign c = i2;
//assign b = i1;
//assign a = i0;
endmodule