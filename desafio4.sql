CREATE VIEW top_3_artistas AS
SELECT artist.name AS `artista`,
COUNT(*) AS `seguidores`
FROM spotifyclone.users_artists AS u_a
JOIN spotifyclone.users AS user ON u_a.user_id = user.user_id
JOIN spotifyclone.artists AS artist ON u_a.artist_id = artist.artist_id
GROUP BY u_a.artist_id
ORDER BY `seguidores` DESC, `artista`
LIMIT 3;