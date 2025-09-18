-- CONSULTA AS TABELAS INDIVIDUALMENTE
SELECT * FROM DadosProdutora
SELECT * FROM DadosFIlme

-- JUNTAS AS DUAS TABELAS 
SELECT 
	DB_DF.DadosFilme_ID, --'DB_DF' é table DadosFilme
	DB_DF.DadosFilme_Nome,
	DB_DF.DadosFilme_ElencoPrinc,
	DB_DF.DadosFilme_Diretor,
	DB_DF.DadosFilme_Roteirista,
	DB_DF.DadosFilme_lancamento,
	DB_DP.DadosFilme_ID, --'DB_DP' é a table DadosProdutora
	DB_DP.DadosProdut_NomeProdutora,
	DB_DP.DadosProdut_Orcamento,
	DB_DP.DadosProdut_NomeProdutores
FROM
	DadosFilme AS DB_DF -- onde DadosFilme passa a ser DB_DF
INNER JOIN DadosProdutora AS DB_DP --DadosProdutora passa a ser DB_DP
ON DB_DF.DadosFilme_ID = DB_DP.DadosFilme_ID

