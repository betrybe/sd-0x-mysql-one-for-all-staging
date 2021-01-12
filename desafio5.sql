CREATE VIEW top_2_hits_do_momento AS
SELECT music.title AS `cancao`,
COUNT(*) AS `reproducoes` FROM users_musics AS u_a
JOIN users AS user ON u_a.user_id = user.user_id
JOIN musics AS music ON u_a.music_id = music.music_id
GROUP BY music.music_id
ORDER BY `reproducoes` DESC, `cancao`
LIMIT 2;