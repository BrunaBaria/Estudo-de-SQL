-- 4º Consultas
-- SELECTS
SELECT * FROM AM_Filmes
SELECT * FROM AM_Elenco
SELECT * FROM AM_Diretores
SELECT * FROM AM_Roteiristas
SELECT * FROM AM_Pais
SELECT * FROM AM_Bilheteria
SELECT * FROM AM_Produtoras
SELECT * FROM AM_Produtores

--DELETE FROM AM_Diretores
--DROP TABLE AM_Produtoras;


-- INNER JOIN: FILMES + DIRETORES + ELENCO
SELECT DISTINCT
	AM_F.AM_Filmes_ID,AM_F.AM_Filmes_titulo,
	AM_Dir.AM_Diretores_nome,AM_Dir.AM_Diretores_sobrenome,
	AM_El.AM_Elenco_nome,AM_El.AM_Elenco_sobrenome
FROM
	AM_Filmes AS AM_F
INNER JOIN AM_Elenco AS AM_El 
ON AM_F.AM_Filmes_ID = AM_El.AM_Filmes_ID

INNER JOIN AM_Diretores AS AM_Dir
ON AM_F.AM_Filmes_ID = AM_Dir.AM_Filmes_ID

ORDER BY AM_F.AM_Filmes_ID


-- INNER JOIN WHERE: FILME + BILHETERIA + BRASIL
SELECT
	AM_F.AM_Filmes_ID,AM_F.AM_Filmes_titulo,
	AM_P.AM_Pais_nome,AM_P.AM_Pais_ID,
	AM_Bil.AM_Bilheteria_receita_pais

FROM
	AM_Filmes AS AM_F
INNER JOIN AM_Bilheteria AS AM_Bil ON AM_F.AM_Filmes_ID = AM_Bil.AM_Filmes_ID

INNER JOIN AM_Pais AS AM_P ON AM_P.AM_Pais_ID = AM_Bil.AM_Pais_ID
WHERE AM_P.AM_Pais_nome = 'Brasil'


-- LEFT JOIN: PRODUTORA + FILME + ELENCO
SELECT 
	AM_Prda.AM_Produtoras_ID,AM_Prda.AM_Produtoras_nome,
	AM_F.AM_Filmes_ID,AM_F.AM_Filmes_titulo,
	AM_El.AM_Elenco_nome,AM_El.AM_Elenco_sobrenome
FROM
	AM_Produtoras AS AM_Prda
	LEFT JOIN AM_Filmes AS AM_F ON AM_F.AM_Filmes_ID = AM_Prda.AM_Filmes_ID
	LEFT JOIN AM_Elenco AS AM_El ON AM_F.AM_Filmes_ID = AM_El.AM_Filmes_ID
	
-- RIGHT JOIN: FILME + PRODUTORA + PRODUTORES
SELECT 
	AM_F.AM_Filmes_ID,AM_F.AM_Filmes_titulo,
	AM_Prda.AM_Produtoras_ID,AM_Prda.AM_Produtoras_nome,
	AM_Pr.AM_Produtores_ID,AM_Pr.AM_Produtores_nome,AM_Pr.AM_Produtores_sobrenome
	
FROM
	AM_Produtoras AS AM_Prda
	RIGHT JOIN AM_Filmes AS AM_F ON AM_F.AM_Filmes_ID = AM_Prda.AM_Filmes_ID
	RIGHT JOIN AM_Produtores AS AM_Pr ON AM_Pr.AM_Filmes_ID = AM_Pr.AM_Filmes_ID

