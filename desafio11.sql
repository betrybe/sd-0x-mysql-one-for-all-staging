CREATE VIEW cancoes_premium AS
SELECT music.title AS `nome`, COUNT(u_m.music_id) AS `reproducoes` FROM users_musics AS u_m
INNER JOIN musics AS music ON u_m.music_id = music.music_id
INNER JOIN users AS user ON u_m.user_id = user.user_id
WHERE user.plan_id IN (2,3)
GROUP BY music.music_id
ORDER BY music.title;