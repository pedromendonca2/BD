/* Consulte a população média de todas as cidades da tabela CITY e trunque o resultado para o maior número inteiro que
é menor ou igual a essa média (por ex., 30.63 → 30). */

SELECT floor(avg(POPULATION)) AS MEDIA
FROM CITY
