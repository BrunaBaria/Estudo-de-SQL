-- AQUI, UTILIZAREMOS A CLÁUSULA WHERE PARA INDICAR UMA CONDIÇÃO DE SELEÇÃO DE REGISTROS
/*
SELECT
	--abaixo, está a seleção das 3 colunas da table TesteA
	TesteA_ID,
	TesteA_Nome,
	TesteA_Sobrenome
FROM
	TesteA --origem das colunas selecionadas acima
WHERE --estabelecer a condição
	TesteA_Nome = 'Annie'
*/
/*
SELECT 
	TesteA_ID,
	TesteA_Nome,
	TesteA_Sobrenome
FROM
	TesteA
WHERE
	--TesteA_ID != 1
	TesteA_ID <> 2 -- <> é diferente ou diamond
*/
/*
SELECT 
	TesteA_ID,
	TesteA_Nome,
	TesteA_Sobrenome
FROM
	TesteA
WHERE
	TesteA_ID BETWEEN 2 AND 5 --definimos um subconjunto/intervalo fechado
*/

SELECT
	TesteA_ID,
	TesteA_Nome,
	TesteA_Sobrenome
FROM
	TesteA
WHERE
	TesteA_Sobrenome LIKE '%%'