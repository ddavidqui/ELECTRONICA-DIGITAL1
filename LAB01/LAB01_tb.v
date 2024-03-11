`include "LAB01.v"
`timescale 1ps/1ps

module LAB01_tb();

reg A_tb;
reg B_tb;
reg Ci_tb;

wire S_;
wire Co_;

LAB01 uut(
    .A(A_tb),
    .B(B_tb),
    .Ci(Ci_tb),
    .S(S_),
    .Co(Co_)
);

initial begin
A_tb = 0;
B_tb = 0;
Ci_tb = 0;
#100;
A_tb = 1;
B_tb = 0;
Ci_tb = 1;
#100;
end

initial begin: TEST_CASE
    $dumpfile("LAB01.vcd");
    $dumpvars(-1,uut);
    #600 $finish;
end


endmodule
