`include "Compuertas_.v"
`timescale 1ps/1ps
module compuertastb();

reg A_tb;
reg B_tb;
reg C_tb;

wire S1_tb;
wire S2_tb;

Compuertas_ uut(A_tb,B_tb,C_tb,S1_tb,S2_tb);

initial begin
A_tb = 0;
B_tb = 0;
C_tb = 0;
#100;
A_tb = 1;
B_tb = 0;
C_tb = 1;
#100;
end

initial begin: TEST_CASE
    $dumpfile("compuertas.vcd");
    $dumpvars(-1,uut);
    #600 $finish;
end

endmodule