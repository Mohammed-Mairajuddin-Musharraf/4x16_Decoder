module tb_decoder4x16_w_clk ;
  reg clk ;
  reg [3:0] inp ; wire [0:15] outp ;
  decoder4x16_w_clk dut ( clk, inp, outp ) ;
  always #10 clk=~clk ;
  initial begin $dumpvars() ; clk=0; inp=0 ;/* rst=0 ; */ end 
  initial begin
//    @(negedge clk) ; #1 rst=1 ; @(negedge clk) ;  @(negedge clk) ; #1 rst=0 ;
    repeat (2**4) begin @(negedge clk) ; inp <= inp+1 ;  end
    #100 $finish ;
  end
endmodule

