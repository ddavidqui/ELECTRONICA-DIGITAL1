`include "LAB01.v" // Se llama el .v donde va la logica
`timescale 1ps/1ps 

module LAB01_tb(); //EL modulo lo llamas como quieras aca lo llame igual que el archivo

reg A_tb; // Entradas de tu logica del archivo anterior
reg B_tb; // mi segunda entrada
reg Ci_tb; // Tercera entrada

wire S_; //ESTAN SON LAS SALIDAS
wire Co_; //SALIDAS

//AQUI LLAMAMOS LAS VARIBALES CON LA LOGICA ANTERIAR ASI PRIMERO LA DEL LAB.v antes un punto .ENTRADA(ENTRADA TESTBECH)-- ENTRADA DEL TEST
//LA IDEA ES ENLAZARLO

LAB01 uut(
    .A(A_tb),
    .B(B_tb),
    .Ci(Ci_tb),
    .S(S_),
    .Co(Co_)
);
// AQUI LE DAMOS LOS VALORES QUE QUEREMOS
initial begin
A_tb = 0;
B_tb = 0;
Ci_tb = 0;
#100;
A_tb = 1;
B_tb = 0;V EARA PODER CREAR EL VCD QUE ES LA SIMULACIÓN

initial begin: TEST_CASE
    $dumpfile("LAB01.vcd");
    $dumpvars(-1,uut);
    #600 $finish;
end


endmodule
