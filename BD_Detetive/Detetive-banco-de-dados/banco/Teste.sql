-- TESTE

select
    partida.cd_partida, 
    data,
    nm_usuario, 
    nm_carta,
    nm_peao,
    nm_skin
from usuario
    inner join user_partida on user_partida.cd_usuario = usuario.cd_usuario
    inner join mao on mao.cd_usuario = usuario.cd_usuario
    inner join carta on carta.cd_carta = mao.cd_carta
    inner join partida on partida.cd_partida = user_partida.cd_partida
       and partida.cd_partida = mao.cd_partida 
    inner join peao on peao.cd_peao = user_partida.cd_peao
    inner join skin on skin.cd_peao = peao.cd_peao
    inner join user_skin on user_skin.cd_usuario = usuario.cd_usuario
        and user_skin.cd_skin = skin.cd_skin;
       
select row_to_json(jogo) 
from 
(
	select cd_partida, 
		(
			select json_agg(usuario)
			from 
				(
					select
						nm_usuario,
						nm_peao
					from partida
						inner join user_partida on user_partida.cd_partida = partida.cd_partida
						inner join usuario on usuario.cd_usuario = user_partida.cd_usuario
						inner join peao on peao.cd_peao = user_partida.cd_peao
					where partida.cd_partida = 1
				) usuario
		) as jogadores
	from partida
	where cd_partida = 1
) as jogo;
	
	
	select 
		partida.cd_partida,
		nm_usuario,
		nm_peao
	from partida
		inner join user_partida on user_partida.cd_partida = partida.cd_partida
		inner join usuario on usuario.cd_usuario = user_partida.cd_usuario
		inner join peao on peao.cd_peao = user_partida.cd_peao
	where partida.cd_partida = 1
;

	



insert into usuario (nm_usuario, ds_senha, nr_score_global)
values ('João', '1111', 0);

insert into user_partida (1, select cd_usuario from usuario where nm_usuario = 'João', 4);
insert into mao (select cd_usuario from usuario where nm_usuario = 'João', 1, )

       


