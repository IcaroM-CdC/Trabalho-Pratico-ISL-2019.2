`include "ModuloDisp.v"

module Simulacao ();

    // registradores(reg) para sinal de entrada e saidas

    reg TOM;
    reg [2:0] nota;
    wire [6:0] Saida;

    // associa as entradas no modulo "module" às entradas neste arquivo principal

    ModuloDisp Display1 (.TOM_module(TOM), .NOTAS(nota), .SAIDA(Saida)); 

    // os comandos abaixo são responsaveis por alternar entre 1's e 0's em um intervalo #2 de tempo

    initial begin
    
        $dumpfile("SIM.vcd");
        $dumpvars(0, Simulacao);
        $monitor("%b%b, saida = %b", TOM, nota, Saida);
        
        // Definindo os dados das entradas automaticamente

            TOM = b'0; nota = 3'b000;
        #2; TOM = b'0; nota = 3'b001;   
        #2; TOM = b'0; nota = 3'b010;     
        #2; TOM = b'0; nota = 3'b011;        
        #2; TOM = b'0; nota = 3'b100;    
        #2; TOM = b'0; nota = 3'b101;     
        #2; TOM = b'0; nota = 3'b110;      
        #2; TOM = b'0; nota = 3'b111;      
        #2; TOM = b'1; nota = 3'b000;      
        #2; TOM = b'1; nota = 3'b001;      
        #2; TOM = b'1; nota = 3'b010;           
        #2; TOM = b'1; nota = 3'b011;         
        #2; TOM = b'1; nota = 3'b100;        
        #2; TOM = b'1; nota = 3'b101;
        #2; TOM = b'1; nota = 3'b110;
        #2; TOM = b'1; nota = 3'b111;
        #2;
    
        
        $finish;
        
    end

endmodule