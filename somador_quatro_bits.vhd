-- Exemplo de um Somador de Quatro Bits.
-- Autor: João Vitor dos Santos Oliveira
-- Data: 01/03/2025

entity somador_quatro_bits is

    port(
        a, b: in integer range 0 to 15;
        z: out integer range 0 to 15
    );

end entity somador_quatro_bits;

architecture main of somador_quatro_bits is
begin

    z <= a + b;

end architecture main;