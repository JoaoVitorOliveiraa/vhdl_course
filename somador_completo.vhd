-- Exemplo de um Somador Completo
-- Autor: João Vitor dos Santos Oliveira
-- Data: 01/03/2025

ENTITY somador_completo IS 

PORT(
    A, B    : IN BIT;   -- Entradas
    TE      : IN BIT;   -- Transporte de Entrada
    S      : OUT BIT;   -- Soma
    TS      : OUT BIT   -- Transporte de Saída
);

END ENTITY somador_completo;


ARCHITECTURE main OF somador_completo IS

BEGIN 
    S <= (A XOR B) XOR TE;
    TS <= (A AND B) OR (A AND TE) OR (B AND TE);

END ARCHITECTURE main;