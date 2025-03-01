-- Estrutura dos códigos em VHDL
-- Autor: João Vitor dos Santos Oliveira
-- Data: 01/03/2025

-- Entidade
ENTITY estrutura_vhdl IS

    GENERIC(
        n : TIPO := valor
    );

    PORT(
        a, b    : IN;       -- Tipo 1: Entradas
        x, y    : OUT;      -- Tipo 2: Saídas
        w       : BUFFER;   -- Tipo 3: Saída
        z1, z2  : INOUT;    -- Tipo 4: Entrada/Saída
    );

END ENTITY estrutura_vhdl;


-- Arquitetura
ARCHITECTURE nome_arc of estrutura_vhdl is

    -- Declarações: -- Sinais
    -- Constantes
    -- Componentes
    -- Subprogramas
    -- Novos tipos
    -- Outros

BEGIN
    -- Comandos concorrentes

END ARCHITECTURE nome_arc;