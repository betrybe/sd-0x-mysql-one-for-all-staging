CREATE VIEW historico_reproducao_usuarios AS
SELECT 
	user.name AS `usuario`,
    music.title AS `nome`
FROM users_musics AS u_m
JOIN musics AS music ON u_m.music_id = music.music_id
JOIN users AS user ON u_m.user_id = user.user_id
ORDER BY `usuario`, `nome`;