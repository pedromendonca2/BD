/* Retorne uma relação com todas as revendedoras que não realizaram nenhum negócio (tabela negocios). Essa
relação deve possuir todas as colunas da tabela revendedoras. */

select r.*
from revendedoras as r
left join negocios as n on r.cgc = n.cgc
where n.cgc is null