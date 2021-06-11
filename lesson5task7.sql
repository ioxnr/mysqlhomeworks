DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения'
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
  
 
SELECT
  DAYOFWEEK(CONCAT(YEAR(NOW()), DATE_FORMAT(birthday_at, '-%m-%d'))) AS day,
  COUNT(DAYOFWEEK(CONCAT(YEAR(NOW()), DATE_FORMAT(birthday_at, '-%m-%d')))) AS total
FROM
  users
GROUP BY
  day;