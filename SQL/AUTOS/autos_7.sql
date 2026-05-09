/* Retorne uma relação com o nome e sobrenome dos consumidores, o nome da revendedora, o fabricante
e modelo dos automóveis (tabela automoveis), a data e preco do negócio (tabela negocios), para todos os
negócios realizados (ou seja, presentes na referida tabela). Os nomes das colunas da relação de saída devem ser,
respectivamente, nome_c, sobrenome_c, nome_r, fabricante, modelo, data e preco. */

select c.nome as nome_c, c.sobrenome as sobrenome_c, r.nome as nome_r, a.fabricante, a.modelo, n.data, n.preco
from consumidores as c, revendedoras as r, automoveis as a, negocios as n
where n.cpf = c.cpf and n.codigo = a.codigo and n.cgc = r.cgc and n.ano = a.ano