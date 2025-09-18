-- LEFT JOIN
SELECT
	CT_D.DadosEstud_Matricula, CT_D.Disc_Nome, CT_D.Desemp_Nota,
	CT_Ds.Disc_Turno, CT_Ds.Disc_CargaHor,
	CT_De.DadosEstud_Nome, CT_De.DadosEstud_Sobrenome, CT_De.DadosEstud_Email

FROM
	CT_Desempenho AS CT_D
	LEFT JOIN CT_DadosEstud AS CT_De ON CT_D.DadosEstud_Matricula = CT_De.DadosEstud_Matricula
	LEFT JOIN CT_Disciplinas AS CT_Ds ON CT_Ds.DadosEstud_Matricula = CT_D.DadosEstud_Matricula