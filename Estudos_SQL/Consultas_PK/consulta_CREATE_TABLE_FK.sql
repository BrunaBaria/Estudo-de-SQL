/*
	estabelece a criação de uma nova table FK(Foreign Key) e relacioná-la com a table PK
*/
CREATE TABLE CursoFK
(
	-- configurar a estrutura
	CursoFK_ID INT NOT NULL IDENTITY(1,1),
	CursoFK_Duracao VARCHAR(30),

	--CONFIGURAR A FK
	CONSTRAINT chavinhaMarota FOREIGN KEY(CursoFK_ID) --constroi a chave FK que
	REFERENCES CursoPK(CursoPK_ID) -- referencia a tabela cursoPK que é composta a chave primaria dessa relação
)