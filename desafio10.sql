DELIMITER $$

CREATE FUNCTION quantidade_musicas_no_historico(user_id INT)
RETURNS INT READS SQL DATA
BEGIN
DECLARE count_music INT;
SELECT COUNT(*) 
FROM users_musics AS u_a
WHERE u_a.user_id = user_id INTO count_music;
RETURN count_music;
END

$$ DELIMITER ;
