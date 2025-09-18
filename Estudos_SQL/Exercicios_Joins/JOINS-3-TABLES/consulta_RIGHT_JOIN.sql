-- RIGHT JOIN

SELECT 
	CT_Ds.DadosEstud_Matricula, CT_Ds.Disc_Nome, CT_Ds.Disc_CargaHor,
	CT_D.Desemp_Nota,
	CT_De.DadosEstud_Nome, CT_De.DadosEstud_Sobrenome, CT_De.DadosEstud_Genero
FROM
	CT_Disciplinas AS CT_Ds
RIGHT JOIN CT_DadosEstud AS CT_De ON CT_Ds.DadosEstud_Matricula = CT_De.DadosEstud_Matricula
RIGHT JOIN CT_Desempenho AS CT_D ON CT_D.DadosEstud_Matricula = CT_Ds.DadosEstud_Matricula
	