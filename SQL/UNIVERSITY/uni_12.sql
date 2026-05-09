/* Escreva uma consulta que retorne os identificadores (coluna sec_id) das seções de disciplina (tabela section)
oferecidas no semestre 'Spring' do ano de 2010 (colunas semester e year, respectivamente), acompanhados
dos nomes dos(as) professores(as) (coluna name da tabela instructor) responsáveis por ministrá-las. Caso uma
seção possua mais de um(a) professor(a), ela deverá aparecer uma vez para cada professor(a). Caso não haja
professor(a) associado(a) à seção, o nome correspondente deverá ser exibido como '-'. As colunas da tabela de saída
devem se chamar Secao e Professor, respectivamente.

Nota: A função COALESCE recebe uma lista de valores e retorna o primeiro que não for NULL. Ela é útil, por exemplo,
para substituir valores ausentes (NULL) por valores padrão, como um texto ou número. */

select distinct s.sec_id as Secao, coalesce(i.name, '-') as Professor
from section as s
left join teaches as t on s.sec_id = t.sec_id and s.course_id = t.course_id and s.semester = t.semester and s.year = t.year
right join instructor as i on t.ID = i.ID 
where s.semester = 'Spring' and s.year = 2010