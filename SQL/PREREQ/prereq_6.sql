/* Escreva uma consulta para obter o código da(s) disciplina(s) (coluna course_id da tabela course) que tem(têm)
como pré-requisito direto a disciplina de nome 'CÁLCULO III' (coluna title da tabela course). O resultado não
deve conter ocorrências duplicadas. */

select distinct prereq_id from course, prereq
where course.title = 'SINAIS E SISTEMAS' and course.course_id = prereq.course_id