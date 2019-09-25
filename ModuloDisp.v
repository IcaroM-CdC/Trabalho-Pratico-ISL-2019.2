module ModuloDisp(TOM_module, NOTAS, Saida_A, Saida_B, Saida_C, Saida_D, Saida_E, Saida_F, Saida_G);

    input wire TOM_module;
    input wire [2:0] NOTAS;
    output wire Saida_A, Saida_B, Saida_C, Saida_D, Saida_E, Saida_F, Saida_G;

    assign Saida_A = ~(NOTAS[0] & ~NOTAS[2]) | (NOTAS[2] & ~TOM) | (NOTAS[1] & ~TOM);
    assign Saida_B = ~(~NOTAS[2] & NOTAS[1] & ~NOTAS[0]) | (~TOM & NOTAS[2] & ~NOTAS[1]) | (TOM & ~NOTAS[1] & NOTAS[0]) | (TOM & NOTAS[2] & NOTAS[0]);
    assign Saida_C = ~(NOTAS[0] & ~TOM) | (~NOTAS[2] & ~NOTAS[1] & NOTAS[0]) | (NOTAS[2] & ~NOTAS[1] & ~NOTAS[0]);
    assign Saida_D = ~(NOTAS[1] & TOM) | (NOTAS[2] & TOM) | (NOTAS[2] & NOTAS[1] & ~NOTAS[0]);
    assign Saida_E = ~(NOTAS[1] & NOTAS[0]) | (~TOM & ~NOTAS[2] & NOTAS[1]) | (NOTAS[2] & ~NOTAS[1] & ~NOTAS[0]) | (TOM & NOTAS[2] & ~NOTAS[1]);
    assign Saida_F = ~(~NOTAS[2] & NOTAS[1] & ~NOTAS[0]) | (NOTAS[2] & NOTAS[1] & TOM) | (NOTAS[2] & NOTAS[1] & NOTAS[0]) | (NOTAS[2] & NOTAS[0] & NOTAS[1]) | (NOTAS[2] & ~NOTAS[1] & ~NOTAS[0] & ~TOM) | (~NOTAS[2] & ~NOTAS[1] & NOTAS[0] & ~TOM);
    assign Saida_G = ~(~NOTAS[2] & NOTAS[0]) | (NOTAS[1] & ~NOTAS[0]) | (TOM & NOTAS[2] & ~NOTAS[1]); 

endmodule

