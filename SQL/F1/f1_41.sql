/* Escreva uma consulta para obter o(s) nome(s) completo(s) do(s) piloto(s) (colunas forename e surname da tabela
drivers separadas por um ' ') mais velho(s) a vencer(em) um campeonato de Fórmula 1; ou seja, a soma das suas
pontuações nas corridas realizadas em um ano foi a maior daquele ano. A coluna dob da tabela drivers define a data
de nascimento do piloto (tipo cadeia de caracteres no formato 'YYYY-MM-DD'). A coluna points da tabela
results armazena a quantidade de pontos ganhos por um piloto em uma dada corrida e a coluna year da tabela
races indica o ano de realização da corrida. As colunas da tabela de saída devem se chamar Piloto, Idade e
Temporada. */

with Campeoes as (
    select concat(forename, ' ', surname) as Piloto, ra.year - year(date(d.dob)) as Idade, ra.year as Temporada
    from drivers as d
    join results as re on re.driverId = d.driverId
    join races as ra on ra.raceId = re.raceId
    group by ra.year, d.driverId, forename, surname, d.dob
    having sum(re.points) >= all (
        select sum(re2.points) 
        from results as re2 
        join races as ra2 on re2.raceId = ra2.raceId 
        where ra2.year = ra.year 
        group by re2.driverId
    )
)
select Piloto, Idade, Temporada
from Campeoes
where Idade >= all (select Idade from Campeoes)
