/* Escreva uma consulta para obter o código da(s) disciplina(s) (coluna course_id da tabela course) que é(são) prérequisito(s) 
direto(s) ou indireto(s) (em qualquer nível) da disciplina de nome 'SINAIS E SISTEMAS' (coluna title da tabela course). 
O resultado não deve conter ocorrências duplicadas.
Nota: Use a cláusula WITH RECURSIVE para percorrer a(s) hierarquia(s) ou cadeia(s) de dependência(s) */

WITH RECURSIVE r(cid) AS (
    /* Passo 1: Pega os pré-requisitos diretos (igual ao seu p1) */
    select p.prereq_id
    from course as c, prereq as p
    where c.title = 'SINAIS E SISTEMAS' and c.course_id = p.course_id

    UNION

    /* Passo 2: Pega os pré-requisitos dos pré-requisitos (o loop) */
    select p.prereq_id
    from r, prereq as p
    where r.cid = p.course_id
)
select distinct cid from r