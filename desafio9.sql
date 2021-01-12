DELIMITER $$

CREATE PROCEDURE albuns_do_artista(IN artist_name VARCHAR(40))
BEGIN
SELECT artist.name AS `artista`,
album.title AS `album`
FROM albums AS  album
JOIN artists AS artist ON album.artist_id = artist.artist_id
WHERE artist.name = artist_name
ORDER BY `album`;
END
$$ DELIMITER ;