module tb_mux_16x1;

 reg [15:0] in;
   reg [3:0] sel;
    wire y;

mux_16x1 UUT(.in(in),.sel(sel),.y(y));

initial begin
     $dumpfile("mux_out.vcd");
    $dumpvars(0,tb_mux_16x1);

    $monitor($time,"in=%b,sel=%d,out=%b",in,sel,y);
  
      in = 16'b1010_1100_1111_0001;

   #10 sel = 4'd0;  
   #10 sel = 4'd5;  
   #10 sel = 4'd10; 
   #10 sel = 4'd15;

    #10 $finish;

end
endmodule
