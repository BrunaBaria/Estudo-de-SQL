--2° Passo: criar uma table para armazenar o perfil do estudante
-- Nome da 1º Table: DadosEstud
--			id, Matricula, Nome, Sobrenome, Idade, Genero, Email, Telefone

CREATE TABLE CT_DadosEstud
(
	--estruturar os dados da table
	DadosEstud_ID INT NOT NULL IDENTITY (1,1),
	DadosEstud_Matricula NUMERIC NOT NULL,
	DadosEstud_Nome VARCHAR(30),
	DadosEstud_Sobrenome VARCHAR(50),
	DadosEstud_Idade INT,
	DadosEstud_Genero VARCHAR(30),
	DadosEstud_Email VARCHAR(30),
	DadosEstud_Telefone NUMERIC

	--definir a PK
	CONSTRAINT DadosEstud_PK PRIMARY KEY (DadosEstud_Matricula)
)