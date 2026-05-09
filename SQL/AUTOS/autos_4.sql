/* Consulte o codigo e ano, respectivamente, dos automóveis (tabela automoveis) que são do mesmo fabricante
e têm o mesmo modelo, mas que a diferença entre o preço de tabela (coluna preco_tabela) do primeiro e do
segundo é de mais de 1000 (em outras palavras, o preço do primeiro menos o preço do segundo é maior que 1000). Os
nomes das colunas da relação de saída devem ser, respectivamente, codigo_auto1, ano_auto1, codigo_auto2,
ano_auto2. */

select a1.codigo as codigo_auto1, a1.ano as ano_auto1, a2.codigo as codigo_auto2, a2.ano as ano_auto2
from automoveis as a1, automoveis as a2
where a1.fabricante = a2.fabricante and a1.modelo = a2.modelo and a1.preco_tabela - a2.preco_tabela > 1000