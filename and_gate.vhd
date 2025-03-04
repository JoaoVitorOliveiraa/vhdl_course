-- Exemplo de uma porta AND
-- Autor: João Vitor dos Santos Oliveira
-- Data: 01/03/2025

-- Estrutura de um código VHDL:

-- 1: Bibliotecas e pacotes
-- Neste momento, não é necessário chamar nenhuma biblioteca.
-- Se nenhum pacote for chamado, serão utilizados os pacotes padrões do VHDL.

-- 2: Entidade
-- É obrigatório que o nome da entidade seja o nome do arquivo, para evitar problemas na compilação.
entity and_gate is
    
    -- Adicionando interfaces da nossa porta com o mundo externo, através da estrutura "port".
    port(
        
        -- Entradas: "a" e "b".
        -- Modo: "in" (modo de entrada).
        -- Tipo: "bit".
        a, b: in bit;
        
        -- Saída: "z".
        -- Modo: "out" (modo de saída).
        -- Tipo: "bit".
        z: out bit
        
        );
        
end entity and_gate;
        
        
-- 3: Arquitetura
-- Onde o comportamento do nosso sistema digital vai ser descrito.
architecture main of and_gate is
begin

    z <= a and b;

end architecture main;

-- 4: Configuração.
-- Neste momento, não é necessário realizar nenhuma configuração.