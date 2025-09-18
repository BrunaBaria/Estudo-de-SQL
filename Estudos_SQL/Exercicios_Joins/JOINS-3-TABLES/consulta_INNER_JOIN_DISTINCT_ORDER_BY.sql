--inner join com 3 tables - INNER JOIN É O COMANDO QUE JUNTA
SELECT DISTINCT --este é o comando para evitar duplicidade a saída de dados
	-- A 1º instrução de seleção será referente a coluna Desemp_Nota - table CT_Desempenho
	-- A partir deste momento, todas as colunas que serão selecionadas estarão associadas as suas respectivas tables
	-- para operarmos com este propósito, cada table receberá de nós um "apelido". 
	-- Por qual motivo?R: para que as consultas possam ser descritas de forma concisa
	CT_D.Desemp_Nota,  -- CT_D é o "apelido" da table CT_Desempenho
	CT_D.Disc_Nome,
	CT_D.DadosEstud_Matricula,
	CT_Ds.Disc_Mensalidade, CT_Ds.Disc_Turno,  --CT_Ds é o "apelido" da table CT_Disciplinas
	CT_De.DadosEstud_Nome, CT_De.DadosEstud_Sobrenome, CT_De.DadosEstud_Idade--CT_De é o "apelido" da table CT_DadosEstud
FROM
	CT_Desempenho AS CT_D -- aqui a table CT_Desempenho "passou a ser conhecida como (AS)"
INNER JOIN CT_DadosEstud AS CT_De
ON CT_D.DadosEstud_Matricula = CT_De.DadosEstud_Matricula 
--acima está estabelecendo uma relação comparativa entre 2 colunas: a coluna
-- CT_D.DadosEstud_Matricula e CT_De.DadosEstud_Matricula

-- Juntando a terceira table
INNER JOIN CT_Disciplinas AS CT_Ds --CT_Ds é o apelido da table CT_Disciplinas
ON CT_Ds.Disc_Nome = CT_Ds.Disc_Nome -- é como se eu estivesse instanciando a table para juntar com as outras 2
AND CT_Ds.DadosEstud_Matricula = CT_D.DadosEstud_Matricula
 --estabelecendo uma relação em duas partes:
 --1ª parte: a relação observa os dados referentes a table CT_Disciplinas e, 
 -- na sequencia observa a relaçõad dos dados em comum entre as 2 table

-- o ordenamento de saída dos dados, quando não especificado, o sistema agrupa considerando a ordem em que os dados foram inseridos, e a ordem que as consultas foram montadas.

-- Instrução para ordenar a saída de dados a partir de algum parametro
ORDER BY CT_D.Desemp_Nota