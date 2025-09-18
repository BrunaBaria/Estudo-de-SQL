--INSERT INTO
-- INSERINDO DADOS EM FILMES
INSERT INTO DadosFilme (
DadosFilme_Nome, 
DadosFilme_ElencoPrinc, 
DadosFilme_Diretor, 
DadosFilme_Roteirista, 
DadosFilme_lancamento
) 

VALUES
('Matrix','Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss','Lana Wachowski,Lilly Wachowski','Lana Wachowski,Lilly Wachowski',1999),
('Clube da Luta','Brad Pitt, Edward Norton, Helena Bonham Carter','David Fincher','Jim Uhls',1999),
('A Origem','Leonardo DiCaprio, Marion Cotillard, Elliot Page','Christopher Nolan','Christopher Nolan',2010),
('V de Vinganca','Natalie Portman, Hugo Weaving, Stephen Rea','James Mc Teigue','Lana Wachowski,Lilly Wachowski',2005),
('A Forma da Agua','Sally Hawkins, Michael Shannon, Richard Jenkins, Octavia Spencer','Guillermo del Toro','Guillermo del Toro, Vanessa Taylor',2017),
('A pele que habito','Antonio Banderas, Elena Anaya, Marisa Paredes','Pedro Almodovar','Pedro Almodovar',2011),
('Constantine','Keanu Reeves, Rachel Weisz, Djimon Hounsou','Francis Lawrence','Mark Bomback, Frank A. Cappello',2005)

-- INSERINDO DADOS NA TABLE DadosProdutora
INSERT INTO DadosProdutora(
	DadosProdut_NomeProdutora,
	DadosProdut_Orcamento,
	DadosProdut_NomeProdutores
)
VALUES
('Warner Bros.Pictures, Village Road Pictures, Silver Pictures, Warner Bros. Entertainment',63000000.00,'Joel Silver'),
('20th Century Studios, Regency Enterprise, Fox 2000 Pictures, Taurus Films, Linson Films, Art Linson Productions',63000000.00,'Art Linson, Ceán Chaffin, Ross Grayson Bell'),
('Warner Bros.Pictures, Warner Bros. Entertainment, Legendary Pictures, Syncopy',160000000.00,'Christopher Nolan, Emma Thomas'),
('Vertigo Comics, Virtual Studios, Silver Pictures',54000000.00,'Joel Silver, Lana Wachowski, Lilly Wachowski,  Grant Hill'),
('Bull Productions, Searchlight Pictures, TSG Entertainment, Double Dare You',19500000.00,'Guillermo del Toro, J. Miles Dale'),
('Warner Bros.,Canal + España,El Deseo S.A.,Televisión Española,FilmNation Entertainment, Institute of Cinematography and Audiovisual Arts, FilmNation', 10000000.00,'Agustín Almodóvar, Esther García'),
('Warner Bros. Entertainment, Vilage Roadshow Pictures, Di Bonaventura Pictures, The Donners Company, Warner Brothers',100000000.00,'Lorenzo di Bonaventura,Akiva Goldsman,Benjamin Melniker,Lauren Shuler Donner,Erwin Stoff,Michael E. Uslan')
