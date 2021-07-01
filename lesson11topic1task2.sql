DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя'
) COMMENT = 'Покупатели';


DROP PROCEDURE IF EXISTS insert_users;
DELIMITER //
CREATE PROCEDURE insert_users(num INT)
BEGIN
    SET @x = 0;
    REPEAT 
		INSERT INTO users (id, name)
		VALUES (NULL, "name_field");
        SET @x = @x + 1; 
    	UNTIL @x >= num 
	END REPEAT;
END //
DELIMITER ;


CALL insert_users(1000000);
