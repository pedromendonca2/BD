/* Retorne uma relação com o nome e sobrenome dos consumidores, e o CGC da revendedora, sendo que o resultado
deve conter todos os consumidores, tendo esses realizado ou não algum negócio (ou seja, presentes ou não na tabela
negocios). Em outras palavras, caso um consumidor não tenha realizado nenhum negócio, o CGC da revendedora
deve aparecer como nulo (NULL). */

select c.nome, c.sobrenome, n.cgc
from consumidores as c 
left join negocios as n on c.cpf = n.cpf

-- SELECT c.nome as nome, c.sobrenome as sobrenome, n.cgc
-- FROM negocios n 
--   INNER JOIN 
--     revendedoras r on n.cgc = r.cgc
--   RIGHT JOIN
--     consumidores c on n.cpf = c.cpf;
