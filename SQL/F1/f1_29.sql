/* Escreva uma consulta para obter a quantidade de pilotos (tabela drivers) que concluíram o 
Grande Prêmio de Mônaco (coluna name da tabela gps) ao longo de cada temporada (coluna year da tabela races). 
Considera-se que um resultado corresponde a uma corrida concluída quando o respectivo status 
(coluna status da tabela status) é 'Finished' ou corresponde a um texto do tipo
'+N Laps' (por exemplo, '+1 Lap', '+2 Laps'), em que N representa um número inteiro positivo. Exiba apenas
as temporadas em que o Grande Prêmio de Mônaco foi realizado (ou seja, não inclua anos sem corrida). 
OBS: Um piloto também pode ter mais de um resultado em uma mesma corrida, portanto, a contagem deve considerar pilotos
distintos. As colunas da tabela de saída devem ter os nomes Temporada e Qtde_Pilotos, respectivamente.

Nota: Use o operador LIKE para filtrar valores textuais com padrões usando % (qualquer sequência de caracteres) e _
(um único caractere, seja qual for). Por exemplo, na tabela de status de resultados de corridas de F1, status LIKE
'%ngine%' encontra ocorrências como 'Engine' ou 'Engine fire', enquanto status LIKE 'C_%'
encontra termos que começam com a letra 'C' e tenha pelo menos mais como um caractere como 'Collision' ou 'Clutch'. */

select ra.year as Temporada, count(distinct d.driverId) as Qtde_Pilotos
from drivers as d
join results as r on r.driverId = d.driverId
join status as s on s.statusId = r.statusId
join races as ra on ra.raceId = r.raceId
join gps on gps.gpId = ra.gpId
where gps.name = "Monaco Grand Prix" and (s.status = 'Finished' or s.status LIKE '+%')
group by ra.year
-- having count(distinct ra.raceId) = (select count(*) from races join gps on gps.gpId = races.gpId where gps.name = "Monaco Grand Prix")