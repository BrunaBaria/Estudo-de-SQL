-- CREATE TABLES

-- Criando a table de filmes
CREATE TABLE DadosFilme (
	DadosFilme_ID INT NOT NULL IDENTITY (1,1),
	DadosFilme_Nome VARCHAR(50),
	DadosFilme_ElencoPrinc VARCHAR (70),
	DadosFilme_Diretor VARCHAR(50),
	DadosFilme_Roteirista VARCHAR(50),
	DadosFilme_lancamento INT,

	CONSTRAINT PK PRIMARY KEY(DadosFilme_ID)
)

--criar uma table para armazenar dados da produtora
CREATE TABLE DadosProdutora(
	DadosFilme_ID INT NOT NULL IDENTITY (1,1),
	DadosProdut_NomeProdutora VARCHAR(300) NOT NULL,
	DadosProdut_Orcamento FLOAT,
	DadosProdut_NomeProdutores VARCHAR(200)

	CONSTRAINT FK FOREIGN KEY(DadosFilme_ID) --constroi a chave FK que
	REFERENCES DadosFilme (DadosFilme_ID) 
)

