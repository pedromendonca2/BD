/* Consulte o nome e sobrenome dos consumidores, e o CGC da revendedora, que realizaram algum negócio (tabela
negocios). */

select c.nome, sobrenome, cgc
from consumidores as c, negocios AS n
where c.cpf = n.cpf