--3º: Inserir Dados nas Tabless

-- Table Filmes
INSERT INTO AM_Filmes (
	AM_Filmes_titulo,
	AM_Filmes_genero,
	AM_Filmes_ano_lanc,
	AM_Filmes_orcamento,
	AM_Filmes_moeda,
	AM_Filmes_fatur_global_US

) VALUES 
('Matrix','Ficcao Cientifica',1999, 63000000.00,'dolar',467222728.00),
('Clube da Luta','Suspense',1999,63000000.00,'dolar',101000000.00),
('A Origem','Ficcao Cientifica',2010,160000000.00,'dolar',825532764.00),
('V de Vingança','Aventura',2005, 54000000.00 ,'dolar',132511035.00),
('A forma da agua','Fantasia',2017,19500000.00,'dolar',195243464.00),
('A pele que habito','Suspense',2011,10000000.00,'euro',30842353.00),
('Constantine','Fantasia',2005,100000000.00,'dolar',230800000.00)

-- Table Elenco
INSERT INTO AM_Elenco(
	AM_Elenco_nome,
	AM_Elenco_sobrenome,
	AM_Filmes_ID

) VALUES
('Keanu','Reeves',1),
('Laurence','Fishburne',1),
('Carrie-Anne','Moss',1),
('Brad','Pitt',2),
('Edward','Norton',2),
('Helena Bonham','Carter',2),
('Leonardo','DiCaprio',3),
('Marion','Cotillard',3),
('Elliot','Page',3),
('Natalie','Portman',4),
('Hugo','Weaving',4),
('Stephen','Rea',4),
('Sally','Hawkins',5),
('Michael','Shannon',5),
('Richard','Jenkins',5),
('Octavia','Spencer',5),
('Antonio','Banderas',6),
('Elena','Anaya',6),
('Marisa','Paredes',6),
('Rachel','Weisz',7),
('Keanu','Reeves',7),
('Djimon','Hounsou',7)

-- Table Diretores
INSERT INTO AM_Diretores(
	AM_Diretores_nome,
	AM_Diretores_sobrenome,
	AM_Filmes_ID

) VALUES
('Lana','Wachowski',1),
('Lilly','Wachowski',1),
('David','Fincher',2),
('Christopher','Nolan',3),
('James','Mc Teigue',4),
('Guillermo','del Toro',5),
('Pedro','Almodovar',6),
('Francis','Lawrence',7)

-- Table Roteiristas
INSERT INTO AM_Roteiristas(
	AM_Roteiristas_nome,
	AM_Roteiristas_sobrenome,
	AM_Filmes_ID

) VALUES
('Lana','Wachowski',1),
('Lilly','Wachowski',1),
('Jim','Uhls',2),
('Christopher','Nolan',3),
('Lana','Wachowski',4),
('Lilly','Wachowski',4),
('Guillermo','del Toro',5),
('Vanessa','Taylor',5),
('Pedro','Almodovar',6),
('Mark','Bomback',7),
('Frank','A. Cappello',7)

-- Produtoras -- DEU RUIM...
INSERT INTO AM_Produtoras(
	AM_Produtoras_nome,
	AM_Filmes_ID
) 
VALUES
('Warner Bros. Pictures',1),
('Village Road Pictures',1),
('Silver Pictures',1),
('20th Century Fox',2),
('Regency Enterprises',2),
('Fox 2000 Pictures',2),
('Taurus Films',2),
('Linson Films',2),
('Art Linson Productions',2),
('Warner Bros. Pictures',3),
('Legendary Pictures',3),
('Syncopy',3),
('Vertigo Comics',4),
('Virtual Studios',4),
('Silver Pictures',4),
('Bull Productions',5),
('Searchlight Pictures',5),
('TSG Entertainment',5),
('Double Dare You',5),
('Warner Bros. Pictures',6),
('Canal + España',6),
('El Deseo S.A.',6),
('Televisión Española',6),
('FilmNation Entertainment',6),
('Institute of Cinematography and Audiovisual Arts',6),
('Warner Bros. Pictures',7),
('Village Road Pictures',7),
('Di Bonaventura Pictures',7),
('The Donners Company',7);
-- País
INSERT INTO AM_Pais(
	AM_Pais_nome,
	AM_Pais_sigla
) VALUES
('Brasil','BR'),
('Argentina','AR'),
('Estados Unidos','EUA'),
('Canada','CA'),
('Inglaterra','UK'),
('Escocia','UK'),
('Pais de Gales','UK'),
('Irlanda do Norte','UK'),
('Franca','FR'),
('Espanha','ES')

-- Produtores
INSERT INTO AM_Produtores(
	AM_Produtores_nome,
	AM_Produtores_sobrenome,
	AM_Filmes_ID,
	AM_Produtoras_ID

) VALUES
	--Matrix
('Joel','Silver',1,1),
('Joel','Silver',1,2),
('Joel','Silver',1,3),
	-- Clube da Luta
('Art','Linson',2,4),
('Art','Linson',2,5),
('Art','Linson',2,6),
('Art','Linson',2,7),
('Art','Linson',2,8),
('Art','Linson',2,9),
('Ceán','Chaffin',2,4),
('Ceán','Chaffin',2,5),
('Ceán','Chaffin',2,6),
('Ceán','Chaffin',2,7),
('Ceán','Chaffin',2,8),
('Ceán','Chaffin',2,9),
('Ross','Grayson Bell',2,4),
('Ross','Grayson Bell',2,5),
('Ross','Grayson Bell',2,6),
('Ross','Grayson Bell',2,7),
('Ross','Grayson Bell',2,8),
('Ross','Grayson Bell',2,9),
	-- A Origem
('Christopher','Nolan',3,1),
('Christopher','Nolan',3,10),
('Christopher','Nolan',3,11),
('Emma','Thomas',3,1),
('Emma','Thomas',3,10),
('Emma','Thomas',3,11),
	-- V de Vingança
('Joel','Silver',4,12),
('Joel','Silver',4,13),
('Joel','Silver',4,3),
('Lana','Wachowski',4,12),
('Lana','Wachowski',4,13),
('Lana','Wachowski',4,3),
('Lilly','Wachowski',4,12),
('Lilly','Wachowski',4,13),
('Lilly','Wachowski',4,3),
('Grant','Hill',4,12),
('Grant','Hill',4,13),
('Grant','Hill',4,13),
	-- A Forma D'água
('Guillermo','del Toro',5,14),
('Guillermo','del Toro',5,15),
('Guillermo','del Toro',5,16),
('Guillermo','del Toro',5,17),
('J. Miles','Dale',5,14),
('J. Miles','Dale',5,15),
('J. Miles','Dale',5,16),
('J. Miles','Dale',5,17),
	-- A Pele que Habito
('Agustín','Almodóvar',6,1),
('Agustín','Almodóvar',6,18),
('Agustín','Almodóvar',6,19),
('Agustín','Almodóvar',6,20),
('Agustín','Almodóvar',6,21),
('Agustín','Almodóvar',6,22),
('Agustín','Almodóvar',6,23),
('Esther','García',6,1),
('Esther','García',6,18),
('Esther','García',6,19),
('Esther','García',6,20),
('Esther','García',6,21),
('Esther','García',6,22),
('Esther','García',6,23),
	-- Constantine
('Lorenzo','di Bonaventura',7,1),
('Lorenzo','di Bonaventura',7,2),
('Lorenzo','di Bonaventura',7,24),
('Lorenzo','di Bonaventura',7,25),
('Akiva','Goldsman',7,1),
('Akiva','Goldsman',7,2),
('Akiva','Goldsman',7,24),
('Akiva','Goldsman',7,25),
('Benjamin','Melniker',7,1),
('Benjamin','Melniker',7,2),
('Benjamin','Melniker',7,24),
('Benjamin','Melniker',7,25),
('Lauren','Shuler Donner',7,1),
('Lauren','Shuler Donner',7,2),
('Lauren','Shuler Donner',7,24),
('Lauren','Shuler Donner',7,25),
('Erwin','Stoff',7,1),
('Erwin','Stoff',7,2),
('Erwin','Stoff',7,24),
('Erwin','Stoff',7,25),
('Michael','E. Uslan',7,1),
('Michael','E. Uslan',7,2),
('Michael','E. Uslan',7,24),
('Michael','E. Uslan',7,25)

-- Bilheteria
INSERT INTO AM_Bilheteria(
	AM_Bilheteria_receita_pais,
	AM_Bilheteria_Espectadores_pais,
	AM_Filmes_ID,
	AM_Pais_ID
)VALUES
	-- Matrix
(10100000,841667,1,1),
(10100000,1683333,1,2),
(10100000,2020000,1,3),
(10100000,776923,1,4),
(10100000,776923,1,5),
(10100000,776923,1,6),
(10100000,776923,1,7),
(10100000,776923,1,8),
(10100000,776923,1,9),
(10100000,776923,1,10),
	-- Clube da Luta
(10100000,841667,2,1),
(10100000,1683333,2,2),
(10100000,2020000,2,3),
(10100000,776923,2,4),
(10100000,776923,2,5),
(10100000,776923,2,6),
(10100000,776923,2,7),
(10100000,776923,2,8),
(10100000,776923,2,9),
(10100000,776923,2,10),
	-- A Origem
(82553276,6879440,3,1),
(82553276,13758879,3,2),
(82553276,16510655,3,3),
(82553276,6350252,3,4),
(82553276,6350252,3,5),
(82553276,6350252,3,6),
(82553276,6350252,3,7),
(82553276,6350252,3,8),
(82553276,6350252,3,9),
(82553276,6350252,3,10),
	 -- V de Vingança
(13251103,1104259,4,1),
(13251103,2208517,4,2),
(13251103,2650221,4,3),
(13251103,1019316,4,4),
(13251103,1019316,4,5),
(13251103,1019316,4,6),
(13251103,1019316,4,7),
(13251103,1019316,4,8),
(13251103,1019316,4,9),
(13251103,1019316,4,10),
	-- A Forma D'água
(19524346,1627029,5,1),
(19524346,3254058,5,2),
(19524346,3904869,5,3),
(19524346,1501873,5,4),
(19524346,1501873,5,5),
(19524346,1501873,5,6),
(19524346,1501873,5,7),
(19524346,1501873,5,8),
(19524346,1501873,5,9),
(19524346,1501873,5,10),
	-- A Pele que Habito
(3084235,257020,6,1),
(3084235,514039,6,2),
(3084235,616847,6,3),
(3084235,237249,6,4),
(3084235,237249,6,5),
(3084235,237249,6,6),
(3084235,237249,6,7),
(3084235,237249,6,8),
(3084235,237249,6,9),
(3084235,237249,6,10),
	-- Constantine
(23080000,1923333,7,1),
(23080000,3846667,7,2),
(23080000,4616000,7,3),
(23080000,1775385,7,4),
(23080000,1775385,7,5),
(23080000,1775385,7,6),
(23080000,1775385,7,7),
(23080000,1775385,7,8),
(23080000,1775385,7,9),
(23080000,1775385,7,10)