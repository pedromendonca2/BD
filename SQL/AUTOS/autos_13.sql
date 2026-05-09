/* Retorne uma relação com CGC e nome das revendedoras, e o CPF dos consumidores que participaram de
negócios, considerando todas as revendedoras e negócios existentes (ou seja, tendo as revendedoras participado ou
não de um negócio e um negócio incluindo ou não uma revendedora). Se uma revendedora não participou de nenhum
negócio, o CPF do consumidor deve aparecer como nulo (NULL), e se um negócio não inclui participação de nenhuma
revendedora, o CGC e nome devem aparecer como nulos. */

select r.cgc, r.nome, c.cpf
from revendedoras as r
full outer join negocios as n on r.cgc = n.cgc
left join consumidores as c on n.cpf = c.cpf  