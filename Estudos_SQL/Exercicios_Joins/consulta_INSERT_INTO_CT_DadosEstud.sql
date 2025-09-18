-- INSERIR DADOS NA TABLE CT_DadosEstud
USE 
	CentroTreinamentos

	

-- inserindo informações

INSERT INTO CT_DadosEstud(
	DadosEstud_Matricula,
	DadosEstud_Nome,
	DadosEstud_Sobrenome,
	DadosEstud_Idade,
	DadosEstud_Genero,
	DadosEstud_Email,
	DadosEstud_Telefone)

VALUES 
(1,'Richie', 'Blackmore', 25, 'Masc', 'r.black@mail.com',11999999999),
(2, 'Steve', 'RV',30,'Masc','srv@mail.com',15888888888),
(3, 'Eric','Clapton',28,'Masc','e.clapton@mail',13777777777),
(4,'Vivian','Leigh',27, 'Fem','leigh@mail.com',11944444444), --atriz de "o vento levou"
(5,'Mae','Clark', 89,'Fem','mae@mail.com',4594444454), -- atriz do filme Frankenstein
(6,'Isaurinha','Garcia',72,'Fem','i.garcia@mail.com',11955555223) -- cantora da era do rádio 