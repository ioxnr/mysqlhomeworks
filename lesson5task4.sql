DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_month VARCHAR(255)
) COMMENT = 'Покупатели';

INSERT INTO users (name, birthday_month) VALUES
  ('Геннадий', 'may'),
  ('Наталья', 'march'),
  ('Александр', 'september'),
  ('Сергей', 'august'),
  ('Иван', 'february'),
  ('Мария', 'may');
  
 
 SELECT 
   name,
   birthday_month
 FROM users
 WHERE birthday_month = 'may' OR birthday_month = 'august';