-- AQUI, UTILIZAREMOS A CL�USULA WHERE PARA INDICAR UMA CONDI��O DE SELE��O DE REGISTROS
/*
SELECT
	--abaixo, est� a sele��o das 3 colunas da table TesteA
	TesteA_ID,
	TesteA_Nome,
	TesteA_Sobrenome
FROM
	TesteA --origem das colunas selecionadas acima
WHERE --estabelecer a condi��o
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
	TesteA_ID <> 2 -- <> � diferente ou diamond
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