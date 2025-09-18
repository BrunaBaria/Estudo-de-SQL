-- Nome da 2ª Table: Disciplinas
-- id, Matricula, Nome, Turno, Mensalidade, CargaHor

CREATE TABLE CT_Disciplinas
(
Disc_ID INT NOT NULL IDENTITY (1,1),
DadosEstud_Matricula NUMERIC NOT NULL,
Disc_Nome VARCHAR(50),
Disc_Turno VARCHAR (30),
Disc_Mensalidade FLOAT,
Disc_CargaHor INT

--DEFINIR FK DA TABLE

CONSTRAINT Disc_FK FOREIGN KEY(DadosEstud_Matricula)
REFERENCES CT_DadosEstud(DadosEstud_Matricula)

)