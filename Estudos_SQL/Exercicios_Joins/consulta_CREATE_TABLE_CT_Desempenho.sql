-- Nome da 3º Table: Desempenho:
-- id, Matricula, Disc_Nome, Nota

CREATE TABLE CT_Desempenho
(
Desemp_ID INT NOT NULL IDENTITY(1,1),
DadosEstud_Matricula NUMERIC NOT NULL,
Disc_Nome VARCHAR (50),
Desemp_Nota FLOAT

--DEFINIR FK
CONSTRAINT Desemp_FK FOREIGN KEY(DadosEstud_Matricula)
REFERENCES CT_DadosEstud(DadosEstud_Matricula)

)