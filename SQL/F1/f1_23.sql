/* Escreva uma consulta para obter o(s) nome(s) da(s) equipe(s) (coluna name da tabela constructors) que
pontuaram em todas as corridas da temporada de 2012 (coluna year da tabela races). A coluna points da tabela
results armazena a quantidade de pontos ganhos por um piloto de uma dada equipe em uma corrida e a coluna
year da tabela races indica o ano de realização das corridas. A coluna da tabela de saída deve se chamar Equipe.
OBS: Equipes podem ter mais de um piloto por corrida e, nesses casos, recebem cumulativamente as suas pontuações. */

select c.name as Equipe
from constructors as c
join results as re on c.constructorId = re.constructorId
join races as ra on ra.raceId = re.raceId
where ra.year = 2012 and re.points > 0
group by c.name -- ele conta por Equipe
having count(distinct ra.raceId) = (select count(*) from races where year = 2012) --conta as corridas que ele correu em 2012 e pontuou e iguala com o número de corridas em 2012