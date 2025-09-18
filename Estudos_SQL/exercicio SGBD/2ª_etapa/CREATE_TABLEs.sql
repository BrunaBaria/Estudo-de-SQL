-- 1º Criar DB:
-- Criando DB AvaMax
CREATE DATABASE AvaMax

-- 2º: Criação de Tables:
-- Filmes,Elenco, Diretores, Roteiristas, Produtoras, Países, Produtores, e Bilheteria

-- Table Filmes
CREATE TABLE AM_Filmes (
	AM_Filmes_ID INT NOT NULL IDENTITY (1,1),
	AM_Filmes_titulo VARCHAR (50) NOT NULL,
	AM_Filmes_genero VARCHAR (50),
	AM_Filmes_ano_lanc NUMERIC,
	AM_Filmes_orcamento FLOAT,
	AM_Filmes_moeda VARCHAR (50),
	AM_Filmes_fatur_global_US FLOAT,

	CONSTRAINT PK PRIMARY KEY (AM_Filmes_ID)
)

-- Table Elenco
CREATE TABLE AM_Elenco(
	AM_Elenco_ID INT NOT NULL IDENTITY (1,1),
	AM_Elenco_nome VARCHAR (50) NOT NULL,
	AM_Elenco_sobrenome VARCHAR(50),
	AM_Filmes_ID INT,

	CONSTRAINT PK_AM_Elenco PRIMARY KEY (AM_Elenco_ID),
	CONSTRAINT FK_AM_Filmes FOREIGN KEY (AM_Filmes_ID) REFERENCES AM_Filmes (AM_Filmes_ID)

)

-- Table Diretores
CREATE TABLE AM_Diretores(
	AM_Diretores_ID INT NOT NULL IDENTITY (1,1),
	AM_Diretores_nome VARCHAR(50) NOT NULL,
	AM_Diretores_sobrenome VARCHAR(50),
	AM_Filmes_ID INT,

	CONSTRAINT PK_AM_Diretores PRIMARY KEY (AM_Diretores_ID),
	CONSTRAINT FK_AM_filme_ID FOREIGN KEY (AM_Filmes_ID) REFERENCES AM_Filmes(AM_Filmes_ID)

)

-- Table Roteiristas
CREATE TABLE AM_Roteiristas(
	AM_Roteiristas_ID INT NOT NULL IDENTITY (1,1),
	AM_Roteiristas_nome VARCHAR(50) NOT NULL,
	AM_Roteiristas_sobrenome VARCHAR(50),
	AM_Filmes_ID INT,

	CONSTRAINT PK_AM_Roteiristas PRIMARY KEY (AM_Roteiristas_ID),
	CONSTRAINT FK_filme_ID FOREIGN KEY (AM_Filmes_ID) REFERENCES AM_Filmes(AM_Filmes_ID)

)

-- Produtoras
CREATE TABLE AM_Produtoras(
	AM_Produtoras_ID INT NOT NULL IDENTITY (1,1),
	AM_Produtoras_nome VARCHAR (150) NOT NULL,
	AM_Filmes_ID INT,

	CONSTRAINT PK_AM_Produtoras PRIMARY KEY (AM_Produtoras_ID),
	CONSTRAINT FK_film_ID FOREIGN KEY (AM_Filmes_ID) REFERENCES AM_Filmes(AM_Filmes_ID)
)

-- País
CREATE TABLE AM_Pais(
	AM_Pais_ID INT NOT NULL IDENTITY(1,1),
	AM_Pais_nome VARCHAR(50) NOT NULL,
	AM_Pais_sigla VARCHAR (10),

	CONSTRAINT PK_AM_Pais PRIMARY KEY (AM_Pais_ID)
)

-- Produtores
CREATE TABLE AM_Produtores(
	AM_Produtores_ID INT NOT NULL IDENTITY(1,1),
	AM_Produtores_nome VARCHAR(50),
	AM_Produtores_sobrenome VARCHAR(50),
	AM_Filmes_ID INT,
	AM_Produtoras_ID INT,

	CONSTRAINT PK_AM_Produtores PRIMARY KEY (AM_Produtores_ID),
	CONSTRAINT FK_Films_ID FOREIGN KEY (AM_Filmes_ID) REFERENCES AM_Filmes(AM_Filmes_ID),
	CONSTRAINT FK_Prodtas_ID FOREIGN KEY (AM_Produtoras_ID) REFERENCES AM_Produtoras(AM_Produtoras_ID)

)

-- Bilheteria
CREATE TABLE AM_Bilheteria(
	AM_Bilheteria_ID INT NOT NULL IDENTITY(1,1),
	AM_Bilheteria_receita_pais FLOAT,
	AM_Bilheteria_Espectadores_pais NUMERIC,
	AM_Filmes_ID INT,
	AM_Pais_ID INT,

	CONSTRAINT PK_AM_Bilheteria PRIMARY KEY (AM_Bilheteria_ID),
	CONSTRAINT FK_Films_ID_BL FOREIGN KEY (AM_Filmes_ID) REFERENCES AM_Filmes(AM_Filmes_ID),
	CONSTRAINT FK_Pais FOREIGN KEY (AM_Pais_ID) REFERENCES AM_Pais(AM_Pais_ID)
)