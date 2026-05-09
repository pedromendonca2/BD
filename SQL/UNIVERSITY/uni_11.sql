/* Escreva uma consulta que retorna o código do(s) professor(es) (coluna ID da tabela instructor), seu nome (coluna
name) e número de seções distintas que ele(s)/ela(s) ministrou(ministraram) (com base nas tabelas teaches e
section). Mostre o número de seções como 0 para professores(as) que não ministraram qualquer seção. As colunas
da tabela de saída devem se chamar Codigo, Professor e Secoes, respectivamente. */

SELECT i.ID AS Codigo, i.name AS Professor, COALESCE(t1.total_secoes, 0) AS Secoes
FROM instructor AS i
LEFT JOIN (
  SELECT ID, COUNT(*) AS total_secoes
  FROM (
    SELECT DISTINCT ID, sec_id, semester, year
    FROM teaches
  ) AS t2
  GROUP BY ID
) AS t1 ON i.ID = t1.ID
