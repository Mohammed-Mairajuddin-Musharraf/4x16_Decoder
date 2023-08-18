module decoder4x16_w_clk (input clk, input wire[3:0] in, output reg[0:15] out);
    reg [3:0] inp_reg ; reg [0:15] outp_reg ;
    always @( posedge clk ) begin inp_reg <= in ; out <= outp_reg ; end
    always @( * ) begin
      outp_reg <= 16'b0 ; outp_reg[inp_reg] <= 1'b1 ; 
    end
//    assign out = !in;
endmodule
