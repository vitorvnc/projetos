
-- DADOS

-- TABELA USUARIO
insert into usuario (nr_score_global, nm_usuario, ds_senha)
values (0, 'Geovani', '1234'),(0, 'Vitor', '1234');

select * from usuario;

-- TABELA CARTA

insert into carta (nm_carta, ds_tipo)
values 
('Sargento Mostarda', 'Personagem'),
('Dona Branca', 'Personagem'),
('Dona Violeta', 'Personagem'),
('Professor Black', 'Personagem'),
('Sr. Marinho', 'Personagem'),
('Sra. Rosa', 'Personagem'),
('Corda', 'Arma'),
('Revólver', 'Arma'),
('Candelabro', 'Arma'),
('Chave inglesa', 'Arma'),
('Faca', 'Arma'),
('Soco Inglês', 'Arma'),
('Cozinha', 'Local'),
('Sala de Jantar', 'Local'),
('Hall', 'Local'),
('Biblioteca', 'Local'),
('Quarto', 'Local'),
('Banheiro', 'Local'),
('Sala de visita', 'Local'),
('Quarto de hospede', 'Local'),
('Varanda', 'Local');

select * from carta;

-- TABELA PARTIDA

insert into partida (data, cd_usuario_vencedor)
values (current_timestamp, 2);

select * from partida;

-- TABELA PEAO

insert into peao (nm_peao)
values 
('Sargento Mostarda'),
('Dona Branca'),
('Dona Violeta'),
('Professor Black'),
('Sr. Marinho'),
('Sra. Rosa');

select * from peao;

-- TABELA USER_PARTIDA

insert into user_partida (cd_partida, cd_usuario, cd_peao, sn_eliminado)
values 
(1, 1, 1, false),
(1, 2, 3, false);

select * from user_partida;

-- TABELA MAO

insert into mao (cd_partida, cd_usuario, cd_carta)
values 
(1, 1, 1 ),
(1, 1, 2),
(1, 1, 3),
(1, 1, 4),
(1, 1, 5),
(1, 1, 6),
(1, 1, 7),
(1, 1, 8),
(1, 1, 9),
(1, 2, 10),
(1, 2, 11),
(1, 2, 12),
(1, 2, 13),
(1, 2, 14),
(1, 2, 15),
(1, 2, 16),
(1, 2, 17),
(1, 2, 18);

select * from mao;

-- TABELA SKIN

insert into skin(nm_skin, preco, cd_peao)
values
('cmostarda_verao', 99.99, 1),
('cmostarda_inverno', 99.99, 1),
('dbranca_verao', 99.99, 2),
('dbranca_inverno', 99.99, 2),
('dvioleta_verao', 99.99, 3),
('dvioleta_inverno', 99.99, 3),
('pblack_verao', 99.99, 4),
('pblack_inverno', 99.99, 4),
('dvioleta_verao', 99.99, 5),
('dvioleta_inverno', 99.99, 5),
('srtarosa_verao', 99.99, 6),
('srtarosa_inverno', 99.99, 6);

select * from skin;

-- TABELA USER_SKIN

insert into user_skin (cd_usuario, cd_skin)
values (1, 1),
(2, 6);

select * from user_skin;

