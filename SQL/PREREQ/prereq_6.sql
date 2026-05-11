/* Escreva uma consulta para obter o código da(s) disciplina(s) (coluna course_id da tabela course) que tem(têm)
como pré-requisito direto a disciplina de nome 'CÁLCULO III' (coluna title da tabela course). O resultado não
deve conter ocorrências duplicadas. */

WITH RECURSIVE r(cid) AS (
    select  p.course_id 
    from course, prereq as p
    where course.title = 'CÁLCULO III' and course.course_id = p.prereq_id

    UNION

    select p.course_id
    from r, prereq as p
    where r.course_id = p.prereq_id
)
select distinct cid from r