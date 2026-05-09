/* Consulte a população total de todas as cidades da tabela CITY onde o distrito é 'California'. */

select sum(population) as soma
from CITY
where district = 'California'