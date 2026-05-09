/* Retorne o nome dos departamentos (coluna dept_name) aos quais os professores (tabela instructor) estão
vinculados. O resultado não deve conter ocorrências duplicadas. */

select distinct i.dept_name
from instructor as i