/* Escreva uma consulta para obter o código da(s) disciplina(s) (coluna course_id da tabela course) que é(são) prérequisito(s) 
direto(s) ou indireto(s) (em qualquer nível) da disciplina de nome 'SINAIS E SISTEMAS' (coluna title da tabela course). 
O resultado não deve conter ocorrências duplicadas.
Nota: Use a cláusula WITH RECURSIVE para percorrer a(s) hierarquia(s) ou cadeia(s) de dependência(s) */

WITH RECURSIVE hierarquia AS (
  -- 1. Âncora: Pega os pré-requisitos diretos
  SELECT p.prereq_id 
  FROM prereq AS p
  INNER JOIN course AS c ON p.course_id = c.course_id
  WHERE c.title = 'SINAIS E SISTEMAS'

  UNION

  -- 2. Recursão: Pega os pré-requisitos dos que já foram encontrados
  SELECT p2.prereq_id 
  FROM prereq AS p2
  INNER JOIN hierarquia ON p2.course_id = hierarquia.prereq_id
)
-- 3. Resultado final
SELECT DISTINCT prereq_id FROM hierarquia