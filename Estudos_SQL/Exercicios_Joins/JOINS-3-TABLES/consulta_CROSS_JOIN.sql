-- CROSS JOIN - operação que retorna pra nós o que chamamos de PRODUTO CARTESIANO
-- retorna as ocorrencias de linhas de dados obtidas a partir de um calculo de um produto cartesiano:
-- é uma operação matemática que pode fazer uma combinação entre cada elemento de um determinado conjunto
-- com cada elemento de um outro determinado conjunto.

SELECT
	CT_D.*,CT_De.*, CT_Ds.* -- O * significa que você está selecionando tudo, todas as colunas de cada tabela
FROM
	CT_Desempenho AS CT_D
CROSS JOIN CT_DadosEstud AS CT_De
CROSS JOIN CT_Disciplinas AS CT_Ds

-- Provável que nunca utilize CROSS JOIN