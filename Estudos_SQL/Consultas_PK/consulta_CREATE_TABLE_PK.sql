--CRIAR UMA TABLE COM PK E COM O PROCESSO DE AUTOINCREMENTO DOS REGISTROS INSERIDOS NA BASE

-- Passo 1: definir a Table
CREATE TABLE CursoPK
(
	-- Passo 2: criar a estrutura da table/ passo 3: definir o autoincremento da coluna id
	CursoPK_ID INT NOT NULL IDENTITY (1,1), -- O IDENTITY FAZ O id é autoincrementável, começa em 1 e será incrementado de 1 em 1 unidade
	CursoPK_Nome VARCHAR(30),

	-- Passo 4: adicionar a chave primaria PK
	CONSTRAINT pk PRIMARY KEY(CursoPK_ID)--essa regra adota como primary key o campo de CursoPK_ID

)