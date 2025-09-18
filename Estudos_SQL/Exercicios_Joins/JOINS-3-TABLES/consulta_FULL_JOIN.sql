-- FULL JOIN - combina os resultados dos dois ou mais conj de dados(table),
-- retorna todas as linhas tanto do elemento de referencia quanto as tabelas à esquerda
-- consistencia: quando eu tenho dados numa tabela A tem correspondencia numa tabela B
-- inconsistencia: quando não tenho correspondencia entre as tabelas.
-- Quando não há correspondencia, o retorno será Null

SELECT 
	CT_De.DadosEstud_Matricula,CT_De.DadosEstud_Nome, CT_De.DadosEstud_Sobrenome,
	CT_Ds.Disc_Turno, CT_Ds.Disc_CargaHor,
	CT_D.Disc_Nome, CT_D.Desemp_Nota
FROM
	CT_DadosEstud AS CT_De
FULL JOIN CT_Desempenho AS CT_D ON CT_De.DadosEstud_Matricula = CT_D.DadosEstud_Matricula
FULL JOIN CT_Disciplinas AS CT_Ds ON CT_Ds.Disc_Nome = CT_D.Disc_Nome

-- Usa-se pouquíssimo esse tipo de Join
-- Se voce colocar DISTINCT, os valores repetido não aparecem