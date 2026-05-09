/* Consulte quais são os modelos (coluna modelo) de automóveis (tabela automoveis) da fabricante 'Fiat'. O
resultado não deve conter ocorrências duplicadas. */

select distinct modelo 
from automoveis
where fabricante = 'Fiat'