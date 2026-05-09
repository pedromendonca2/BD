/* Escreva uma consulta para obter o código da(s) disciplina(s) (coluna course_id da tabela course) que tem(têm)
como pré-requisito direto a disciplina de nome 'CÁLCULO III' (coluna title da tabela course). O resultado não
deve conter ocorrências duplicadas. */

select distinct prereq.course_id from course, prereq
where course.title = 'CÁLCULO III' and course.course_id = prereq.prereq_id