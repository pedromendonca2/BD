/* Escreva uma consulta para obter o código da(s) disciplina(s) (coluna course_id da tabela course) que é(são) prérequisito(s) direto(s) da 
disciplina de nome 'SINAIS E SISTEMAS' (coluna title da tabela course). O
resultado não deve conter ocorrências duplicadas. */

select distinct prereq_id from course, prereq
where course.title = 'SINAIS E SISTEMAS' and course.course_id = prereq.course_id