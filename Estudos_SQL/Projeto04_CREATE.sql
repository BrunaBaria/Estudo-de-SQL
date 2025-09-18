CREATE TABLE Cursos(
	Curso_ID INT NOT NULL IDENTITY(1,1),
	Curso_Nome VARCHAR(50) NOT NULL,
	Curso_Mensalidade NUMERIC NOT NULL,
	Estudante_Id INT,
	Estudante_RA INT

	-- definir as keys
	CONSTRAINT Curso_FK FOREIGN KEY(Estudante_Id)
	REFERENCES Estudante(Estudante_Id)
)

CREATE TABLE Estudante(
	Estudante_Id INT NOT NULL IDENTITY(1,1),
	Estudante_Nome VARCHAR(50) NOT NULL,
	Estudante_Sobrenome VARCHAR(50) NOT NULL,
	Estudante_RA NUMERIC,
	Estudante_Email VARCHAR(50),
	Estudante_Idade INT,
	Estudante_Fone VARCHAR(20),
	Estudante_Genero VARCHAR(30)

	-- definir a PK
	CONSTRAINT Estudante_PK PRIMARY KEY(Estudante_Id)
)