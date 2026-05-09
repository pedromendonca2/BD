/* Dadas as tabelas CITY e COUNTRY, consulte os nomes de todas as cidades onde o CONTINENT é 'Africa'. */

SELECT CITY.NAME
FROM CITY, COUNTRY
WHERE COUNTRY.CONTINENT = 'AFRICA' and CITY.COUNTRYCODE = COUNTRY.CODE