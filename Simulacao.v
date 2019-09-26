`include "ModuloDisp.v"

module Simulacao ();

// registradores(reg) para sinal de entrada e saidas

    reg TOM, A, B, C;
    wire Saida_A, Saida_B, Saida_C, Saida_D, Saida_E, Saida_F, Saida_G;

// associa as entradas no modulo "module" às entradas neste arquivo principal

    ModuloDisp Display1 (.TOM_module(TOM), .NOTAS[2](A), .NOTAS[1](B), .NOTAS[0](C), .SAIDA[6](Saida_A), .SAIDA[5](Saida_B), .SAIDA[4](Saida_C), .SAIDA[3](Saida_D), .SAIDA[2](Saida_E), .SAIDA[1](Saida_F), .SAIDA[0](Saida_G)); 

// os comandos abaixo são responsaveis por alternar entre 1's e 0's em um intervalo #2 de tempo

    initial begin
    
    $dumpfile("Simulacao.vcd");
    $dumpvars(0, Simulacao);
    $monitor("%b%b%b%b, saida_A = %b saida_B = %b saida_C = %b saida_D = %b saida_E = %b saida_F = %b saida_G = %b", TOM, A, B, C, Saida_A, Saida_B, Saida_C, Saida_D, Saida_E, Saida_F, Saida_G);
        
            TOM = 0; A = 0; B = 0; C = 0;
        #2; TOM = 0; A = 0; B = 0; C = 1;   
        #2; TOM = 0; A = 0; B = 1; C = 0;     
        #2; TOM = 0; A = 0; B = 1; C = 1;        
        #2; TOM = 0; A = 1; B = 0; C = 0;    
        #2; TOM = 0; A = 1; B = 0; C = 1;     
        #2; TOM = 0; A = 1; B = 1; C = 0;     
        #2; TOM = 0; A = 1; B = 1; C = 1;    
        #2; TOM = 1; A = 0; B = 0; C = 0;     
        #2; TOM = 1; A = 0; B = 0; C = 1;     
        #2; TOM = 1; A = 0; B = 1; C = 0;       
        #2; TOM = 1; A = 0; B = 1; C = 1;         
        #2; TOM = 1; A = 1; B = 0; C = 0;        
        #2; TOM = 1; A = 1; B = 0; C = 1;
        #2; TOM = 1; A = 1; B = 1; C = 0;
        #2; TOM = 1; A = 1; B = 1; C = 1;
        #2;
    
        
        $finish;
        
    end

endmodule
