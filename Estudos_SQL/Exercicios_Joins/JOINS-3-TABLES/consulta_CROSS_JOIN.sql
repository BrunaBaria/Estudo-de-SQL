-- CROSS JOIN - opera��o que retorna pra n�s o que chamamos de PRODUTO CARTESIANO
-- retorna as ocorrencias de linhas de dados obtidas a partir de um calculo de um produto cartesiano:
-- � uma opera��o matem�tica que pode fazer uma combina��o entre cada elemento de um determinado conjunto
-- com cada elemento de um outro determinado conjunto.

SELECT
	CT_D.*,CT_De.*, CT_Ds.* -- O * significa que voc� est� selecionando tudo, todas as colunas de cada tabela
FROM
	CT_Desempenho AS CT_D
CROSS JOIN CT_DadosEstud AS CT_De
CROSS JOIN CT_Disciplinas AS CT_Ds

-- Prov�vel que nunca utilize CROSS JOIN