CREATE VIEW perfil_artistas AS
SELECT artist.name AS `artista`,
album.title AS `album`,
COUNT(*) AS `seguidores`
FROM users_artists AS u_a
JOIN artists AS artist ON u_a.artist_id = artist.artist_id
JOIN albums AS album ON u_a.artist_id = album.artist_id
GROUP BY album.album_id
ORDER BY `seguidores` DESC, `artista`, `album`; 