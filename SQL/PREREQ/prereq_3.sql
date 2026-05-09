/* Escreva uma consulta para obter o código da(s) disciplina(s) (coluna course_id da tabela course) que é(são) 
pré-requisito(s) do(s) pré-requisito(s), ou seja, pré-requisitos indiretos (somente 1o. nível), da disciplina 
de nome 'SINAIS E SISTEMAS' (coluna title da tabela course). O resultado não deve conter ocorrências duplicadas. */

select distinct p2.prereq_id from course, prereq as p1, prereq as p2
where course.title = 'SINAIS E SISTEMAS' and course.course_id = p1.course_id and p1.prereq_id = p2.course_id