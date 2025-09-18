/*tentativa de alterar a table para reconfigurar a coluna CursoPKRuim_ID
Tornando-a uma coluna NOT NULL(Não Nul) e PK - Primary Key(CHAVE PRIMARIA)
*/

-- 1° Passo: Alterar a Table
ALTER TABLE CursoPKRuim ALTER COLUMN CursoPKRuim_ID INT NOT NULL

GO

ALTER TABLE CursoPKRuim
-- Tentativa de Adicionar uma regra(CONSTRANT) para a transformação da coluna em PK
ADD CONSTRAINT pkBoa PRIMARY KEY(CursoPKRuim_ID)