/* Retorne uma relação com nome e sobrenome dos consumidores, e o CGC das revendedoras que participaram de
negócios (tabela negocios), incluindo todos os consumidores e negócios existentes (ou seja, tendo os consumidores
participado ou não de um negócio e um negócio incluindo ou não um consumidor). Se um consumidor não participou
de nenhum negócio, o CGC da revendedora deve aparecer como nulo (NULL), e se um negócio não inclui a participação
de nenhum consumidor, o nome e sobrenome devem aparecer como nulos. */

select c.nome, c.sobrenome, n.cgc
from consumidores as c
full outer join negocios as n on c.cpf = n.cpf
left join revendedoras as r on n.cgc = r.cgc