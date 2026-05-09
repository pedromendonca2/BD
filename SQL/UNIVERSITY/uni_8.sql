/* Escreva uma consulta que retorna uma relação igual à relação instrutor (inclusive com os mesmos nomes e ordem
de colunas), exceto que o valor da coluna salário (salary) deve ser dividido por 12. Essa nova coluna deve se chamar
monthly_salary e seu valor deve ser arredondado para um número com duas casas decimais (por ex., 24.185 →
24.19; 13.732 → 13.73).

Nota: Use a função ROUND() para arredondar valores numéricos. No MySQL e no PostgreSQL, pode-se passar um
segundo argumento para indicar o número de casas decimais desejado, separado por vírgula (por exemplo,
ROUND(valor, 2) arredonda para duas casas decimais). Sem o segundo argumento, o número é arredondado para o
inteiro mais próximo. */

select ID, name, dept_name, round(salary / 12, 2) as monthly_salary
from instructor