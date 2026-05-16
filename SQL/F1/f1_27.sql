/* Escreva uma consulta para obter o(s) nome(s) completo(s) do(s) piloto(s) (colunas forename e surname da tabela drivers separadas por um ' ') que largaram em último e que chegaram ao pódio 
(3 primeiras posições) em uma mesma corrida. A coluna grid da tabela results define a posição de largada, enquanto positionOrder a de chegada. 
As colunas da tabela de saída devem ter os nomes Piloto, PosLargada e PosChegada, respectivamente. OBS: O número de pilotos no grid de largada pode variar de uma corrida para outra. */

select concat(d.forename, ' ', d.surname) as Piloto, r.grid as PosLargada, r.positionOrder as PosChegada
from drivers as d
join results as r on d.driverId = r.driverId
where r.grid = (select max(r2.grid) from results as r2 where r2.raceId = r.raceId) and (r.positionOrder = 1 or r.positionOrder = 2 or r.positionOrder = 3)