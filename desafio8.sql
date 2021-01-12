DELIMITER $$

CREATE TRIGGER trigger_delete_user
BEFORE DELETE ON users
FOR EACH ROW
BEGIN
	DELETE FROM users_musics WHERE user_id = OLD.user_id;
    DELETE FROM users_artists WHERE user_id = OLD.user_id;
END
$$ DELIMITER ;