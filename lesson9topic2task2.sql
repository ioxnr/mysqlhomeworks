DROP TABLE IF EXISTS accounts;
CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    name VARCHAR(45),
    password VARCHAR(45)
   );
   
INSERT INTO accounts VALUES
	(NULL, 'Anna', '123'),
	(NULL, 'Alex', '1234'),
	(NULL, 'Vlada', 'qwerty');
	

CREATE OR REPLACE VIEW username(user_id, user_name) AS 
SELECT id, name FROM accounts;


DROP USER IF EXISTS 'user_read'@'localhost';
CREATE USER 'user_read'@'localhost' IDENTIFIED WITH sha256_password BY '123';
GRANT SELECT ON shop.username TO 'user_read'@'localhost';
