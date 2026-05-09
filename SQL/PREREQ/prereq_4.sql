/* Escreva uma consulta para obter o código da(s) disciplina(s) (coluna course_id da tabela course) que tem(têm)
como pré-requisito disciplinas que têm como pré-requisito direto (somente 1o. nível) a disciplina de nome 'CÁLCULO
III' (coluna title da tabela course). O resultado não deve conter ocorrências duplicadas. */

select distinct p2.course_id from course, prereq as p1, prereq as p2
where course.title = 'CÁLCULO III' and course.course_id = p1.prereq_id and p1.course_id = p2.prereq_id