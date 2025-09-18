--inner join com 3 tables - INNER JOIN � O COMANDO QUE JUNTA
SELECT DISTINCT --este � o comando para evitar duplicidade a sa�da de dados
	-- A 1� instru��o de sele��o ser� referente a coluna Desemp_Nota - table CT_Desempenho
	-- A partir deste momento, todas as colunas que ser�o selecionadas estar�o associadas as suas respectivas tables
	-- para operarmos com este prop�sito, cada table receber� de n�s um "apelido". 
	-- Por qual motivo?R: para que as consultas possam ser descritas de forma concisa
	CT_D.Desemp_Nota,  -- CT_D � o "apelido" da table CT_Desempenho
	CT_D.Disc_Nome,
	CT_D.DadosEstud_Matricula,
	CT_Ds.Disc_Mensalidade, CT_Ds.Disc_Turno,  --CT_Ds � o "apelido" da table CT_Disciplinas
	CT_De.DadosEstud_Nome, CT_De.DadosEstud_Sobrenome, CT_De.DadosEstud_Idade--CT_De � o "apelido" da table CT_DadosEstud
FROM
	CT_Desempenho AS CT_D -- aqui a table CT_Desempenho "passou a ser conhecida como (AS)"
INNER JOIN CT_DadosEstud AS CT_De
ON CT_D.DadosEstud_Matricula = CT_De.DadosEstud_Matricula 
--acima est� estabelecendo uma rela��o comparativa entre 2 colunas: a coluna
-- CT_D.DadosEstud_Matricula e CT_De.DadosEstud_Matricula

-- Juntando a terceira table
INNER JOIN CT_Disciplinas AS CT_Ds --CT_Ds � o apelido da table CT_Disciplinas
ON CT_Ds.Disc_Nome = CT_Ds.Disc_Nome -- � como se eu estivesse instanciando a table para juntar com as outras 2
AND CT_Ds.DadosEstud_Matricula = CT_D.DadosEstud_Matricula
 --estabelecendo uma rela��o em duas partes:
 --1� parte: a rela��o observa os dados referentes a table CT_Disciplinas e, 
 -- na sequencia observa a rela��ad dos dados em comum entre as 2 table

-- o ordenamento de sa�da dos dados, quando n�o especificado, o sistema agrupa considerando a ordem em que os dados foram inseridos, e a ordem que as consultas foram montadas.

-- Instru��o para ordenar a sa�da de dados a partir de algum parametro
ORDER BY CT_D.Desemp_Nota