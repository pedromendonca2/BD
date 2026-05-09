/* Consulte quantos modelos diferentes de automóveis (tabela automoveis) tem a fabricante 'Fiat' */

select count(modelo) as c
from automoveis
where fabricante = 'Fiat'