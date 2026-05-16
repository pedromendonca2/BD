/* Escreva uma consulta para obter o(s) nome(s) completo(s) do(s) piloto(s) (colunas forename e surname da tabela
drivers separadas por um ' ') mais jovem(s) a participar(em) de uma corrida de Fórmula 1. A coluna dob da
tabela drivers define a data de nascimento do piloto (tipo cadeia de caracteres no formato 'YYYY-MM-DD'),
enquanto a coluna year indica o ano de realização de uma corrida (tabela races). As colunas da tabela de saída
devem ter os nomes Piloto, Idade (em anos), respectivamente. O resultado não deve conter ocorrências duplicadas.

Nota2: Use a função date() para converter um argumento do tipo cadeia de caracteres (string) no tipo data, e a
função year() no RelaX e MySQL ou date_part('year', ) no PostgreSQL para extrair o número inteiro
correspondente ao ano (YYYY) de um argumento do tipo data. */

select distinct CONCAT(forename, ' ', surname) as Piloto, ra.year - year(date(d.dob)) as Idade
from drivers as d
join results as re on re.driverId = d.driverId
join races as ra on ra.raceId = re.raceId 
where (ra.year - year(date(d.dob))) = (
  select min(r2.year - year(date(d2.dob)))
  from drivers as d2
  join results as re2 on re2.driverId = d2.driverId
  join races as r2 on r2.raceId = re2.raceId
)