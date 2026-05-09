/* Dadas as tabelas CITY e COUNTRY, consulte os nomes de todos os continentes (COUNTRY.CONTINENT) e suas
respectivas populações médias de cidades (CITY.POPULATION) truncadas para o maior número inteiro menor ou
igual a cada um desses valores (por ex., 30.63 → 30). */

select COUNTRY.CONTINENT, FLOOR(AVG(CITY.POPULATION)) as media
from CITY, COUNTRY
where CITY.COUNTRYCODE = COUNTRY.CODE
group by COUNTRY.CONTINENT