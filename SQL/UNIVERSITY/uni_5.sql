/* Escreva uma consulta que retorna o nome do(s) professor(es) (coluna name tabela instrutor) que esteja(m)
vinculado(s) seja ao departamento de Física (valor na coluna dept_name igual a 'Physics'), seja ao departamento
de Ciência da Computação (valor na coluna dept_name igual a 'Comp. Sci.'), e que possuem salário (coluna
salary) superior a $ 88000. */

select i.name
from instructor as i
where (dept_name = 'Physics' or dept_name = 'Comp. Sci.') and salary > 88000