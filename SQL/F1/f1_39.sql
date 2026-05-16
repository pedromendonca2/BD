/* Escreva uma consulta para obter o(s) nome(s) completo(s) do(s) piloto(s) (colunas forename e surname da tabela
drivers separadas por um ' ') com maior número de vitórias (chegou em primeiro) na história da Fórmula 1. A
coluna grid da tabela results define a posição de largada, enquanto positionOrder a de chegada. As colunas
da tabela de saída devem ter os nomes Piloto e Vitorias, respectivamente. */

select concat(forename, ' ', surname) as Piloto, count(r.resultId) as Vitorias
from drivers as d
join results as r on d.driverId = r.driverId
where positionOrder = 1
group by d.driverId
having count(r.resultId) >= all (select count(r2.resultId) from results as r2 where r2.positionOrder = 1 group by r2.driverId)