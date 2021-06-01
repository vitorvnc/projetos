drop database if exists detetive_bd;
create database detetive_bd;

-- EXCLUIR TABELAS
drop table if exists user_skin;
drop table if exists user_partida;
drop table if exists skin;
drop table if exists peao;
drop table if exists mao;
drop table if exists partida;
drop table if exists carta;
drop table if exists usuario;

-- TABELAS

create table if not exists usuario (
    cd_usuario serial,
    nr_score_global int,
    nm_usuario varchar(20),
    ds_senha varchar(15),
    primary key (cd_usuario)
);

create table if not exists carta (
    cd_carta serial,
    nm_carta varchar(20),
    ds_tipo varchar(20),
    primary key (cd_carta)
);

create table if not exists partida ( 
    cd_partida serial,
    data timestamp,
    cd_usuario_vencedor int,
    primary key (cd_partida),
    foreign key (cd_usuario_vencedor) references usuario(cd_usuario)
);


create table if not exists mao (
    cd_mao serial,
    cd_usuario int,
    cd_partida int,
    cd_carta int,
    primary key (cd_mao),
    foreign key (cd_usuario) references usuario (cd_usuario),
    foreign key (cd_partida) references partida (cd_partida),
    foreign key (cd_carta) references carta (cd_carta)
);

create table if not exists peao (
    cd_peao serial,
    nm_peao varchar(20),
    primary key (cd_peao)
);

create table if not exists skin (
    cd_skin serial,
    nm_skin varchar(20),
    preco real,
    cd_peao int,
    primary key (cd_skin),
    foreign key (cd_peao) references peao (cd_peao)
);

create table if not exists user_partida (
    cd_user_partida serial,
    cd_partida int,
    cd_usuario int,
    cd_peao int,
    sn_eliminado boolean,
    primary key (cd_user_partida),
    foreign key (cd_partida) references partida (cd_partida),
    foreign key (cd_usuario) references usuario (cd_usuario),
    foreign key (cd_peao) references peao (cd_peao)
);

create table if not exists user_skin ( 
    cd_user_skin serial,
    cd_usuario int,
    cd_skin int,
    primary key (cd_user_skin),
    foreign key (cd_usuario) references usuario (cd_usuario),
    foreign key (cd_skin) references skin (cd_skin)
);
