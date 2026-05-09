/* Consulte quantos negócios (tabela negocios) foram realizados */

select count(n.codigo) as c
from negocios as n, automoveis as a
where n.codigo = a.codigo
