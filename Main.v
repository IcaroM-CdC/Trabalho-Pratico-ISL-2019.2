`include "ModuloDisp.v"

module Simulacao();

    reg TOM, A, B, C, Clock;
    wire Saida_A, Saida_B, Saida_C, Saida_D, Saida_E, Saida_F, Saida_G;

// associa as entradas no modulo "module" às entradas neste arquivo principal

    ModuloDisp Display1(.TOM_module(TOM),.NOTAS[2](A),.NOTAS[1](B),.NOTAS[0](C)); 

// os comandos abaixo são responsaveis por alternar entre 1's e 0's em um intervalo #2 de tempo

    initial begin;
        
        Clock = 0;  // definindo o clock como 0 inicialmente

         TOM = 0; A = 0; B = 0; C = 0;
    #2;  TOM = 0; A = 0; B = 0; C = 1;
    #2;  TOM = 0; A = 0; B = 1; C = 0;
    #2;  TOM = 0; A = 0; B = 1; C = 1;
    #2;  TOM = 0; A = 1; B = 0; C = 0;
    #2;  TOM = 0; A = 1; B = 0; C = 1;
    #2;  TOM = 0; A = 1; B = 1; C = 0;
    #2;  TOM = 0; A = 1; B = 1; C = 1;
    #2;  TOM = 1; A = 0; B = 0; C = 0;
    #2;  TOM = 1; A = 0; B = 0; C = 1;
    #2;  TOM = 1; A = 0; B = 1; C = 0;
    #2;  TOM = 1; A = 0; B = 1; C = 1;
    #2;  TOM = 1; A = 1; B = 0; C = 0;
    #2;  TOM = 1; A = 1; B = 0; C = 1;
    #2;  TOM = 1; A = 1; B = 1; C = 0;
    #2;  TOM = 1; A = 1; B = 1; C = 1;
    
    end

    always begin

    #2;  Clock = ~Clock;    // negando o clock a cada intervalo de tempo #2 ele sempre variará entre 0 e 1

    end


endmodule

