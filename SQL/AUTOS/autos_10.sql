/* Retorne uma relação com todos os consumidores que não realizaram nenhum negócio (tabela negocios). Essa
relação deve possuir todas as colunas da tabela consumidores. */

select c.*
from consumidores as c
left join negocios as n on c.cpf = n.cpf
where n.cpf is null